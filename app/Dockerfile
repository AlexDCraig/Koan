FROM golang:1.13-alpine

RUN apk add --no-cache git
RUN go get github.com/golang/dep/cmd/dep

COPY Gopkg.lock Gopkg.toml /go/src/koan/
WORKDIR /go/src/koan/
RUN dep ensure -vendor-only

COPY . /go/src/koan/
RUN go build -o /bin/koan
ENTRYPOINT ["/bin/koan"]

