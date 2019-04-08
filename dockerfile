FROM christopherclark/nasm-builder as builder

COPY ./ ./builder
WORKDIR /builder
RUN nasm -f elf64 main.asm -o main.o
RUN ld -s -o main main.o

FROM scratch
COPY --from=builder ./builder/main /main

ENTRYPOINT ["/main"]