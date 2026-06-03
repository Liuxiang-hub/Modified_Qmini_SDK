#!/bin/bash
# 全程循环：程序退出就重新等手柄再启动
while true
do
    echo "等待PS4手柄 /dev/input/js0 ..."
    while [ ! -e /dev/input/js0 ]; do
        echo "未检测手柄，5s重试"
        sleep 5
    done
    echo "手柄已就绪，启动程序"
    /home/liuxiang/R1/bin/run_interface
    # 只要程序异常退出(掉线崩溃)，回到外层循环重新等手柄
    echo "程序退出，即将重新等待手柄..."
    sleep 2
done
