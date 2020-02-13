DIR=`dirname $0`
FILE=$DIR/env.sh
if test -f "$FILE"; then
  echo "setting environment from $FILE"
  source $FILE
fi

if test -f "$1"; then
  echo "deploying app from $1"
  curl -v -u $FLOWABLE_USR:$FLOWABLE_PWD -F "file=@$1" $FLOWABLE_URL/repository/deployments
else
  echo "ERROR: no app zip found at '$1'"
fi

