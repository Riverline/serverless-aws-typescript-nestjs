FROM node:6.10.2

# Install Latest Serverless Framework
RUN npm install -g serverless

# Install TypeScript
RUN npm install -g typescript ts-node

RUN npm install -g nodemon

# Create fake AWS credentials
RUN mkdir ~/.aws
RUN echo "[default]" >> ~/.aws/credentials
RUN echo "aws_secret_access_key = fake" >> ~/.aws/credentials
RUN echo "aws_access_key_id = fake" >> ~/.aws/credentials

# Npm config for TS Node. See more : https://github.com/TypeStrong/ts-node/issues/405
RUN npm config set unsafe-perm true

CMD ["nodemon"]
