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

git clone --depth 1 https://github.com/sbwml/autocore-arm
git clone --depth 1 https://github.com/4IceG/luci-app-qfirehose
git clone --depth 1 https://github.com/4IceG/luci-app-sms-tool-js
git clone --depth 1 https://github.com/4IceG/luci-app-3ginfo-lite
git clone --depth 1 https://github.com/4IceG/luci-app-modemband
git clone --depth 1 https://github.com/sbwml/luci-app-webdav
git clone --depth 1 -b js https://github.com/sirpdboy/luci-theme-kucat
git clone --depth 1 https://github.com/sirpdboy/luci-app-kucat-config
git clone --depth 1 https://github.com/sirpdboy/luci-app-partexp
git clone --depth 1 https://github.com/sirpdboy/luci-app-advancedplus
git clone --depth 1 https://github.com/gdy666/luci-app-lucky
git clone --depth 1 https://github.com/sirpdboy/luci-app-netwizard
git clone --depth 1 https://github.com/sirpdboy/luci-app-parentcontrol
git clone --depth 1 https://github.com/sirpdboy/luci-app-timecontrol
git clone --depth 1 https://github.com/sirpdboy/luci-app-eqosplus
git clone --depth 1 https://github.com/sirpdboy/luci-app-taskplan
git clone --depth 1 https://github.com/lisaac/luci-app-diskman
git clone --depth 1 https://github.com/sirpdboy/luci-app-chatgpt-web
git clone --depth 1 https://github.com/sbwml/luci-app-mentohust
git clone --depth 1 https://github.com/sbwml/luci-app-airplay2
git clone --depth 1 https://github.com/oppen321/package_new_nat6
git clone --depth 1 https://github.com/oppen321/nft-fullcone
git clone --depth 1 https://github.com/oppen321/shortcut-fe
git clone --depth 1 https://github.com/oppen321/package_new_natflow
git clone --depth 1 https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic
git clone --depth 1 https://github.com/oppen321/wwan
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git
#git clone --depth 1 https://github.com/oppen321/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
git clone --depth 1 https://github.com/NateLol/luci-app-bearDropper
git clone --depth 1 -b lua https://github.com/sirpdboy/luci-app-adguardhome
git clone --depth 1 https://github.com/lmq8267/luci-app-caddy && mv -n luci-app-caddy/luci-app-caddy ./ && rm -rf luci-app-caddy
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mv -n OpenAppFilter/{luci-app-oaf,oaf,open-app-filter} ./ && rm -rf OpenAppFilter
git clone --depth 1 https://github.com/sirpdboy/netspeedtest && mv -n netspeedtest/{homebox,luci-app-netspeedtest} ./ && rm -rf netspeedtest
git clone --depth 1 https://github.com/linkease/openwrt-app-actions && mv -n openwrt-app-actions/applications/luci-app-ap-modem ./ && rm -rf openwrt-app-actions
git clone --depth 1 https://github.com/linkease/istore && mv -n istore/luci/{luci-app-store,luci-lib-taskd,luci-lib-xterm,taskd} ./ && rm -rf istore
git clone --depth 1 https://github.com/linkease/nas-packages-luci && mv -n nas-packages-luci/luci/{luci-app-ddnsto,luci-app-floatip,luci-app-linkease,luci-app-quickstart} ./ && rm -rf nas-packages-luci
git clone --depth 1 https://github.com/linkease/nas-packages && mv -n nas-packages/network/services/{ddnsto,floatip,linkease,quickstart,linkmount} ./ && rm -rf nas-packages
git clone --depth 1 -b istoreos-24.10 https://github.com/istoreos/istoreos && mv -n istoreos/package/istoreos-files ./ && rm -rf istoreos
git clone --depth 1 -b main https://github.com/sbwml/luci-app-alist && mv -n luci-app-alist/{luci-app-alist,alist} ./ && rm -rf luci-app-alist
git clone --depth 1 -b v5 https://github.com/sbwml/luci-app-mosdns && mv -n luci-app-mosdns/{luci-app-mosdns,mosdns,v2dat} ./ && rm -rf luci-app-mosdns
git clone --depth 1 -b main https://github.com/sirpdboy/sirpdboy-package && mv -n sirpdboy-package/luci-app-wolplus ./ && rm -rf sirpdboy-package
git clone --depth 1 https://github.com/sbwml/openwrt_pkgs && mv -n openwrt_pkgs/{bash-completion,fw_download_tool,luci-app-ota,coremark,ddns-scripts-aliyun,luci-app-socat,luci-app-cpufreq} ./ && rm -rf openwrt_pkgs
git clone --depth 1 -b openwrt-24.10 https://github.com/immortalwrt/luci && mv -n luci/applications/{luci-app-netdata,luci-app-cifs-mount,luci-app-arpbind,luci-app-ramfree,luci-app-usb-printer,luci-app-zerotier} ./ && rm -rf luci
git clone --depth 1 -b openwrt-24.10 https://github.com/immortalwrt/packages && mv -n packages/net/zerotier ./ && rm -rf packages
#git clone --depth 1 -b openwrt-24.10 https://github.com/immortalwrt/immortalwrt && mv -n immortalwrt/package/emortal/cpufreq ./ && rm -rf immortalwrt

sed -i \
-e 's?include \.\./\.\./\(lang\|devel\)?include $(TOPDIR)/feeds/packages/\1?' \
-e 's?\.\./\.\./luci.mk?$(TOPDIR)/feeds/luci/luci.mk?' \
*/Makefile

rm -rf ./*/.git ./*/.gitattributes ./*/.svn ./*/.github ./*/.gitignore
#find . -type f -name Makefile -exec sed -i 's/PKG_BUILD_FLAGS:=no-mips16/PKG_USE_MIPS16:=0/g' {} +
exit 0
