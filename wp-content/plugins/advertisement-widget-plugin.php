<?php
/*
Plugin Name: Advertisement Widget Plugin
Plugin URI: http://ex.com
Description: Simple Advertisement Widget Plugin including banner image and link
Version: 1.0
Author: MAI
Author URI: http://ex.com
License: GPL2
 */

 // The widget class
class Advertisement_Widget extends WP_Widget {
    // Main constructor
    public function __construct() {
        /* ... */
    }
    // The widget form (for the backend) public function form( $instance) { 
        /* ... */

    // Update widget settings
    public function update( $new_instance, $old_instance) {
        /* ... */
    }

    // Display the widget
    public function widget( $args, $instance) {
        /* ... */
    }

    // Form for the widget
    public function form($instance) {
        /* ... */
    }
}

// Register the widget
function my_register_custom_widget()
{
    register_widget('Advertisement_Widget');
}
add_action('widgets_init', 'my_register_custom_widget');