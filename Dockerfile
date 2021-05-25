FROM gcc as builder

RUN git clone https://github.com/blmayer/servrian.git && \
    cd servrian && mkdir bin && make release

FROM scratch

COPY --from=builder /servrian/bin/server /
COPY static/* /web/

CMD ["./server"]