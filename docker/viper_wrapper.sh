#!/bin/bash
set -e

finish() {
    # Fix ownership of output files
    UID=$(stat -c '%u:%g' /data)
    chown -R $UID /data
}
trap finish EXIT

# Call tool with parameters
/usr/bin/Rscript /home/UCSC_VIPER/bin/run-viper.R "$@" 
