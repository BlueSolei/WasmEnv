call build/activate.bat
echo First: Test that we can write a file to indexDB
call emrun io-write.html
pause
echo Second: Test that we can read the file we just wrote
call emrun io-read.html
call build/deactivate.bat
