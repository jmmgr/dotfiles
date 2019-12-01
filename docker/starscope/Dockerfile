# docker build -t starscope .
# docker run -ti -v ~/temp/test_starscope:/starscope  -u $(id -u):$(id -g) starscope:latest

FROM ruby:2.5

RUN apt update && apt install -y nodejs

WORKDIR /starscope

ENV GEM_HOME=/docker-gems/ruby-2.5

RUN gem install starscope

ENV PATH="${GEM_HOME}/bin:${PATH}"

ENTRYPOINT starscope -e cscope
