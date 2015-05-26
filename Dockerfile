FROM ruby

# install travis-cli
RUN gem install bundle
RUN gem install travis --no-rdoc --no-ri

# install travis-build
RUN git clone https://github.com/travis-ci/travis-build.git /opt/travis-build
RUN cd /opt/travis-build && bundle
RUN mkdir /root/.travis
RUN ln -s /opt/travis-build $HOME/.travis/travis-build

RUN travis version


CMD ["-p"]

