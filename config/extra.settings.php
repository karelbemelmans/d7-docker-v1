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

// Some AWS specific options:
//
// reverse proxy support to make sure the real ip gets logged by Drupal.
// https://www.karelbemelmans.com/2015/04/reverse-proxy-configuration-for-drupal-7-sites/
//
// We need to use the REMOTE_ADDR method since we do not know the internal ip's
// of the ELB's our site is using.
$conf['reverse_proxy'] = TRUE;
$conf['reverse_proxy_addresses'] = array($_SERVER['REMOTE_ADDR']);
$conf['reverse_proxy_header'] = 'HTTP_X_FORWARDED_FOR';
