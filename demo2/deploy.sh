#! /bin/bash
# 通过 readlink 获取绝对路径，再取出目录
current_path=$(dirname $(readlink -f $0));

# nginx.conf 文件地址
config_path="${current_path}/nginx.conf";

# 等价于: nginx -c /Users/wangjunxiang/Documents/Projects/nginx-demos/demo1/nginx.conf;
echo $config_path;

if [ $1 = "start" ]
then
  echo "🍃 启动 Nginx ----------->";
  nginx -c $config_path;
elif [ $1 = "stop" ]
then
   echo "🍂 停止 Nginx ----------->";
   nginx -c $config_path -s stop;
elif [ $1 = "reload" ]
then
   echo "📚 更新 Nginx ----------->";
   nginx -c $config_path -s reload;
else
   echo "$1 无效指令"
fi
