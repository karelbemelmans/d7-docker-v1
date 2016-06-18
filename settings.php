<?php

////////////////////////////////////////////////////////////////////////////////
// Memcache configuration
$conf['cache_backends'][] = 'sites/all/modules/contrib/memcache/memcache.inc';
$conf['lock_inc'] = 'sites/all/modules/contrib/memcache/memcache-lock.inc';
$conf['memcache_stampede_protection'] = TRUE;
$conf['cache_default_class'] = 'MemCacheDrupal';

// The 'cache_form' bin must be assigned no non-volatile storage.
$conf['cache_class_cache_form'] = 'DrupalDatabaseCache';

// Don't bootstrap the database when serving pages from the cache.
$conf['page_cache_without_database'] = TRUE;
$conf['page_cache_invoke_hooks'] = FALSE;
$conf['memcache_servers'] = array('memcached:11211' => 'default');

# environment-specific settings
# see https://www.karelbemelmans.com/2015/09/separating-your-project-and-environment-settings-in-drupal-7/
$settings = DRUPAL_ROOT . '/sites/default/env.settings.php';
if (file_exists($settings)) {
 require_once($settings);
}
