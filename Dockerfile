FROM hashicorp/terraform

RUN apk -v --update add \
    python \
    py-pip \
    groff \
    less \
    mailcap \
    && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk add make && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

ENTRYPOINT ["terraform"]