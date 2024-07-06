# Use a imagem oficial do Rust como base
FROM rust:latest

ENV ROCKET_ADDRESS=0.0.0.0
ENV ROCKET_PORT=8001

RUN mkdir /code
WORKDIR /code
RUN chmod -R 777 /code

COPY Cargo.lock /code/
COPY Cargo.toml /code/
COPY src/ /code/src

RUN cargo build --release

# EXPOSE 8001

# CMD ROCKET_PORT=8001 ./target/debug/ohmybook_rust