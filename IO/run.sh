source ./build/activate.sh
echo First: Test that we can write a file to indexDB
emrun ./io-write.html
pause
echo Second: Test that we can read the file we just wrote
emrun ./io-read.html
source ./build/deactivate.sh
