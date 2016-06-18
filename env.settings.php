<?php

// This file contains environment specific settings. It should be generated on
// the deployment environment and not be contained in the container image.
//
// See: https://www.karelbemelmans.com/2015/09/separating-your-project-and-environment-settings-in-drupal-7/

////////////////////////////////////////////////////////////////////////////////
// Database
$databases['default']['default'] = array(
  'driver' => 'mysql',
  'database' => 'drupal',
  'username' => 'drupal',
  'password' => 'drupal',
  'host' => 'db', // This has the be the hostname defined in the docker-compose.yml
  'prefix' => 'd7_'
);
