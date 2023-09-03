import os
from translate import translate

ds_path = '/home/ariya/workspace/Datasets/Animals-10/images'
all_dirs = os.listdir(ds_path)
for class_dir in all_dirs:
    old_name = os.path.join(ds_path, class_dir)
    new_name = os.path.join(ds_path, translate[class_dir])
    os.rename(old_name, new_name)