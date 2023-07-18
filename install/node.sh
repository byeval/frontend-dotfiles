# Install yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

# Install node version manager
curl -L https://git.io/n-install | bash

# Install the latest stable node
n lts

# Install tools via yarn
yarn global add serve
yarn global add serverless-cloud-framework
