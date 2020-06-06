#!/bin/bash
A=`ip a | grep 200 | wc -l`
B=`ps -C mfsmaster --no-header | wc -l`
if [ $A -ne 0 ];then
        if [ $B -eq 0 ];then
                /usr/sbin/mfsmaster -a
        fi
fi
if [ $A -eq 0 ];then
        if [ $B -ne 0 ];then
                /usr/sbin/mfsmaster stop
        fi
fi
