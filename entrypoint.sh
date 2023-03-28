#!/bin/sh

for file in /usr/share/nginx/html/*.js;
do
    sed "s/\$MYNAME/\"${MYNAME}\"/g" -i $file
done

nginx -g 'daemon off;'