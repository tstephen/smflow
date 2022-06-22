if [ -z "$1" ] # use -z to get size of param 1
then
  echo 'Task id is mandatory to get form!'
else
  curl -v -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/form/form-data?taskId=$1
fi
