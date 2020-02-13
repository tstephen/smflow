curl -H 'Content-Type:application/json' -d @"$1" -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/runtime/process-instances

