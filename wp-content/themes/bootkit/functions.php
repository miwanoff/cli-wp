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

//--------Widget Area---------
if (function_exists('register_sidebars')) {
    register_sidebar(array(
        'name' => 'Sidebar Area',
        'before_widget' => '<div id="%1$s" class="backgroundlist %2$s"><div class="listtitle">',
        'after_widget' => '</div></div>',
        'before_title' => '<h2>',
        'after_title' => '</h2></div><div class="contentbox">',
    ));
}

//------------Widget-------------
/* Виджет Bootkit Widget */
class bootkit_widget extends WP_Widget
{
    public function __construct()
    {
        parent::__construct(
            // widget ID
            'bootkit_widget',
            // widget name
            __('Simple widget', ' bootkit_widget_domain'),
            // widget description
            array('description' => __('Simple widget bootkit', 'bootkit_widget_domain'))
        );
    }

    public function widget($args, $instance)
    {
        $title = apply_filters('widget_title', $instance['title']);
        $blog_title = get_bloginfo('name');
        $tagline = get_bloginfo('description');
        echo $args['before_widget'] . $args['before_title'] . $title . $args['after_title'];?>
<p><strong>Site Name:</strong> <?php echo $blog_title ?></p>
<p><strong>Tagline:</strong> <?php echo $tagline ?></p>
<?php echo $args['after_widget'];
    }

    public function form($instance)
    {
        if (isset($instance['title'])) {
            $title = $instance['title'];
        } else {
            $title = __('Default header', 'bootkit_widget_domain');
        }
        ?>

<p>
    <label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:');?></label>
    <input class="widefat" id="<?php echo $this->get_field_id('title'); ?>"
        name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo esc_attr($title); ?>" />
</p>
<?php
}

    public function update($new_instance, $old_instance)
    {
        $instance = array();
        $instance['title'] = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : '';
        return $instance;
    }
}

function bootkit_register_widget()
{
    register_widget('bootkit_widget');
}
add_action('widgets_init', 'bootkit_register_widget');