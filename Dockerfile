FROM golang:1.17-alpine

# Install packages
RUN apk add --update npm

# copy main file
COPY main.go /usr/bin/main.go

# change mode of the main file
RUN chmod +x /usr/bin/main.go

# set entrypoint command
ENTRYPOINT [ "go", "run", "/usr/bin/main.go" ]
