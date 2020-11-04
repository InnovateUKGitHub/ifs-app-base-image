#!/bin/bash

FILENAME=$1

NAME=${FILENAME%.*}
BASENAME=${NAME##*/}

mysql -u$DB_USER -p$DB_PASS -h$DB_HOST -P$DB_PORT $DB_NAME -vv < pending/$BASENAME.sql >> logs/$BASENAME.txt 2>&1

exitcode=$?
if [ $exitcode -ne 0 ]; then
  echo "fail"
  else
  echo "pass"
fi