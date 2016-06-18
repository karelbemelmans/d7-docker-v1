FROM karelbemelmans/d7-docker-base
MAINTAINER Karel Bemelmans <mail@karelbemelmans.com>

# Copy our local settings.php file into the container.
COPY settings.php sites/default/settings.php

# Also copy our env.settings.php file to the container.
# This file will be generated during a deployment phase.
COPY env.settings.php sites/default/env.settings.php

# Install extra modules using the d7download.sh script from the base image.
#
# Modules

# Themes

# Libraries

# Apply patches if needed

#

# Done.
