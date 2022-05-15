# APP STUFF
FROM node:17.3.0 as appDebug

COPY app/src /app/src
COPY app/static /app/static
COPY app/package.json /app/package.json
COPY app/svelte.config.js /app/svelte.config.js
WORKDIR /app
RUN npm install
RUN npm run build



# SERVER STUFF
FROM rust:1.60.0 as debug

COPY --from=appDebug /app/.svelte-kit /app/.svelte-kit

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