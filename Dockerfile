FROM node:alpine

LABEL maintainer="open-source@6go.it" \
      vendor="6go.it" \
      version=1.1.0

ENV HOME /home/node
ENV USER node

RUN npm install -g --silent \
    cross-env \
    webpack \
    browserify \
    gulp \
    grunt \
    bower \
    vue-cli \
    web-ext

WORKDIR ${HOME}

COPY config/packages.json ${HOME}

RUN mkdir -p app \
    && chown -R ${USER}:${USER} .config .npm packages.json

EXPOSE 80

USER ${USER}

WORKDIR app

CMD ["tail", "-f", "/dev/null"]
