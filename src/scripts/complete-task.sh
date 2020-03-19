curl -X POST -v -H 'Accept:application/json' -H 'Content-Type:application/json' -d '{ "action" : "complete", "variables" : [] }' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/runtime/tasks/$1
