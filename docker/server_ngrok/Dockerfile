FROM alpine:latest

# install packages
RUN apk add busybox \
 && apk add curl \
# install ngrok
 && wget -P /tmp https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
 && unzip /tmp/ngrok-stable-linux-amd64.zip -d /tmp \
# create new user ngrok -D is for defaults so don't ask password
 && adduser -h /tmp -D ngrok

USER ngrok
ENV USER=ngrok

EXPOSE 9090/tcp
# Run netcat and ngrok
CMD (nc -l -k -p 9090 -e sh -c 'echo -e "HTTP/1.1 200 OK\r\nContent-Length:46\r\n\r\n$HOSTNAME -> $(date)\r\n"' &) && /tmp/ngrok http 9090

# Build as
# docker build -t server_ngrok .
# run like
# docker run --rm -ti -p 9090:9090 server_ngrok
# detaul run
#	 docker run \
#	  --rm \ # remove after finish
#	  -ti \ # we need -t to see ngrok output and i to accept our CTRL-C
#	  -p 9090:9090 \ # map ports host:guess, remember to change the host to run several
#	  server_ngrok # name
