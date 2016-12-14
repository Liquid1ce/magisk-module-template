#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

/data/magisk/resetprop -n ro.product.model "Pixel XL"
/data/magisk/resetprop -n ro.opa.eligible_device true
/data/magisk/resetprop -n ro.product.manufacturer Google
##### fix for oneplus (and hopefully other) devices
/data/magisk/resetprop -n ro.product.name "Pixel XL"

# thanks to xda (at)Link_of_Hyrule,  xda (at)stangri
