if [ -z "$1" ] # use -z to get size of param 1
then
  curl $VERBOSE -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/repository/deployments
else
  curl $VERBOSE -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/repository/deployments/$1
fi

