#!/bin/sh

DATE="1465065844"
MODEL=lminervatriamese_epsilon${DATE}.npz

# DATAFILE=minosmatch_nukecczdefs_127x50x25_xuv_me1Amc.hdf5
DATAFILE=minosmatch_nukecczdefs_genallz_pcodecap66_127x50x25_minerva1mc_0000.hdf5

# LOGFILE=evt_log_me1A_epsilon${DATE}.txt
LOGFILE=evt_log_minerva1_epsilon${DATE}_0000.txt

# `-p` == make predictions (db file)
# `-t` == run test (no db file)
# `-v` == run in verbose mode
# `-a` == use the whole file as if it were the "test" sample
python Lasagne/minerva_triamese_epsilon.py \
  -d $DATAFILE \
  -t \
  -v \
  -a \
  -s models/${MODEL} | tee $LOGFILE
  # -p \
