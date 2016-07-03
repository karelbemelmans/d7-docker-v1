# Drupal 7 Docker full image v1 [![Build Status](https://travis-ci.org/karelbemelmans/d7-docker-v1.svg?branch=master)](https://travis-ci.org/karelbemelmans/d7-docker-v1)

This Dockerfile extends the [karelbemelmans/d7-docker-base](https://github.com/karelbemelmans/d7-docker-base) image and serves as an example how to use the base image for your own Docker container.

## Requirements

  - Docker version 1.12 (I use the OSX beta currently)
  - docker-composer (I used version 1.7.1)

## How to run this example

TODO
  - Run `docker-compose up` to create all the containers
  - Surf to http://localhost/install.php to install Drupal
  - Enable modules in Drupal

## Creating a deployable container

TODO

## Important

This project includes a docker-compose.yml file that created a local MySQL container. This container does not have a data volume, so if you remove this container you also remove all the MySQL data! In production you would not run this MySQL container on the same host, this is just an example setup so you would not need any external service.*

