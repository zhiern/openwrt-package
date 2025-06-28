## X86_64 设备
   ```bash
   grep -q IceG_repo /etc/opkg/customfeeds.conf || echo 'src/gz zhiern_repo https://clone.kejizero.online/github.com/zhiern/Extras-ipk/raw/x86_64/myrepo' >> /etc/opkg/customfeeds.conf
   wget https://clone.kejizero.online/https://raw.githubusercontent.com/zhiern/ipkg-make-index/refs/heads/main/my-private.key.pub -O /tmp/my-private.key.pub
   opkg-key add /tmp/my-private.key.pub
   opkg update
   ```
## Rockchip 设备
   ```bash
   grep -q IceG_repo /etc/opkg/customfeeds.conf || echo 'src/gz zhiern_repo https://clone.kejizero.online/github.com/zhiern/Extras-ipk/raw/aarch64_generic/myrepo' >> /etc/opkg/customfeeds.conf
   wget https://clone.kejizero.online/https://raw.githubusercontent.com/zhiern/ipkg-make-index/refs/heads/main/my-private.key.pub -O /tmp/my-private.key.pub
   opkg-key add /tmp/my-private.key.pub
   opkg update
   ```

### 插件说明
| 插件 | 说明 |
| ------------- | ------------- |
| luci-app-daed | 基于eBPF的Linux高性能透明代理解决方案 |
| openwrt-passwall | PassWall 插件依赖 |
| luci-app-adguardhome | AdGuard Home 去广告 |
| luci-app-openlist | 一个支持多种存储的文件列表程序 |
| luci-app-lucky | 多功能动态DNS服务，功能超乎你的想象 |
| luci-app-diskman | 磁盘管理 |
| luci-app-fchomo | 基于mihomo内核的代理插件 |
| luci-app-homeproxy | immortalwrt官方基于singbox内核的代理插件 |
| luci-theme-argon | 老竭力开发的 Argon 主题 |
| luci-app-argon-config | Argon 主题设置，需搭配 Argon 主题使用 |
| lluci-app-chatgpt-web | ChatGPT在OpenWrt上的 Luci 上的面板 |
| luci-app-ddnsto | DDNSTO 内网穿透 |
| luci-app-mentohust | OpenWrt下的锐捷认证的程序 |
| luci-app-taskplan | 任务设置2.0版 |
| luci-app-partexp | 一键自动格式化分区、扩容、自动挂载插件 |
| luci-app-ramfree | 释放缓存 |
| luci-app-mosdns | DNS 分流解析与广告过滤 |
| luci-app-nft-timecontrol | 上网时间控制插件 |
| luci-app-oaf | 应用过滤 |
| luci-app-unblockneteasemusic | 解除网易云音乐播放限制 |
| luci-app-openclash | OpenClash 小猫咪科学上网插件 |
| luci-app-passwall | PassWall 科学上网插件 |
| luci-app-passwall2 | PassWall2 科学上网插件 |
| luci-app-webdav | OpenWrt上的 WedDav 服务 |
| luci-app-quickstart | 易有云的首页设置向导插件 |
| luci-app-qbittorrent | OpenWrt 上的 qbittorrent 下载服务 |
| luci-app-smartdns | SmartDNS DNS防污染 |
| luci-app-ssr-plus | SSR Plus+ 科学上网插件 |
| luci-app-store | iStore 应用商店 |
| luci-app-floatip | 易有云团队的浮动网关插件 |
| luci-app-ap-modem | 让局域网客户端访问不同子网的AP或光猫 |
| luci-app-netwizard | 设置向导 |
| luci-app-ddns-go | 自动获得你的公网IPv4 或IPv6 地址 |

### Stargazers Over Time
[![Stargazers over time](https://starchart.cc/zhiern/openwrt-package.svg?variant=adaptive)](https://starchart.cc/zhiern/openwrt-package)
