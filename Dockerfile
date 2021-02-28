FROM golang as builder

COPY static static
COPY main.go .

RUN go build main.go

FROM scratch

COPY --from=builder main .

CMD ["./main"]