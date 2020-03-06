
echo "关闭本地 openresty 服务 ......"

if [ -e "$@/logs/nginx.pid" ]; then
    /usr/local/openresty/bin/openresty -p "$@" -c "$@/conf/nginx_test.conf" -s stop
    echo "--> openresty 已关闭";
else 
    echo "--> openresty 未运行，无须关闭";
fi;