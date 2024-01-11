install:
	pip install -r requirements.txt

download_dataset:
	wget -O dataset.zip "https://www.dropbox.com/scl/fi/kuyeaat4ms18fnvn1nke8/Multi_Label_dataset.zip?rlkey=04jm14hheqvlugdrcwx0mrty2&dl=0"
	unzip dataset.zip
	mv Multi_Label_dataset dataset
	rm dataset.zip

train:
	PYTHONPATH=. python src/train.py configs/config.yaml