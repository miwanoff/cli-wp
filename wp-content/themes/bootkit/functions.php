<?php
// Setup
define('BOOTSTRAPTOPIC_DEV_MODE', false);

// Includes
include get_theme_file_path('includes/enqueue.php');
include get_theme_file_path('includes/setup.php');
include get_theme_file_path('includes/custom-nav-walker.php');
include get_theme_file_path('includes/widgets.php');
include get_theme_file_path('includes/taxonomies.php');
include get_theme_file_path('includes/custom-post-types.php');
include get_theme_file_path('includes/custom-fields.php');
include get_theme_file_path('includes/theme-customizer.php');
include get_theme_file_path('includes/customizer/social.php');
include get_theme_file_path('includes/customizer/misc.php');
include get_template_directory() . '/inc/сustomizer.php';

// Hooks
add_action('wp_enqueue_scripts', 'bootkit_enqueue');
add_action('after_setup_theme', 'bootkit_setup_theme');
add_action('widgets_init', 'bootkit_widgets');
add_action('init', 'bootkit_taxonomies');
add_action('init', 'bootkit_register_post_type_init');
add_action('init', 'movie_custom_fields');
add_action('customize_register', 'bootkit_customize_register');

// Shortcodes

function site_url_shortcode($atts)
{
    return site_url();
}
add_shortcode('myurl', 'site_url_shortcode');

function time_shortcode($atts)
{
    return time_to_post_content($content);
}
add_shortcode('time_to_post', 'time_shortcode');