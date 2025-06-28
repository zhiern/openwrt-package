#!/bin/bash

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

# 科学相关
git clone --depth 1 -b v5 https://github.com/sbwml/openwrt_helloworld && mv -n openwrt_helloworld/{chinadns-ng,dns2socks-rust,dns2socks,dns2tcp,geoview,hysteria,ipt2socks,lua-neturl,luci-app-homeproxy,luci-app-nikki,luci-app-openclash,luci-app-passwall,luci-app-passwall2,luci-app-ssr-plus,microsocks,naiveproxy,nikki,pdnsd,redsocks2,shadow-tls,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,sing-box,tcping,trojan-plus,trojan,tuic-client,v2ray-core,v2ray-geodata,v2ray-plugin,xray-core,xray-plugin} ./ && rm -rf openwrt_helloworld
git clone --depth 1 https://github.com/QiuSimons/luci-app-daed dae && mv -n dae/{luci-app-daed,daed} ./ && rm -rf dae
git clone --depth 1 https://github.com/oppen321/libcron

# 主题
git clone --depth 1 -b js https://github.com/sirpdboy/luci-theme-kucat kucat && mv -n kucat/luci-theme-kucat ./ && rm -rf kucat
git clone --depth 1 https://github.com/sirpdboy/luci-app-kucat-config
git clone --depth 1 https://github.com/derisamedia/luci-theme-alpha
git clone --depth 1 -b openwrt-24.10 https://github.com/sbwml/luci-theme-argon argon && mv -n argon/{luci-theme-argon,luci-app-argon-config} ./ && rm -rf argon

# sbwml
git clone --depth 1 -b v5 https://github.com/sbwml/luci-app-mosdns mosdns-openwrt && mv -n mosdns-openwrt/{luci-app-mosdns,mosdns,v2dat} ./ && rm -rf mosdns-openwrt
git clone --depth 1 -b main https://github.com/sbwml/luci-app-openlist openlist-openwrt && mv -n openlist-openwrt/{luci-app-openlist,openlist} ./ && rm -rf openlist-openwrt
git clone --depth 1 https://github.com/sbwml/luci-app-airplay2 airplay2-openwrt && mv -n airplay2-openwrt/{luci-app-airplay2,airplay2} ./ && rm -rf airplay2-openwrt
git clone --depth 1 https://github.com/sbwml/luci-app-mentohust mentohust-openwrt && mv -n mentohust-openwrt/{luci-app-mentohust,mentohust} ./ && rm -rf mentohust-openwrt
git clone --depth 1 -b master https://github.com/sbwml/luci-app-qbittorrent qbittorrent-openwrt && mv -n qbittorrent-openwrt/{luci-app-qbittorrent,qbittorrent,qt6base,qt6tools,rblibtorrent} ./ && rm -rf qbittorrent-openwrt
git clone --depth 1 https://github.com/sbwml/luci-app-webdav

# sirpdboy
git clone --depth 1 https://github.com/sirpdboy/luci-app-netwizard netwizard && mv -n netwizard/luci-app-netwizard ./ && rm -rf netwizard
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go ddns-go-openwrt && mv -n ddns-go-openwrt/{luci-app-ddns-go,ddns-go} ./ && rm -rf ddns-go-openwrt
git clone --depth 1 https://github.com/sirpdboy/luci-app-partexp partexp && mv -n partexp/luci-app-partexp ./ && rm -rf partexp
git clone --depth 1 https://github.com/sirpdboy/luci-app-taskplan taskplan && mv -n taskplan/luci-app-taskplan ./ && rm -rf taskplan
git clone --depth 1 -b main https://github.com/sirpdboy/luci-app-timecontrol timecontrol && mv -n timecontrol/luci-app-nft-timecontrol ./ && rm -rf timecontrol
git clone --depth 1 https://github.com/sirpdboy/luci-app-chatgpt-web

# 易有云团队
git clone --depth 1 -b main https://github.com/linkease/istore && mv -n istore/luci/{luci-app-store,luci-lib-taskd,luci-lib-xterm,taskd} ./ ; rm -rf istore
git clone --depth 1 -b main https://github.com/linkease/nas-packages-luci && mv -n nas-packages-luci/luci/{luci-app-ddnsto,luci-app-floatip,luci-app-istoreenhance,luci-app-istorex,luci-app-linkease,luci-app-quickstart,luci-app-unishare,luci-lib-iform,luci-nginxer} ./ ; rm -rf nas-packages-luci
git clone --depth 1 https://github.com/linkease/nas-packages && mv -n nas-packages/multimedia/ffmpeg-remux ./ ; rm -rf nas-packages
git clone --depth 1 https://github.com/linkease/nas-packages && mv -n nas-packages/network/services/{ddnsto,floatip,istoreenhance,linkease,linkmount,quickstart,unishare,webdav2} ./ ; rm -rf nas-packages
git clone --depth 1 -b main https://github.com/linkease/openwrt-app-actions && mv -n openwrt-app-actions/applications/luci-app-ap-modem ./ ; rm -rf openwrt-app-actions

# lucky
git clone --depth 1 https://github.com/gdy666/luci-app-lucky lucky-openwrt && mv -n lucky-openwrt/{luci-app-lucky,lucky} ./ && rm -rf lucky-openwrt

# oaf
git clone --depth 1 -b master https://github.com/destan19/OpenAppFilter && mv -n OpenAppFilter/{luci-app-oaf,oaf,open-app-filter} ./ && rm -rf OpenAppFilter

# diskman
git clone --depth 1 https://github.com/lisaac/luci-app-diskman diskman && mv -n diskman/applications/luci-app-diskman ./ ; rm -rf diskman

# socat
git clone --depth 1 -b main https://github.com/Lienol/openwrt-package && mv -n openwrt-package/{luci-app-ramfree,luci-app-socat} ./ && rm -rf openwrt-package

# adguardhome
git clone --depth 1 https://git.kejizero.online/zhao/luci-app-adguardhome

# smartdns
git clone --depth 1 https://github.com/pymumu/openwrt-smartdns smartdns
git clone --depth 1 -b master https://github.com/pymumu/luci-app-smartdns

# unblockneteasemusic
git clone --depth 1 -b js https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic

sed -i \
-e 's?include \.\./\.\./\(lang\|devel\)?include $(TOPDIR)/feeds/packages/\1?' \
-e 's?\.\./\.\./luci.mk?$(TOPDIR)/feeds/luci/luci.mk?' \
*/Makefile

rm -rf ./*/.git ./*/.gitattributes ./*/.svn ./*/.github ./*/.gitignore
#find . -type f -name Makefile -exec sed -i 's/PKG_BUILD_FLAGS:=no-mips16/PKG_USE_MIPS16:=0/g' {} +

exit 0
