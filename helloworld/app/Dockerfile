FROM golang

Add . /go/src/github.com/ryutah/knaeive-sample/helloworld/app

RUN go install github.com/ryutah/knaeive-sample/helloworld/app

ENTRYPOINT /go/bin/app

EXPOSE 8080
