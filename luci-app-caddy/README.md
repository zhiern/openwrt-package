# luci-app-caddy
<p align="center">
    <img alt="GitHub Created At" src="https://img.shields.io/github/created-at/lmq8267/luci-app-caddy?logo=github&label=%E5%88%9B%E5%BB%BA%E6%97%A5%E6%9C%9F">
<a href="https://hits.seeyoufarm.com"><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Flmq8267%2Fluci-app-caddy&count_bg=%2395C10D&title_bg=%23555555&icon=github.svg&icon_color=%238DC409&title=%E8%AE%BF%E9%97%AE%E6%95%B0&edge_flat=false"/></a>
<a href="https://github.com/lmq8267/luci-app-caddy/releases"><img src="https://img.shields.io/github/downloads/lmq8267/luci-app-caddy/total?logo=github&label=%E4%B8%8B%E8%BD%BD%E9%87%8F"></a>
<a href="https://github.com/lmq8267/luci-app-caddy/graphs/contributors"><img src="https://img.shields.io/github/contributors-anon/lmq8267/luci-app-caddy?logo=github&label=%E8%B4%A1%E7%8C%AE%E8%80%85"></a>
<a href="https://github.com/lmq8267/luci-app-caddy/releases/"><img src="https://img.shields.io/github/release/lmq8267/luci-app-caddy?logo=github&label=%E6%9C%80%E6%96%B0%E7%89%88%E6%9C%AC"></a>
<a href="https://github.com/lmq8267/luci-app-caddy/issues"><img src="https://img.shields.io/github/issues-raw/lmq8267/luci-app-caddy?logo=github&label=%E9%97%AE%E9%A2%98"></a>
<a href="https://github.com/lmq8267/luci-app-caddy/discussions"><img src="https://img.shields.io/github/discussions/lmq8267/luci-app-caddy?logo=github&label=%E8%AE%A8%E8%AE%BA"></a>
<a href="GitHub repo size"><img src="https://img.shields.io/github/repo-size/lmq8267/luci-app-caddy?logo=github&label=%E4%BB%93%E5%BA%93%E5%A4%A7%E5%B0%8F"></a>
<a href="https://github.com/lmq8267/luci-app-caddy/actions?query=workflow%3ABuild"><img src="https://img.shields.io/github/actions/workflow/status/lmq8267/luci-app-caddy/build.yml?branch=main&logo=github&label=%E6%9E%84%E5%BB%BA%E7%8A%B6%E6%80%81" alt="Build status"></a>

项目地址：https://github.com/caddyserver/caddy

没有添加caddy二进制程序，需要下载或编译对应cpu架构的二进制程序手动上传至路由器，然后填写对应的程序路径。
caddy的大概 [命令参数](https://github.com/lmq8267/caddy/blob/main/README_caddy.md)
```shell
#查看添加了哪些插件命令
caddy list-modules -s
```
------------------------------------------------------
编译的大概步骤：抄自网上的方法, 也有我编译好的二进制文件[caddy](https://github.com/lmq8267/caddy/releases)文件服务器支持照片音视频预览播放 支持markdown[UI预览效果图](https://github.com/lmq8267/caddy/tree/main#ui%E9%A2%84%E8%A7%88)  
还有OpenWrt的[github.com/fuqiang03/openwrt-caddy](https://github.com/fuqiang03/openwrt-caddy)Makefile
```shell
apt update
apt install xcaddy git libnss3 upx-ucl
```

不能安装xcaddy的可以
```shell
go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest
```

```shell
#下载安装go
wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

#编译  需要什么插件自行添加了 以下只添加了caddy-webdav和caddy-cgi
GOOS=linux GOARCH=mipsle GOMIPS=softfloat ~/go/bin/xcaddy build \
    --with github.com/mholt/caddy-webdav \
    --with github.com/aksdb/caddy-cgi/v2 

#编译出来可能体积很大 可以使用upx压缩一下
upx --lzma --best caddy
```

--------------------------------------------------------
### UI预览 ###
我只是用来做文件服务器，所以也就一般配置
![](./Image/普通启动.png)

其他功能可以自行修改编辑配置文件
![](./Image/自定义启动.png)

![QQ截图20240131092630](https://github.com/lmq8267/luci-app-caddy/assets/119713693/05742312-7b0f-4a71-bbc2-83fdafb96df4)
![QQ截图20240131092717](https://github.com/lmq8267/luci-app-caddy/assets/119713693/60c57424-1a5b-4e99-9517-4fd663e13d5c)


