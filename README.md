# Animals-10
An example DvC repo of multi-class image classification dataset for my full-stack-cv-mlops repo  
source: [https://www.kaggle.com/datasets/alessiocorrado99/animals10](https://www.kaggle.com/datasets/alessiocorrado99/animals10)  

For detail on how to use DvC, please check out the official documentation: [https://dvc.org/doc](https://dvc.org/doc)  
It's very well-written and can get you started in no time.

## How to use this repo
This repo is supposed to be used alongside the code in the [full-stack-on-prem-cv-mlops](https://github.com/jomariya23156/full-stack-on-prem-cv-mlops) repo. But it also can be used independently
1. Clone this repo
2. Download the zip file from Google Drive [Here](https://drive.google.com/file/d/1aY7Pp2iIJa5OyG8WolFbVJKulPj17zPe/view?usp=sharing) (the files in here are hashed files of v2.0.0)
3. Extract it somewhere, say `~/workspace/remote_ds_example/animals10-dvc`
4. `pip install dvc` in case you haven't install DvC yet (you need Python 3.8+ to install DvC 3.5.1 which is the version this repo is based on)
5. Activate your Python environment
6. run `dvc remote list` to check the current remote url (if you extract the zip file to the location on the 3rd step, then the remote url should be the local directory and you're good to go)
7. If your remote url is not set to the location you extract the file, run `dvc remote add -d remote /abs/path/to/your/extracted/location`
8. At the root of the repo, run `dvc pull` to retrieve all images
9. Verify that you have all images in .jpeg under images/train, images/valid, images/test
10. In case you want to convert to the first version, you can run `git checkout v1.0.0` and follow by `dvc checkout`.
11. That's it! You are now ready to continue on the main repo!

## Tag detail
- v1.0.0
    - Mixed in image size
    - Mixed of image extensions: .jpeg, .jpg, .png
    - Stucture: images/class_1/image1.jpeg , images/class_2/image2.jpeg
- v2.0.0
    - Mixed in image size
    - All images are in .jpeg format
    - Stucture: images/train/class_1/image1.jpeg, images/test/class_1/image2.jpeg