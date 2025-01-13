## Type of Amazon forests satellite image. Model

Multilabel classification NN solution for Amazon forests satellite image. I made accent on "industrial quality" code with next technologies:

* pytorch_lightning
* timm
* ClearML
* linters (black, isort, nbstripout, flake8)
* types with pydantic
* DVC for local usage

**Disclaimers**:

* the project was originally crated and maintained in GitLab local instance, some repo functionality may be unavailable
* the project was created by me and me only as part of the CVRocket professional development course
* here are a short trained version of NNs (about 15 epochs each)
* this project is my first "industry grade" NN, for more advanced code and features please see [car-plate projects](https://github.com/DimYun/car-plate-segm_model)


### [Dataset](https://www.kaggle.com/datasets/nikitarom/planets-dataset/download?datasetVersionNumber=3)

Include 40479 tiles of satellite image in `jpg` and 17 image types. More information about data you can find in [notebook](notebooks/EDA.ipynb). 

To download dataset from kaggle into `dataset` folder:

```bash
make download_dataset
```

### How to run

1. Create and activate python environment
    ```bash
    python3 -m venv venv
    . venv/bin/activate
    ```

2. Install libraries
   ```bash
    make install
   ```

3. Run linters
   ```bash
   make lint
   ```

4. Tune [config.yaml](configs/config.yaml)

5. Train
   ```bash
   make train
   ```


### Additional information

* Inference example in [notebook](notebooks/inference.ipynb)
* [Best experiment in ClearML](https://app.clear.ml/projects/ad24a8e7ed7744c8bf6216f8b8c710cf/experiments/f9a15c5e1c9b4b9999e4ff8b1163ebc4/output/execution)
* [History of experiments](HISTORY.md)