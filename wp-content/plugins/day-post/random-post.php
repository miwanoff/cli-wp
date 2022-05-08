<?php
/*
 * Plugin Name: Post of the day
 * Plugin URI:
 * Description: Random post of the day
 * Version: 1.0
 * Author: MAI
 * Author URI: https://github.com/miwanoff/
 * License:           GPL-2.0+
 * License URI: http://www.gnu.org/licenses/gpl-2.0.txt
 */

// Make sure we don't expose any info if called directly
if (!function_exists('add_action')) {
    echo 'Hi there!  I\'m just a plugin, not much I can do when called directly.';
    exit;
}

// Setup
define('RP_PLUGIN_URL', __FILE__);

// Includes
include dirname(RP_PLUGIN_URL) . '/includes/widgets.php';

// Hooks
add_action('widgets_init', 'r_widgets_init');

// Shortcodes