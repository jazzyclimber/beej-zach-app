# APP STUFF
FROM node:17.3.0 as appDebug

COPY app/src /app/src
COPY app/static /app/static
COPY app/package.json /app/package.json
COPY app/svelte.config.js /app/svelte.config.js
WORKDIR /app
RUN npm install
RUN npm run build

# APP STUFF2
FROM node:17.3.0 as moz-test

COPY moz-todo-svelte /moz-todo-svelte
WORKDIR /moz-todo-svelte
RUN npm install

# SERVER STUFF
FROM rust:1.60.0 as debug

# COPY --from=appDebug /app/ /hello/app/
COPY --from=moz-test /moz-todo-svelte /hello/moz-todo-svelte/

COPY server/hello/ /hello
WORKDIR /hello
RUN cargo install cargo-watch
RUN cargo build
ENV ROCKET_ADDRESS=0.0.0.0

RUN apt-update -y && apt install vim -y  

EXPOSE 8000

ENTRYPOINT ["cargo"] 
CMD ["watch", "-x", "test", "-x", "'build'", "-s", "'./target/debug/hello'  "]