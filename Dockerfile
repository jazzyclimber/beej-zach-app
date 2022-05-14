FROM rust:1.60.0 as debug

COPY server/hello/ /hello
WORKDIR /hello
RUN cargo install cargo-watch
RUN cargo build
ENV ROCKET_ADDRESS=0.0.0.0
# cargo watch -x test -x 'build'

EXPOSE 8000

# WORKDIR /hello/target/debug

# ENTRYPOINT ["./hello"]
ENTRYPOINT ["cargo"] 
CMD ["watch", "-x", "test", "-x", "'build'", "-s", "'./target/debug/hello'"]