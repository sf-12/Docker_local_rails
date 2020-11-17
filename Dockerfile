FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y nodejs vim

# install yarn
# https://yarnpkg.com/en/docs/install#linux-tab
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y yarn

# install rails 
RUN gem install -v 6.0.0 rails

RUN mkdir work
# CMD ["/bin/bash"]

