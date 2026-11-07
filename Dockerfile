FROM ubuntu:22.04

RUN apt update && apt install -y gcc
WORKDIR /test
COPY test.c /test
CMD ["gcc test.c -o test > /dev/null && ./test"]FROM ubuntu-22.04:latest

RUN apt update && apt install -y gcc
WORKDIR /test
COPY test.c /test
RUN gcc test.c -o test > /dev/null
CMD ./test.c -o test > FROM ubuntu:22.04

RUN apt update && apt install -y gcc
WORKDIR /test
COPY test.c /test
RUN gcc test.c -o test > /dev/null
CMD ["./test"]

