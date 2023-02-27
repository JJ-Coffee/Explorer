#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
#=================================================

# Devices platforms
echo "milogx: Detected platform [$PLATFORM], using [$PLATFORM] config..."
CFGOW="$OPENWRT_ROOT_PATH/.config"
if [[ $PLATFORM == *"armvirt/32"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_armvirt=y
CONFIG_TARGET_armvirt_64=y
CONFIG_TARGET_armvirt_64_Default=y

EOF
elif [[ $PLATFORM == *"armvirt/64"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_armvirt=y
CONFIG_TARGET_armvirt_64=y
CONFIG_TARGET_armvirt_64_Default=y

EOF
elif [[ $PLATFORM == *"bcm27xx/bcm2708"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_bcm27xx=y
CONFIG_TARGET_bcm27xx_bcm2708=y
CONFIG_TARGET_bcm27xx_bcm2708_DEVICE_rpi=y

EOF
elif [[ $PLATFORM == *"bcm27xx/bcm2709"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_bcm27xx=y
CONFIG_TARGET_bcm27xx_bcm2709=y
CONFIG_TARGET_bcm27xx_bcm2709_DEVICE_rpi-2=y

EOF
elif [[ $PLATFORM == *"bcm27xx/bcm2710"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_bcm27xx=y
CONFIG_TARGET_bcm27xx_bcm2710=y
CONFIG_TARGET_bcm27xx_bcm2710_DEVICE_rpi-3=y

EOF
elif [[ $PLATFORM == *"bcm27xx/bcm2711"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_bcm27xx=y
CONFIG_TARGET_bcm27xx_bcm2711=y
CONFIG_TARGET_bcm27xx_bcm2711_DEVICE_rpi-4=y

EOF
elif [[ $PLATFORM == *"rockchip/armv8"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_rockchip=y
CONFIG_TARGET_rockchip_armv8=y
CONFIG_TARGET_MULTI_PROFILE=y
CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_friendlyarm_nanopi-r2c=y
CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_friendlyarm_nanopi-r2s=y
CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_friendlyarm_nanopi-r4s=y
CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_pine64_rockpro64=n
CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_radxa_rock-pi-4=n
CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_xunlong_orangepi-r1-plus=y
CONFIG_TARGET_DEVICE_rockchip_armv8_DEVICE_xunlong_orangepi-r1-plus-lts=y
CONFIG_TARGET_ALL_PROFILES=y

EOF
elif [[ $PLATFORM == *"sunxi/cortexa7"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_sunxi=y
CONFIG_TARGET_sunxi_cortexa7=y
CONFIG_TARGET_MULTI_PROFILE=y
CONFIG_TARGET_ALL_PROFILES=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_friendlyarm_nanopi-m1-plus=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_friendlyarm_nanopi-neo=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_friendlyarm_nanopi-neo-air=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_friendlyarm_nanopi-r1=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_friendlyarm_zeropi=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_xunlong_orangepi-2=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_xunlong_orangepi-one=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_xunlong_orangepi-pc=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_xunlong_orangepi-pc-plus=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_xunlong_orangepi-plus=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_xunlong_orangepi-r1=y
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_xunlong_orangepi-zero=y

CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_cubietech_cubieboard2=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_cubietech_cubietruck=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_lamobo_lamobo-r1=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_lemaker_bananapi=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_lemaker_bananapro=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_linksprite_pcduino3=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_linksprite_pcduino3-nano=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_mele_m9=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_olimex_a20-olinuxino-lime=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_olimex_a20-olinuxino-lime2=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_olimex_a20-olinuxino-lime2-emmc=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_olimex_a20-olinuxino-micro=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_sinovoip_bananapi-m2-ultra=n
CONFIG_TARGET_DEVICE_sunxi_cortexa7_DEVICE_sinovoip_bananapi-m2-plus=n

EOF
elif [[ $PLATFORM == *"sunxi/cortexa53"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_sunxi=y
CONFIG_TARGET_sunxi_cortexa53=y
CONFIG_TARGET_MULTI_PROFILE=y
CONFIG_TARGET_ALL_PROFILES=y
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_friendlyarm_nanopi-neo-plus2=y
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_friendlyarm_nanopi-neo2=y
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_friendlyarm_nanopi-r1s-h5=y
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_xunlong_orangepi-one-plus=y
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_xunlong_orangepi-pc2=y
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_xunlong_orangepi-zero-plus=y

CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_libretech_all-h3-cc-h5=n
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_olimex_a64-olinuxino=n
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_olimex_a64-olinuxino-emmc=n
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_pine64_pine64-plus=n
CONFIG_TARGET_DEVICE_sunxi_cortexa53_DEVICE_pine64_sopine-baseboard=n

EOF
elif [[ $PLATFORM == *"x86/64"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_x86=y
CONFIG_TARGET_x86_64=y
CONFIG_TARGET_x86_64_DEVICE_generic=y

EOF
elif [[ $PLATFORM == *"x86/generic"* ]]; then
	cat << 'EOF' > "$CFGOW"

CONFIG_TARGET_x86=y
CONFIG_TARGET_x86_generic=y
CONFIG_TARGET_x86_generic_DEVICE_generic=y

EOF
fi

# Clone community packages to package/community
mkdir package/community
pushd package/community


# Add official OpenClash dev branch source
# git clone --depth=1 -b dev https://github.com/vernesong/OpenClash
svn co https://github.com/vernesong/OpenClash/tree/master/luci-app-openclash vernesong/OpenClash
svn co https://github.com/openwrt/openwrt/tree/5c7e4a9d2e25d5ecc33c3c2650e4f954936c9c69/package/network/services/dnsmasq openwrt/dnsmasq_full

# Out to openwrt dir
popd

# Rename hostname to JJ-WRT
[ -f package/base-files/files/bin/config_generate ] && sed -i 's/Openwrt/JJ-Wrt/g' package/base-files/files/bin/config_generate
echo "Script Executed-Done!!!!!"

#-----------------------------------------------------------------------------
#   
#-----------------------------------------------------------------------------
