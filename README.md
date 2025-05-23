# TWRP Samsung Galaxy A03s

# How to compile it:

# How-to clone source and device tree:
```
$ mkdir -p ~/twrp && cd ~/twrp

$ repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
```
# Clone a03s repo
```
$ git clone https://github.com/Paksan11/twrp_device_samsung_a03s.git -b android-12.1 device/samsung/a03s
```
# Sync
```
$ repo sync
```
# How-to build:
```
$ export ALLOW_MISSING_DEPENDENCIES=true
$ . build/envsetup.sh
$ lunch twrp_a03s-eng
$ mka recoveryimage
```
## How to find the image built
```
`$ cd /out/target/product/a03s`
```
see recovery.img
```
# Device Tree for Samsung Galaxy A03s (SM-A037F/DS)

Device Tree Made by topser9
```
![Galaxy A03S](https://files.gsmchoice.com/phones/samsung-galaxy-a03s/samsung-galaxy-a03s-01.jpg "Galaxy A03S")
# Specs
|---------------------------------------------------------------------------------|
|      Component        |          Specification                                  |
|:----------------------|:--------------------------------------------------------|
| Dimensions            | 164.2 x 75.9 x 9.1 mm (6.46 x 2.99 x 0.36 in)           |
| Weight                | 196 g (6.91 oz)                                         |
| Type                  | PLS LCD                                                 |
| Size                  | 6.5 inches, 102.0 cm2 (~81.8% screen-to-body ratio)     |
| Resolution            | 720 x 1600 pixels, 20:9 ratio (~270 ppi density)        |
| OS                    | Android 11, upgradable to Android 13, One UI 5.1 Core   |                           
| Chipset               | Mediatek MT6765 Helio P35 (12 nm)                       |
| CPU                   | Octa-core (4x2.35 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)|
| GPU                   | PowerVR GE8320                                          |
| Card slot             | microSDXC (dedicated slot)                              |
| Internal              | 64GB 4GB RAM eMMC 5.1                                   |
| USB                   | USB Type-C 2.0                                          |
| Battery               | Li-Po 5000 mAh                                          |
| charging              | 15W wired                                               |
| Status                | Available. Released 2021, August 18                     |
|---------------------------------------------------------------------------------|
