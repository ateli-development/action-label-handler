FROM php:7.4-cli


LABEL version="1.0"
LABEL maintainer="Amir Alian <amir@ateli.cz>"

COPY "entrypoint.sh" "/entrypoint.sh"

RUN apt-get update && \
    apt-get upgrade -y

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
