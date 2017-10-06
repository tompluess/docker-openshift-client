
echo apk version:
apk --version | grep apk-tools || exit $?

echo docker version:
docker version | grep 17.03 || exit $?

echo docker-compose version:
docker-compose version | grep 1.16.1 || exit $?

echo oc version:
oc version | grep v1.4.1 || exit $?

echo everything seems to be ok
