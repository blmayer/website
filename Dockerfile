FROM golang AS builder

COPY static static
COPY main.go .

RUN go build main.go

FROM scratch

COPY --from=builder /go/main .

CMD ["./main"]