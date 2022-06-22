#
# Usage: 
# add-user.sh id email (firstName) (lastName)
#
curl -X POST -H 'Content-Type:application/json' -d '{ "id": "'$1'", "password": "'$2'", "email": "'$3'", "firstName": "'$4'", "lastName": "'$5'" }' -u $FLOWABLE_USR:$FLOWABLE_PWD $FLOWABLE_URL/identity/users

