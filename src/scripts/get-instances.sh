if [ -z "$1" ] # use -z to get size of param 1
then
  curl -v -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/runtime/process-instances
else
  echo 'Query filtered by '$1
  curl -v -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/runtime/process-instances?$1
fi
