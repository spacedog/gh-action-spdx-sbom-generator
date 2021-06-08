FROM golang:1.16-alpine

# copy main file
COPY main.go /usr/bin/main.go

# change mode of the main file
RUN chmod +x /usr/bin/main.go

# set entrypoint command
ENTRYPOINT [ "go", "run", "/usr/bin/main.go" ]