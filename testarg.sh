ZERO="$0"
ONE="$1"
TWO="$TWO"
echo "ZERO=${ZERO}"
echo "ONE=${ONE}"
echo "TWO=${TWO}"
if [ -z "${ONE}" ]; then
	echo "one is empty"
else
	echo "one is not empty"
fi