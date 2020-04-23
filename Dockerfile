ARG VERSION=latest
FROM hashicorp/terraform:${VERSION}

RUN apk -v --update add \
  python \
  py-pip \
  groff \
  less \
  mailcap \
  python3 \
  python3-dev \
  zip \
  && \
  pip install --upgrade awscli s3cmd python-magic && \
  apk add make && \
  apk -v --purge del py-pip && \
  rm /var/cache/apk/*

ENTRYPOINT ["terraform"]