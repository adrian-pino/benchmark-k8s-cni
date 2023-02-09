# Benchmarking Kubernetes CNI
(Work in Progress)

The purpose of this repository is to benchmark the networking of a Kubernetes cluster. An example of its possible is the case of comparing different Kubernetes CNI plugins. The scripts and manifests under this repo make use of the iperf tool in order to test bandwitdth and throughput. To do so, different Kubernetes objects (pods, jobs) are deployed and perform different iperf connections.

Test supported:
- Simultaneous TCP iperf connections
- Simultaneous UDP iperf connections (WIP)
- UDP iperf connections varying the packet size (WIP)

In order to guarantee the proper network isolation in the simultaneous TCP/UDP iperf connections,
Kubernetes network policies are used.

## How to launch a test
There is a launcher available on each test folder. As an output, different log files will be created under such location.
```
sudo chmod +x tcp/
./tcp/launch-benchark.sh
```

## Suggestions
Improvements & suggestions, are more than welcome.

## Lead developers
- Adrian Pino  Martínez (adrian.pino@i2cat.net)
