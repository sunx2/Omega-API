# Omega Database Server

simple one click run binaries for omegadb database api.


## operating systems supported 
- windows
- linux
- android
- freebsd
- openbsd
- solaris
- Mac OS

this server is tested on windows and linux. windows is most prefered operating system. others may fail to provide the homepage but give search results.

# how to run

 - navigate to your operating system in repo.
 - download prefered executable for your architecture.
 - Run the executable inside docker or your system.
    - for windows , download and run the run.ps1 file.
    - for linux , download the run the run.bash file.
    - for other systems, use your operating system specific run command.

# command for running
Run directly to open the server at localhost:8085  ( for windows )
and  0.0.0.0:8085 for linux.

the address can be specified using command line args.

example 

##### for running server_windows_64bit.exe in 0.0.0.0:80  use
```
./server_windows_64bit.exe 0.0.0.0:80

```

# Endpoints now

after running the executable , open your homepage for OmegaDB API interface which 
contains documentation and test suites as well as links for different database json.

# run server in docker container

example , on linux 

Dockerfile 

```dockerfile
FROM alpine
COPY server_linux_64bit.bin /bin/
EXPOSE  8085
CMD [ "server_linux_64bit.bin"]
```

then build the image

```ps1
docker build --tag omegadbapi-alpine:latest .
```
this image is less than 19mb in size

and then run using
```ps1
docker run --expose 8050 omegadbapi-alpine:latest 
```
for running in localhost:8050
