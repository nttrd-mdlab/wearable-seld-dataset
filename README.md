
# Wearable SELD dataset

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6030111.svg)](https://doi.org/10.5281/zenodo.6030111)

<strong>_Wearable SELD dataset_</strong> is a dataset to develop a sound event localization and detection (SELD) system with wearable devices. The dataset contains recordings collected by using wearable devices such as an earphone, a neck speaker, a headphone, and glasses. <strong>_Wearable SELD dataset_</strong> has three types of datasets as below.

* `Earphone type dataset` <p>It contains recordings collected by 12 microphones placed around the ears mimicking microphones as in the image below. </p>

* `Mounting type dataset` <p>It contains recordings collected by 12 microphones placed around the head with some accessories mimicking glasses, a headphone, and a neck speaker as in the image below. </p>

* `FOA format dataset` <p>It contains 4 channels recordings collected by an ambisonic microphone to allow comparison with conventional methods using FOA format and those using the above datasets. </p>

<p align="center">
    <img src="https://user-images.githubusercontent.com/17283799/153329810-ba9cc764-5474-4a8a-9352-711693a7f7b8.png" alt="microphone setting" >
</p>

## Sub-datasets

Each dataset type has three versions of the sub-dataset; <strong>_Anechoic_</strong>, <strong>_Reverberation_</strong>, and <strong>_Reverberation + noise_</strong>. FOA format dataset has only the <strong>_Anechoic_</strong> version. In total, <strong>_Wearable SELD dataset_</strong> contains 7 sub-datasets. This correspondence follows in the table below.
<table align="center">
    <tr>
        <th></th>
        <th>Earphone type</th>
        <th>Mounting type</th>
        <th>FOA format</th>
    </tr>
    <tr>
        <td>Anechoic</td>
        <td align="center">○</td>
        <td align="center">○</td>
        <td align="center">○</td>
    </tr>
        <tr>
        <td>Reverberation</td>
        <td align="center">○</td>
        <td align="center">○</td>
        <td align="center">×</td>
    </tr>
        </tr>
        <tr>
        <td>Reverberation + noise</td>
        <td align="center">○</td>
        <td align="center">○</td>
        <td align="center">×</td>
    </tr>
</table>

<br>

## Download

You can download the dataset [here](https://doi.org/10.5281/zenodo.6030111). Earphone/Mounting type datasets are split into 8-9 zip files by 7-zip.
FOA format dataset is not split. Download the split zip files corresponding to the dataset of interest and use your favorite compression tool to unzip. As a sample, we also provide a smaller version of the dataset, named <strong>_Small wearable SELD dataset_</strong>. The sizes of each dataset follow in the table below.


<table align="center">
    <tr>
        <th></th>
        <th>Zipped size (GB)</th>
        <th>Unzipped size (GB)</th>
    </tr>
    <tr>
        <td>Earphone type</td>
        <td align="center">62.3</td>
        <td align="center">96.5</td>
    </tr>
    <tr>
        <td>Mounting type</td>
        <td align="center">64.1</td>
        <td align="center">96.5</td>
    </tr>
    </tr>
        <tr>
        <td>FOA format</td>
        <td align="center">5.4</td>
        <td align="center">10.7</td>
    </tr>
        </tr>
        <tr>
        <td>Smaller version</td>
        <td align="center">1.1</td>
        <td align="center">1.7</td>
    </tr>
</table>

## Folder structure

Each sub-dataset has <strong>_wav_dev_</strong> and <strong>_metadata_dev_</strong> for the training set, and <strong>_wav_eval_</strong> and <strong>_metadata_eval_</strong> for the evaluation set. <strong>_wav_\*_</strong> includes wav format recordings, and <strong>_metadata_\*_</strong> includes csv format reference labels. <strong>_wav_dev_</strong> consists of 400 wav files, and <strong>_metadata_dev_</strong> consists of 400 csv files. <strong>_wav_eval_</strong> consists of 100 wav files, and <strong>_metadata_eval_</strong> consists of 100 csv files. The directory structure for each sub-dataset is as follows.

<details open> 
<summary>
Earphone_type_dataset/
</summary>
    <details>
    <summary>
    &emsp;&emsp;&emsp;&emsp;|--- Earphone_type_dataset_anechoic/
    </summary>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
    </details>
    <details>
    <summary>
    &emsp;&emsp;&emsp;&emsp;|--- Earphone_type_dataset_reverberation/
    </summary>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_roomF_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomF_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_roomF_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomF_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
    </details>
    <details>
    <summary>
    &emsp;&emsp;&emsp;&emsp;|--- Earphone_type_dataset_reverberation_noise/
    </summary>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_roomF_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomF_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_roomF_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomF_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
    </details>
</details>
<details open>
<summary>
Mounting_type_dataset/ 
</summary>
    <details>
    <summary>
    &emsp;&emsp;&emsp;&emsp;|--- Mounting_type_dataset_anechoic/
    </summary>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
    </details>
    <details>
    <summary>
    &emsp;&emsp;&emsp;&emsp;|--- Mounting_type_dataset_reverberation/
    </summary>
                <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_roomF_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomF_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_roomF_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomF_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
    </details> 
    <details> 
    <summary>
    &emsp;&emsp;&emsp;&emsp;|--- Mounting_type_dataset_reverberation_noise
    </summary>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_roomF_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomF_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_roomF_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomB_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_roomF_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
    </details>
</details> 
<details open>
    <summary>
    FOA format dataset/ 
    </summary>
    <details>
        <summary>
        &emsp;&emsp;&emsp;&emsp;|--- FOA_format_dataset_anechoic/
        </summary>
            <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- wav_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov2_1.wav</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_dev/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split1_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
        <details>
        <summary > &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;
        |--- metadata_eval/
        </summary>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov1_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- split0_ov2_1.csv</p>
            <p>&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;|--- ...</p>
        </details>
    </details>
</details>  

## Naming convention
The names of the data refer to its condition. The recordings and the corresponding label files have the same name. For example, if the name of the recording is <strong>_split0_ov1_1.wav_</strong>, the name of the correspondence label file is <strong>_split0_0_ov1_1.csv_</strong>. The naming convention is different for <strong>_Anechoic version_</strong> and <strong>_Reverberation/Reverberation + noise version_</strong>.

### Anechoic version

```
split[split number]_ov[number of overlapping sound events]_[recording number]
```
- `split number` can be used for cross-validation. Each split contains 100 data.
Since the development set contains 400 data and the evaluation set contains 100 data, `split number` is 0 to 3. <br>
- `number of overlapping sound events` refers to the maximum number of temporally overlapping sound events for each data. Since the maximum number is 2 in the dataset, `number of overlapping sound events` is 1 or 2. <br>
- `recording number` is a serial number for each condition.

### Reverberation / Reverberation_noise version

```
split[split number]_room[room name]_ov[number of overlapping sound events]_[recording number]
```
- `room name` refers to the condition of reverberation. At `roomB`, the reverberation time (T60 at 500 Hz) is 0.41 sec, at `roomF` it is 0.12 sec.

## Detailed description of data
Recordings in this dataset are 60 sec long at a sampling rate of 48000 Hz.
Recordings were synthesized by convolving collected IRs with collected sound events.
These spatialized sound events were placed at a randomly generated time as in the image below.
The maximum number of overlapping sound events is 2.
Impulse responses were recorded at 36 azimuth angles for 3 elevation angles for each sub-dataset.
The azimuth angle was discretized by 10 degrees, and hence 36 azimuth angles starting from 0 degrees were collected. The elevation angle was set to -20, 0, 20 degrees.
Sound events were collected 20 samples for the 12 sound events in an anechoic room.
The sound events are organ, piano, toy train, toy gun shot, metallophone, bicycle bell, security buzzer, shaker, handclap, woodblock , shaking bell, hit drum.
The images of recording environments and devices are shown in [details.pdf](./DETAILS.pdf).

<p align="center">
    <img src="https://user-images.githubusercontent.com/17283799/153994956-ac340a6b-baad-498b-a570-8ba0de5b017e.png" alt="wav abst" >
</p>

The example of the reference label is shown in the below table. <br>
- `start_time/end_time` refers to onset/offset of its sound event. <br>
- `ele/azi` stands for elevation and azimuth. <br>
- `ov` refers to whether the sound event is overlapping or not.

<table align="center">
    <tr>
        <th>sound_event</th>
        <th>start_time</th>
        <th>end_time</th>
        <th>ele</th>
        <th>azi</th>
        <th>ov</th>
    </tr>
    <tr>
        <td align="center">piano</td>
        <td align="center">1.6524</td>
        <td align="center">2.6240</td>
        <td align="center">0</td>
        <td align="center">350</td>
        <td align="center">1</td>
    </tr>
    <tr>
        <td align="center">shaker</td>
        <td align="center">1.9943</td>
        <td align="center">3.5475</td>
        <td align="center">-20</td>
        <td align="center">180</td>
        <td align="center">2</td>
    </tr>
    <tr>
        <td align="center">handclap</td>
        <td align="center">3.6039</td>
        <td align="center">4.0972</td>
        <td align="center">20</td>
        <td align="center">0</td>
        <td align="center">1</td>
    </tr>
    <tr>
        <td align="center">:</td>
        <td align="center">:</td>
        <td align="center">:</td>
        <td align="center">:</td>
        <td align="center">:</td>
        <td align="center">:</td>
    </tr>
</table>


## Usage

Recordings in Earphone/Mounting type dataset contain 12 channels signals.
You can select arbitrary channel numbers to use from 12 channels. For the case of using PyTorch, if you want to use channels number 1, 5, 6, 7, you can extract these channels as follows.
```
import torchaudio

ch_list = [0,4,5,6]

tmp_wav, fs = torchaudio.load('./split0_roomF_ov2_1.wav')
# tmp_wav.shape => (12, 2880000)

wav = tmp_wav[ch_list, :]
# wav.shape => (4, 2880000)
```


## License
All files and folders in ``Earphone type dataset``, ``Mounting type dataset``, ``FOA format dataset``, ``Small wearable SELD dataset``, and this repository are under this [license](./LISENCE.pdf).

## Authors and Contact
        
* Kento Nagatomo (Email: jimijeffericking@akane.waseda.jp)
* Masahiro Yasuda (Email: masahiro.yasuda@ieee.org)
* Kohei Yatabe
* Shoichiro Saito
* Yasuhiro Oikawa

## Citing this work

If you'd like to cite this work, you may use the following. 

> Kento Nagatomo, Masahiro Yasuda, Kohei Yatabe, Shoichiro Saito, Yasuhiro Oikawa, “Wearable SELD dataset: Dataset for sound event localization and detection using wearable devices around head,” inIEEE Int. Conf. Acoust. Speech Signal Process. (ICASSP), 2022.


## Link

Paper: [arXiv](hoge)
