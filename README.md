# EffectiveSemiSegmentation
[FLARE2022]Effective Semi Segmentation for Medical Image

## Usage

1. clone the repo
```bash
git clone https://github.com/JohnMasoner/EffectiveSemiSegmentation.git
```

2. Install Apex[]
```bash
git clone https://github.com/NVIDIA/apex.git
cd apex
pip install -v --no-cache-dir ./
```

3. Install repo requirements
```bash
pip install -r requirements.txt
```

## Training
0. Noteworthy, you could download the pre-train model by BaiDuNetDisk(link:https://pan.baidu.com/s/1K2AS4qBlbl710KlPFcyTgg?pwd=bs87 code: bs87)
1. prepare you config, you could set your config file by the requirements. (main parms are every path)
```bash
vim FlareSeg/data_prepare/config.yaml
```
2. train the model
2.1 coarse segmentation(set the param by your training params)
```bash
vim FlareSeg/coarse_base_seg/config.yaml
vim FlareSeg/coarse_base_seg/run.sh
cd FlareSeg/coarse_base_seg
sh run.sh
```

2.2 Fine Segmentation
```bash
vim FlareSeg/fine_efficient_seg/config.yaml
vim FlareSeg/fine_efficient_seg/run.sh
cd FlareSeg/fine_efficient_seg
sh run.sh
```

2.3 Inference
```bash
sh predict.sh
```
