#!/bin/bash
read -p "Please introduce the number of iterations: " number_iterations
for i in $(seq 1 $number_iterations)
do
        echo "=============================================================="
        echo "[UDP Benchmarking started. Iteration $i/$number_iterations ongoing]"
        echo "=============================================================="
        ./benchmark-iperf-varying-mtu.sh
done
