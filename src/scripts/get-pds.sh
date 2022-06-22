if [ -z "$1" ] # use -z to get size of param 1
then
  curl -v -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/repository/process-definitions
else
  curl -v -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/repository/process-definitions?$1
fi

