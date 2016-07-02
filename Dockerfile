# Deployable container

FROM karelbemelmans/d7-docker-base
MAINTAINER Karel Bemelmans <mail@karelbemelmans.com>

## Base stuff.

# Additinal Drupal settings can be put in the extra.settings.php file.
# If this file exists it will be included at the bottom of settings.php
COPY config/extra.settings.php >> sites/default/extra.settings.php

# Install extra modules using the d7download.sh script from the base image.
#
# Modules
COPY sites/all/modules/features sites/all/modules/features
COPY sites/all/modules/custom sites/all/modules/custom

# Themes
COPY sites/all/themes/custom sites/all/themes/custom

# Patches.
# Apply patches to a contrib module, theme or library if needed.


# Done.
