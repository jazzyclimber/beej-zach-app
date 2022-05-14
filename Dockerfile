FROM rust:1.60.0 as debug

COPY server/hello/ /hello
WORKDIR /hello
RUN cargo build

EXPOSE 8000

WORKDIR /hello/target/debug

ENTRYPOINT ["./hello"]
# CMD ["-f","/dev/null"]
