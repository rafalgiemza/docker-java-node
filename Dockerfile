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
  nodejs \
  git=1:2.11.0-3+deb9u4 \
  gconf-service=3.2.6-4+b1 \
  libasound2=1.1.3-5 \
  libatk1.0-0=2.22.0-1 \
  ca-certificates=20161130+nmu1+deb9u1 \
  fonts-liberation=1:1.07.4-2 \
  libappindicator1=0.4.92-4 \
  libc6=2.24-11+deb9u4 \
  libcairo2=1.14.8-1 \
  libcups2=2.2.1-8+deb9u3 \
  libdbus-1-3=1.10.28-0+deb9u1 \
  libexpat1=2.2.0-2+deb9u2 \
  libfontconfig1=2.11.0-6.7+b1 \
  libgcc1=1:6.3.0-18+deb9u1 \
  libgconf-2-4=3.2.6-4+b1 \
  libgdk-pixbuf2.0-0=2.36.5-2+deb9u2 \
  libglib2.0-0=2.50.3-2 \
  libgtk-3-0=3.22.11-1 \
  libnspr4=2:4.12-6 \
  libnss3=2:3.26.2-1.1+deb9u1 \
  libpango-1.0-0=1.40.5-1 \
  libpangocairo-1.0-0=1.40.5-1 \
  libstdc++6=6.3.0-18+deb9u1 \
  libx11-6=2:1.6.4-3+deb9u1 \
  libx11-xcb1=2:1.6.4-3+deb9u1 \
  libxcb1=1.12-1 \
  libxcomposite1=1:0.4.4-2 \
  libxcursor1=1:1.1.14-1+deb9u2 \
  libxdamage1=1:1.1.4-2+b3 \
  libxext6=2:1.3.3-1+b2 \
  libxfixes3=1:5.0.3-1 \
  libxi6=2:1.7.9-1 \
  libxrandr2=2:1.5.1-1 \
  libxrender1=1:0.9.10-1 \
  libxss1=1:1.2.2-1 \
  libxtst6=2:1.2.3-1 \
  lsb-release=9.20161125 \
  wget=1.18-5+deb9u3 \
  xdg-utils=1.1.1-1+deb9u1 \
&& rm -rf /var/lib/apt/lists/*