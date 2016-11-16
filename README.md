# osx-disk-sweeper-tools
Disk cleanup utility for Mac OSX



```
$ ./osx-disk-sweeper-tools/main.sh
-------- commands --------
1: display disk space
2: List up all big size directories(>= 5GB)
101: run brew cleanup
111: check Xcode iOS DeviceSupprt dir
121: rm docker containers
122: rm docker images
151: check stack(haskell) snapshots
201: How to start mac in Safe Mode?
999: exit
input number: 1

Filesystem      Size   Used  Avail Capacity  iused  ifree %iused  Mounted on
/dev/disk1     112Gi  110Gi  1.8Gi    99% 28848115 475119   98%   /
devfs          182Ki  182Ki    0Bi   100%      630      0  100%   /dev
map -hosts       0Bi    0Bi    0Bi   100%        0      0  100%   /net
map auto_home    0Bi    0Bi    0Bi   100%        0      0  100%   /home


-------- commands --------
1: display disk space
2: List up all big size directories(>= 5GB)
101: run brew cleanup
111: check Xcode iOS DeviceSupprt dir
121: rm docker containers
122: rm docker images
151: check stack(haskell) snapshots
201: How to start mac in Safe Mode?
999: exit
input number: 2

Are you sure you want to do `sudo du -g -x -d 5 / | awk '$1 >= 5{print}'` ? [Y/N]
```
