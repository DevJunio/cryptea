FROM rust:latest as builder
WORKDIR /app
COPY . .

RUN cargo build --release

FROM debian:buster-slim

COPY --from=builder /app/target/release/cryptea /usr/local/bin/cryptea
CMD ["cryptea"]
