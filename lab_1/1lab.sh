#!/bin/bash


clear

PROC_NAME=$(lscpu | grep -i "Имя модели:")
PROC_ARCH=$(lscpu | grep -i "Архитектура:")
PROC_CORE=$(lscpu | grep -i "Ядер на сокет:")
PROC_GHz=$(lscpu | grep -i "CPU МГц:")
PROC_THREADS=$(lscpu | grep -i "Потоков на ядро:")
MEM_ALL=$(cat /proc/meminfo | grep "MemTotal:")
MEM_FREE=$(cat /proc/meminfo | grep "MemFree:")

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


