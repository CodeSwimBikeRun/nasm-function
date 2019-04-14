FROM christopherclark/nasm-builder as builder

COPY ./asm ./builder
WORKDIR /builder

RUN nasm -f elf64 main.asm -o main.o
RUN nasm -f elf64 exit_0.asm -o exit_0.o
RUN nasm -f elf64 echo_hello.asm -o echo_hello.o

RUN ld -s -o exit_0 exit_0.o
RUN ld -s -o echo_hello echo_hello.o

RUN nasm -f elf64 main.asm -o main.o
RUN ld -s -o main main.o exit_0.o echo_hello.o

FROM scratch
COPY --from=builder ./builder/main /main

ENTRYPOINT ["/main"]