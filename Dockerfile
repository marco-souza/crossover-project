FROM mhart/alpine-node

# Set the working directory to /src/
WORKDIR /src

# Copy src folter to /src
ADD . /src

# Install dependencies
# RUN apk update
# RUN apk add npm
RUN npm install

# Port avaliable to the world outside the container
EXPOSE 80

# Devine env variables
ENV NODE_ENV production

# Command to run on start
CMD ["npm", "run", "build", "&&" ,"npm", "run", "server"]
