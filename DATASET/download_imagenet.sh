#!/bin/bash
set -x
#aria2c -x 8 https://image-net.org/data/ILSVRC/2012/ILSVRC2012_img_train.tar
#aria2c -x 8 https://image-net.org/data/ILSVRC/2012/ILSVRC2012_img_train_t3.tar
#aria2c -x 8 https://image-net.org/data/ILSVRC/2012/ILSVRC2012_img_val.tar

#mkdir train
#tar -xf ILSVRC2012_img_train.tar -C train
#tar -xf ILSVRC2012_img_train_t3.tar -C train
#mkdir val
#tar -xf ILSVRC2012_img_val.tar -C val

cd train

for FILE in *.tar; do
    echo $FILE
    tar -xf $FILE --one-top-level
done

cd ../val
for FILE in *.tar; do
    echo $FILE
    tar -xf $FILE --one-top-level
done
