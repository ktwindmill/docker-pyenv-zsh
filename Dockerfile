FROM bopen/ubuntu-pyenv

RUN apt-get update && apt-get install --assume-yes curl zsh

RUN sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

RUN apt-get install --assume-yes python3-opencv
