FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Basic tooling for working with the Dockerfile project
RUN apt-get update && apt-get install -y --no-install-recommends \
        git vim unzip curl bash zsh \
    && rm -rf /var/lib/apt/lists/*
