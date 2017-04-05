
echo apk version:
apk --version | grep apk-tools || exit $?

echo docker version:
docker version | grep 17.03 || exit $?

echo oc version:
oc version | grep v1.4.1 || exit $?

echo everything seems to be ok
