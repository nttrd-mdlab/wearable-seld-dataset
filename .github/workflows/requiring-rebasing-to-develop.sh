#!/bin/bash

context='Requiring rebasing to develop'

success_status=$(cat <<- END
	{
		"state": "success",
		"context": "$context",
		"description": "You can merge this Pull Request."
	}
	END
)

failure_status=$(cat <<- END
	{
		"state": "failure",
		"context": "$context",
		"description": "You must rebase __HEAD__ branch to the latest __BASE__ branch."
	}
	END
)

if [[ $# -lt 2 ]] ; then
  echo 'The arguments is not enought.' > /dev/stderr
  exit 1
fi
repo=$1  # e.g. octocat/hello
githubToken=$2
api="https://api.github.com/repos/$repo"

function main () {
  curl --silent \
    --header 'Accept: application/vnd.github.v3+json' \
    --header "Authorization: token $githubToken" \
    "$api/pulls" \
    | jq -r '.[] | [.base.ref, .head.ref] | @sh' \
    | sed "s/'//g" \
    | while read -r pullRequestBranchInfo
  do
    array=($pullRequestBranchInfo)
    local base=${array[0]}
    local head=${array[1]}

    echo "Checking base: $base head: $head"
    check $base $head
  done
}

function check () {
  local base=$1
  local head=$2

  if is_rebased "$base" "$head" ; then
    echo "This has rebased. This will be made to 'success'"
    update_status_to "$success_status" "$head"
    echo 'Done.'
    echo
    return
  fi

  echo "This has not rebased. This status will be made to 'failure'"
  local_failure_status=$(echo $failure_status | sed -e "s%__BASE__%$base%")
  local_failure_status=$(echo $local_failure_status | sed -e "s%__HEAD__%$head%")
  update_status_to "$local_failure_status" "$head"
  echo 'Done.'
  echo
}

function is_rebased () {
  if [[ $1 = '' ]] || [[ $2 = '' ]]; then
    echo 'Invalid' > /dev/stderr
    exit 1
  fi
  local base=$1 head=$2 ancestor base_head

  ancestor=$(git merge-base "origin/$base" "origin/$head" | head -n 1)
  base_head=$(git rev-parse "origin/$base")

  [[ $ancestor = "$base_head" ]]
}

function update_status_to () {
  if [[ $1 = '' ]] ; then
    echo 'Invalid' > /dev/stderr
    exit 1
  fi
  local updater_status=$1
  local branch=$2
  local branch_ref_response branch_head_commit_sha

  branch_ref_response=$( \
    curl --silent \
      --header "Authorization: token $githubToken" \
      --header 'Accept: application/vnd.github.v3+json' \
      "$api/git/ref/heads/$(encode_url "$branch")" \
  )
  branch_head_commit_sha=$(echo "$branch_ref_response" | jq -r .object.sha)
  if [[ $branch_head_commit_sha = 'null' ]] ; then
    echo "An invalid branch 'ref' response returned!" > /dev/stderr
    echo "$branch_ref_response" > /dev/stderr
    exit 1
  fi

  statuses_response=$( \
    curl --silent \
      --request POST \
      --header "Authorization: token $githubToken" \
      --header "Accept: application/vnd.github.v3+json" \
      --data "$updater_status" \
      "$api/statuses/$branch_head_commit_sha"
  )
  statuses_context=$(echo "$statuses_response" | jq -r .context)
  if [[ $statuses_context != "$context" ]] ; then
    echo "An invalid 'statuses' response returned!" > /dev/stderr
    echo '- - - - -' > /dev/stderr
    echo "$statuses_response" > /dev/stderr
    echo '- - - - -' > /dev/stderr
    exit 1
  fi
}

function encode_url () {
  echo "$1"  | nkf -WwMQ | tr '=' %
}

main
