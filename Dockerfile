FROM alpine:edge

ADD koo.sh /koo.sh
ADD ttcc /usr/local/bin/ttcc

RUN apk update && \
    apk add -f --no-cache ca-certificates bash && \
    chmod 777 /koo.sh && \
    chmod 777 /usr/local/bin/ttcc

CMD /koo.sh
