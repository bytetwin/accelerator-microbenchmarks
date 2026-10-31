#!/bin/bash

# Run command: sh ./Ironwood/scripts/run_throttling_microbenchmark.sh

CONFIG_NAMES="throttling_3 throttling_2 throttling_1"

for CONFIG in $CONFIG_NAMES
do
  # Construct the full config file path
  CONFIG_FILE="Ironwood/configs/throttling/${CONFIG}.yaml"
  
  echo "--- Starting throttling benchmark for ${CONFIG} ---"
  
  python -m accelerator_microbenchmarks.run_benchmark --config="${CONFIG_FILE}"
  
  echo "--- Finished throttling benchmark for ${CONFIG} ---"
done