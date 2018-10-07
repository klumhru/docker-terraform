FROM hashicorp/terraform

RUN apk add make

ENTRYPOINT ["terraform"]