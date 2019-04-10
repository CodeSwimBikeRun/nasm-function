FROM ubuntu

RUN apt-get update && apt-get install build-essential nasm -y

# RUN groupadd -g 999 llp && useradd -r -u 999 -g llp llp

# USER llp