FROM tmozgacheva/orca-b
WORKDIR /app
RUN brew tap homebrew/science
RUN brew install nlopt
RUN brew test quast --cc=gcc-4.8
