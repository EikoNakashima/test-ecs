FROM golang:1.17.0-alpine3.14

RUN apk update && apk add git

COPY main.go .

COPY go.mod .

RUN go mod tidy

CMD go run main.go