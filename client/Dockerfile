FROM alpine

COPY assets /assets

RUN chmod 500 /assets/*.sh && \
	apk update && \
	apk add --no-cache bash

RUN adduser -D auser

RUN chown -R auser:auser /assets

USER auser

ENTRYPOINT ["/assets/entrypoint.sh"]

CMD ["/assets/cmd.sh"]
