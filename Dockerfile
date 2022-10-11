FROM wpscanteam/wpscan

USER root

RUN apk add --no-cache bash

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /wpscan
USER wpscan

ENTRYPOINT ["/entrypoint.sh"]