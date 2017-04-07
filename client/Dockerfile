FROM alpine

COPY assets /assets

RUN chmod 500 /assets/*.sh && \
	apk update && \
	apk add --no-cache bash

ENTRYPOINT ["/assets/entrypoint.sh"]

CMD ["/assets/cmd.sh"]
