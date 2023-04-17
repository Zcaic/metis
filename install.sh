#! /bin/bash

export gk_prefix="/opt/metis/GKlib"
export me_prefix="/opt/metis"

cd GKlib
rm -rf build
make config prefix=$gk_prefix
make install

cd ../METIS
rm -rf build
make config prefix=$me_prefix gklib_path=$gk_prefix
make install

