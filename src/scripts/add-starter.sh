curl -H 'Content-Type:application/json' -d '{ "'$2'": "'$3'" }' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/repository/process-definitions/$1/identitylinks

