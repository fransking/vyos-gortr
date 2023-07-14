#!/bin/sh

if [ $1 == "gortr" ] 
then 
    exec ./gortr -cache $CACHE -verify=$VERIFY -checktime=$CHECKTIME -bind :$PORT
fi 

exec "$@"