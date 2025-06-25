#!/bin/bash
function git_sparse_clone() {
branch="$1" rurl="$2" localdir="$3" && shift 3
git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
cd $localdir
git sparse-checkout init --cone
git sparse-checkout set $@
mv -n $@ ../
cd ..
rm -rf $localdir
}

function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

# 主题
git clone --depth 1 -b js https://github.com/sirpdboy/luci-theme-kucat kucat && mv -n kucat/luci-theme-kucat ./ && rm -rf kucat
git clone --depth 1 https://github.com/sirpdboy/luci-app-kucat-config
git clone --depth 1 -b openwrt-24.10 https://github.com/sbwml/luci-theme-argon argon && mv -n argon/{luci-theme-argon,luci-app-argon-config} ./ && rm -rf argon

# gdy666
git clone --depth 1 https://github.com/gdy666/luci-app-lucky lucky-openwrt && mv -n lucky-openwrt/{luci-app-lucky,lucky} ./ && rm -rf lucky-openwrt

# destan19
git clone --depth 1 -b master https://github.com/destan19/OpenAppFilter && mv -n OpenAppFilter/{luci-app-oaf,oaf,open-app-filter} ./ && rm -rf OpenAppFilter

# sbwml
git clone --depth 1 -b v5 https://github.com/sbwml/luci-app-mosdns mosdns-openwrt && mv -n mosdns-openwrt/{luci-app-mosdns,mosdns,v2dat} ./ && rm -rf mosdns-openwrt
git clone --depth 1 -b main https://github.com/sbwml/luci-app-openlist openlist-openwrt && mv -n openlist-openwrt/{luci-app-openlist,openlist} ./ && rm -rf openlist-openwrt
git clone --depth 1 https://github.com/sbwml/luci-app-airplay2 airplay2-openwrt && mv -n airplay2-openwrt/{luci-app-airplay2,airplay2} ./ && rm -rf airplay2-openwrt
git clone --depth 1 https://github.com/sbwml/luci-app-mentohust mentohust-openwrt && mv -n mentohust-openwrt/{luci-app-mentohust,mentohust} ./ && rm -rf mentohust-openwrt
git clone --depth 1 https://github.com/sbwml/luci-app-webdav

# sirpdboy
git clone --depth 1 https://github.com/sirpdboy/luci-app-netwizard netwizard && mv -n netwizard/luci-app-netwizard ./ && rm -rf netwizard
git clone --depth 1 https://github.com/sirpdboy/luci-app-watchdog watchdog-openwrt && mv -n watchdog-openwrt/{luci-app-watchdog,watchdog} ./ && rm -rf watchdog-openwrt
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go ddns-go-openwrt && mv -n ddns-go-openwrt/{luci-app-ddns-go,ddns-go} ./ && rm -rf ddns-go-openwrt
git clone --depth 1 https://github.com/sirpdboy/luci-app-partexp partexp && mv -n partexp/luci-app-partexp ./ && rm -rf partexp
git clone --depth 1 https://github.com/sirpdboy/luci-app-chatgpt-web
git clone --depth 1 -b lua https://github.com/sirpdboy/luci-app-adguardhome adguardhome adguardhome/luci-app-adguardhome ./ && rm -rf adguardhome
git clone --depth 1 https://github.com/sirpdboy/luci-app-taskplan taskplan taskplan/luci-app-taskplan ./ && rm -rf taskplan

exit 0
