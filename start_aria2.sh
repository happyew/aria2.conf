#!/usr/bin/bash
# 后台启动aria2

# 查找是否存在aria2进程
count=`ps -e | grep -w aria2c | grep -v grep | wc -l`

if [ ${count} -le 0 ]
then
	# 需手动修改执行文件aria2c路径和配置文件aria2.conf路径
	nohup /home/ye/aria2/src/aria2c --conf-path=/home/ye/aria.conf &
else
	# 若已经启动则打印PID
	arr=(`ps -e | grep aria2c`)
	echo 'aria2c is already running. PID='${arr[0]}
fi

