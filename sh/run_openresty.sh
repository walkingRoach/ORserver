#!/bin/zsh
echo "重新启动本地 openresty服务 ............"

if [-e "$@/logs/nginx.pid" ]; then
  echo "openresty 正在运行 --> 重启 openresty";
  /usr/local/openresty/bin/openresty -p "$@" -c "$@/conf/nginx.conf" -s reload
  echo  "--> 重启完毕";
else
  echo "openresty未运行 --> 启动 openresty";
  /usr/local/openresty/bin/openresty -p "$@" -c "$@/conf/nginx.conf"
  echo "-->启动完毕";
fi;