FROM alpine:3.12

RUN apk add --no-cache postgresql-client gzip findutils bash
ADD . /

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/pg-backup.sh -c /pg-backup.config"]
