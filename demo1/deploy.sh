echo "🍎 启动 Nginx ----------->";

# 通过 readlink 获取绝对路径，再取出目录
current_path=$(dirname $(readlink -f $0));

# nginx.conf 文件地址
config_path="${current_path}/nginx.conf";

# 等价于: nginx -c /Users/wangjunxiang/Documents/Projects/nginx-demos/demo1/nginx.conf;
echo $config_path;

# 启动 nginx
nginx -c $config_path;
