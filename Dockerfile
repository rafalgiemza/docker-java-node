FROM openjdk:8
LABEL maintainer "Rafał Giemza <rafal.giemza@intive.com>"

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT
ENV JAVA_HOME /usr/local/openjdk-8
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
&& curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
&& apt-get update -qq && apt-get install -qq --no-install-recommends \
  git \
  nodejs \
  libx11-6 \
&& rm -rf /var/lib/apt/lists/*