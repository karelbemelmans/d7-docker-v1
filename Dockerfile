# Drupal development container

FROM karelbemelmans/d7-docker-base
MAINTAINER Karel Bemelmans <mail@karelbemelmans.com>

# Additinal Drupal settings can be put in the extra.settings.php file.
# If this file exists it will be included at the bottom of settings.php
COPY config/extra.settings.php sites/default/extra.settings.php

# Drupal Libraries
#
# Colorbox, needed for the colorbox contrib module
RUN curl -L --silent https://github.com/jackmoore/colorbox/archive/1.x.zip -o /tmp/colorbox.zip \
      && unzip /tmp/colorbox.zip -d sites/all/libraries/ \
      && mv sites/all/libraries/colorbox-1.x sites/all/libraries/colorbox \
      && rm -f /tmp/colorbox.zip

# Drupal Modules
RUN d7download.sh modules colorbox 7.x-2.12 a5667b3345a9430837dbeee8066b7de9

# Drupal Themes
#
# Zen will be the base theme for this site, so we need to install it as a
# contrib theme.
RUN d7download.sh themes zen  7.x-6.4  2a046998affb1bbc2b38a6f52dc16039

# Drupal Patches.
#
# Apply patches to a contrib module, theme, library or Drupal core.
# You should never change contrib modules but apply patches to them using patch
# files in this Dockerfile.



# Custom modules and themes
# These folders should be mounted using a Docker volume:
#   - sites/all/modules/custom
#   - sites/all/modules/features
#   - sites/all/themes/custom

# Drupal public files
RUN mkdir -p sites/default/files && chown www-data:www-data sites/default/files
VOLUME /var/www/html/sites/default/files

# Drupal private files. You should enter this path in your configuration.
RUN mkdir -p /data/private && chown www-data:www-data /data/private
VOLUME /data/private

# Done.
