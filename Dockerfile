FROM node:0.10.36
MAINTAINER William Grasel

# Define mountable directories.
VOLUME ["/home/node/app"]

# Define working directory.
WORKDIR /home/node/app

# Run as a normal user
RUN useradd -ms /bin/bash node
RUN chown -R node:node /home/node
USER node

# Expose dev port
EXPOSE 5000

# Expose debug port
EXPOSE 5858

# Define default command.
CMD ["npm", "start"]