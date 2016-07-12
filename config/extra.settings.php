<?php

// The content of this file gets included at the end of settings.php
//
// Remember: This file is built into your container, so if you make changes here
// you need to rebuild your Drupal container!

// This is just a test, clean urls are not needed to be disabled.
$conf['clean_url'] = 1;

// Set the private files url to the VOLUME we defined
$conf['file_public_path'] = 'sites/default/files';
$conf['file_private_path'] = '/data/private';

