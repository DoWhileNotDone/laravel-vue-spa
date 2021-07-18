#!/bin/sh

CONTAINER="demo-mysql"
USERNAME="demo_usr"
PASSWORD="demo_pw"
while ! docker exec $CONTAINER mysql --user=$USERNAME --password=$PASSWORD -e "SELECT 1" >/dev/null 2>&1; do
    sleep 1
done

CONTAINER="demo-mysql-dusk"
USERNAME="demo_usr"
PASSWORD="demo_pw"
while ! docker exec $CONTAINER mysql --user=$USERNAME --password=$PASSWORD -e "SELECT 1" >/dev/null 2>&1; do
    sleep 1
done