# Status
Boots to UEFI Shell

SimpleFbDxe is broken due to weird mtk fb, while FrameBufferSerialLib works fine

UART works too, but for it, you must first disable FrameBufferSerialLib in MT6765Pkg.dsc

# Building
First, clone EDK2:
```
git clone https://github.com/tianocore/edk2 --recursive -b edk2-stable202302
git clone https://github.com/tianocore/edk2-platforms.git
```
First run `./firstrun.sh` <br>
Then, `./build.sh` <br>
This should make a boot-uefi.img to be flashed/booted via fastboot.

# Credits
[edk2-exynos7885](https://github.com/sonic011gamer/edk2-exynos7885/) - I based this port on this tree
