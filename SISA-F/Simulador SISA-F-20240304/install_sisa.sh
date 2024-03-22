#!/bin/bash

tar -xvzf simulador_sisa.tar.gz

SISA_DIR=`pwd`/simulador_sisa

echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SISA_DIR/lib" >> ~/.bashrc
echo "export PATH=$PATH:$SISA_DIR/bin" >> ~/.bashrc

source ~/.bashrc
