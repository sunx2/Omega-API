

if $(uname -m | grep '64'); then
  echo "64 Bit Linux found"
  chmod 775 server_linux_64bit.bin
  ./server_linux_64bit.bin
else
  server_linux_32bit.bin
  ./server_linux_32bit.bin
fi