FROM gcc as builder

RUN apt update && apt install -y tree cowsay fortune && \
        git clone https://github.com/blmayer/servrian.git && \
        cd servrian && \
        make release

COPY . /

RUN PATH="$PATH:/usr/games" ./build.sh

FROM scratch

COPY --from=builder /servrian/bin/servrian /servrian
COPY --from=builder /web /web

CMD ["./servrian"]