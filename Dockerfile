FROM debian:11

ARG DEBIAN_FRONTEND=noninteractive

COPY . .

RUN apt-get update -qq && \
    apt-get install apt-utils -qq && \
    apt-get install daemontools-run -qq && \
    apt-get install python3 -qq

EXPOSE 80

CMD ["/bin/bash","/startup.sh"]
