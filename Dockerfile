# Deployable container

FROM karelbemelmans/d7-docker-base
MAINTAINER Karel Bemelmans <mail@karelbemelmans.com>

## Base stuff.

# We want to add stuff to the settings.php file so we just append this.
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
