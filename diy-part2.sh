#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.250/g' package/base-files/files/bin/config_generate

# 移除不用软件包
rm -rf package/lean/luci-theme-argon
rm -rf package/helloworld

# 添加额外软件包
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
# svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-passwall package/luci-app-passwall
# svn co https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2 package/luci-app-passwall2
# git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
# svn co https://github.com/fw876/helloworld/trunk/xray-core package/helloworld/xray-core
# svn co https://github.com/fw876/helloworld/trunk/simple-obfs package/helloworld/simple-obfs
# svn co https://github.com/fw876/helloworld/trunk/trojan package/helloworld/trojan
# svn co https://github.com/fw876/helloworld/trunk/xray-plugin package/helloworld/xray-plugin
# svn co https://github.com/fw876/helloworld/trunk/shadowsocks-rust package/helloworld/shadowsocks-rust
# svn co https://github.com/fw876/helloworld/trunk/v2ray-plugin package/helloworld/v2ray-plugin
# svn co https://github.com/fw876/helloworld/trunk/v2ray-core package/helloworld/v2ray-core
# svn co https://github.com/fw876/helloworld/trunk/shadowsocksr-libev package/helloworld/shadowsocksr-libev
# svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/helloworld/luci-app-ssr-plus
# svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic

git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon