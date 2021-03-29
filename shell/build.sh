#!/bin/bash
cd ..
mkdir build
echo "Copying all sound and image assets..."
cp -rv sound build/
cd build
echo "Compressing JSON files..."
chmod +x ../shell/jj
bash ../shell/jsonCompress.sh
echo "Finishing building..."
zip -9r ../artifact.zip ./*
cd ..
rm -rf build
echo "Done. Please check build.zip!"
exit
