# Pull base image.
FROM node:wheezy

# global install gulp and jshint
RUN npm install -g gulp jshint

# Define working directory.
WORKDIR /mnt

ADD kickoff.sh /root/kickoff.sh

ENTRYPOINT ["/root/kickoff.sh"]
