FROM superseriousbusiness/gotosocial:latest

WORKDIR /gotosocial/storage
WORKDIR /gotosocial
ADD config.yaml /gotosocial/

ENTRYPOINT ["/gotosocial/gotosocial", "server", "start", "--config-path", "/gotosocial/config.yaml"]
