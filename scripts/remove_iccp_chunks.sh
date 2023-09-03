#! /bin/bash

# deal with this tf warning during training: 
# W tensorflow/core/lib/png/png_io.cc:88] PNG warning: iCCP: known incorrect sRGB profile

# if you face this warning and wanna try this script, you might have to apt install pngcrush first
# I didn't include this package in build time cuz it's used only once

find ../images -type f -iname '*.png' -exec pngcrush -ow -rem allb -reduce {} \;