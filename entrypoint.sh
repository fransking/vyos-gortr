#!/bin/sh

if [ $1 == "gortr" ] 
then 
    exec ./gortr -cache $CACHE -verify=$VERIFY -checktime=$CHECKTIME -bind :8082
fi 

exec "$@"