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
add_action('wp_ajax_bootkit', 'bootkit_ajax');
add_action('wp_ajax_nopriv_bootkit', 'bootkit_ajax');
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

//-----Odds&ends----------
function bootkit_ajax()
{
    $summa = $_POST['param1'] + $_POST['param2'];
    echo $summa;
    die;
}

//-----------------
if (function_exists('register_sidebars')) {
    register_sidebar(array(
        'name' => 'Sidebar Area',
        'before_widget' => '<div id="%1$s" class="backgroundlist %2$s"><div class="listtitle">',
        'after_widget' => '</div></div>',
        'before_title' => '<h2>',
        'after_title' => '</h2></div><div class="contentbox">',
    ));
}