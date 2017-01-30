FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.6.0

RUN gem install bitbucket-backup --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bitbucket-backup"]
CMD ["--help"]
