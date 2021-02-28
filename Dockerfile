FROM golang as builder

COPY static .
COPY main.go .

RUN go build main.go -o main

FROM scratch

COPY --from=builder main .

CMD ["./main"]