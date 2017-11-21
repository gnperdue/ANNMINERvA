#!/bin/bash
DAT=`date +%s`
OUTFILENAME="./caffe_mellow_whirled_job${DAT}.txt"
JOBNAME="caffe-mellow-whirled-${DAT}"
qsub -o $OUTFILENAME singularity_caffe_mnist.sh -N $JOBNAME