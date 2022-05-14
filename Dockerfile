FROM rust:1.60.0 as debug

COPY server/hello/ /hello
WORKDIR /hello
# RUN cargo build
RUN cargo install --path .

FROM debian:buster-slim as runner
COPY --from=debug /usr/local/cargo/bin/hello /usr/local/bin/hello
ENV ROCKET_ADDRESS=0.0.0.0
EXPOSE 8000
CMD ["hello"]

# ENV ROCKET_ADDRESS=0.0.0.0

# EXPOSE 8000

# WORKDIR /hello/target/debug

# ENTRYPOINT ["./hello"]
# ENTRYPOINT ["tail"]
# CMD ["-f","/dev/null"]
