FROM alpine

ENV SLEEP_BEFORE_APP_SERVER_STARTS_SECONDS 5
ENV SLEEP_BEFORE_DIAG_SERVER_STARTS_SECONDS 5
ENV SERVER_PORT 8080
ENV DIAG_PORT 7070

COPY assets/* /assets/

RUN chmod 500 /assets/*.sh && \
	apk update && \
	apk add --no-cache bash

ENTRYPOINT ["/assets/entrypoint.sh"]

EXPOSE $SERVER_PORT $DIAG_PORT

CMD ["/assets/start_app_server.sh"]
