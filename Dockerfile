FROM hashicorp/terraform

RUN apk -v --update add \
    python \
    py-pip \
    groff \
    less \
    mailcap \
    && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk add make && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

ENTRYPOINT ["terraform"]