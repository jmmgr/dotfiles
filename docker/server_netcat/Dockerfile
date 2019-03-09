FROM alpine:latest

# install packages
RUN apk add busybox

EXPOSE 9090/tcp
# Run netcat and ngrok
CMD nc -l -k -p 9090 -e sh -c 'echo -e "HTTP/1.1 200 OK\r\nContent-Length:46\r\n\r\n$HOSTNAME -> $(date)\r\n"'


# Build as
# docker build -t server_netcat .
# run like
# docker run --rm -p 9090:9090 server_netcat
# detaul run
#	 docker run \
#	  --rm \ # remove after finish
#	  -p 9090:9090 \ # map ports host:guess, remember to change the host to run several
#	  server_netcat # name
