#!/bin/bash


clear

PROC_NAME=$(lscpu | grep -i "Имя модели:")
PROC_ARCH=$(lscpu | grep -i "Архитектура:")
PROC_CORE=$(lscpu | grep -i "Ядер на сокет:")
PROC_GHz=$(lscpu | grep -i "CPU МГц:")
PROC_THREADS=$(lscpu | grep -i "Потоков на ядро:")
MEM_ALL=$(cat /proc/meminfo | grep "MemTotal:")
MEM_FREE=$(cat /proc/meminfo | grep "MemFree:")
#HDD_TOTAL=$(lsblk | grep "sda1" | awk '{print $4}')
HDD_TOTAL=$(df -h | grep "/dev/sda1" | awk '{print $2}')
HDD_FREE=$(df -h | grep "/dev/sda1" | awk '{print $4}')
SWAP_TOTAL=$(swapon -s | grep "/swapfile" | awk '{print $3}')
SWAP_USED=$(swapon -s | grep "/swapfile" | awk '{print $4}')
SWAP_FREE=$((SWAP_TOTAL - SWAP_USED))


echo "Дата:"
echo "	$(date)"
echo "Имя учетной записи:"
echo "	$(whoami)"
echo "Доменное имя пк:"
echo "	$(hostname)"
echo "Процессор:"
echo "	$PROC_NAME"
echo "	$PROC_ARCH"
echo "	$PROC_GHz"
echo "	$PROC_CORE"
echo "	$PROC_THREADS"
echo "Оперативная память:"
echo "	$MEM_ALL"
echo "	$MEM_FREE"
echo "Жесткий диск:"
echo "	Всего:	$HDD_TOTAL"
echo "	Доступно $HDD_FREE"
echo "	Смонтировано в корневую папку / - $HDD_TOTAL"
echo " 	SWAP всего - $SWAP_TOTAL"
echo "	SWAP доступно - $SWAP_FREE"
echo "Сетевые интерфейсы:"
echo "Hello World!"
