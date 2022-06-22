if [ -z "$1" ] # use -z to get size of param 1
then
  echo 'Form name is mandatory to get form!'
  curl -v -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/../form-api/form-repository/form-definitions
else
  curl -v -H 'Accept:application/json' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/../form-api/form-repository/form-definitions?keyLike=$1
fi
