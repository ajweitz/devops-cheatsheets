# Specify base image
FROM node:latest 

# Specify workdir for application
WORKDIR /usr/src/app
# Specify ARGs that can be passed with --build-arg <ARG>, can be used like this ${myArg}
ARG myArg
# Setting an Environment Variable
ENV myEnvVar="production"
# Example of running a set of commands
RUN microdnf install wget \
    && wget http://example.com/${myEnvVar}

# Alternatively, we could've downloaded from a url with ADD
ADD http://example.com/${myEnvVar} ./

# This is how we copy some source code into the WORKDIR. By copying only the package*.json, we will create a reusable layer.
COPY src/package*.json ./
RUN npm install 

# Here we can finally copy the rest of the source code
COPY src/. .

# Expose the relevant port
EXPOSE 3000

# What command will run when you launch the container
CMD [ "npm", "start" ]