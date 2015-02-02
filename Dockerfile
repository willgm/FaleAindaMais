FROM node:0.10.36
MAINTAINER William Grasel

# Define mountable directories.
VOLUME ["/src"]

# Define working directory.
WORKDIR /src

#expose dev port
EXPOSE 5000

# Expose debug port
EXPOSE 5858

# Define default command.
CMD ["npm", "start"]