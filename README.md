# Python image with zsh install


## Starting the container
```
# Pull image
docker pull jcarp/pyenv-zsh

# Run image
docker run --rm -it --entrypoint /bin/zsh jcarp/pyenv-zsh

# Mounting a volume (directory) from host to container
# NOTE the folder used here '~/Repos' could be anything on host and
# likewise /root/Repos can be changed to anywhere on the container

# *nix sytems
docker run -v ~/Repos:/root/Repos --rm -it --entrypoint /bin/zsh jcarp/pyenv-zsh

# Windows
docker run -v "/c/Repos/":/root/Repos --rm -it --entrypoint /bin/zsh/ jcarp/pyenv-zsh

```

## Switching python versions using pyenv

Once you are inside the running container you can switch between python versions like so.

```
# Check current selected version
python --version

# List available versions
pyenv versions

# Change python version
pyenv global {required_version} # note must match one of installed versions listed in the 'pyenv versions' command



# Example usage
python --version # Python 3.6.9

pyenv versions
# * 2.7.17 (set by /opt/pyenv/version)
# * 3.5.8 (set by /opt/pyenv/version)
# * 3.6.9 (set by /opt/pyenv/version)
# * 3.7.5 (set by /opt/pyenv/version)

pyenv global 3.7.5

python --version # Python 3.7.5

```

## Development
If you want to change the dockerfile in order to add additional features you can rebuild it like so
```
# Build image
docker build . -t my_tag

# Then once you have created your new image you can use it like so by replacing with your tag
# For example
docker run -v ~/Repos:/root/Repos --rm -it --entrypoint /bin/zsh my_tag

```
