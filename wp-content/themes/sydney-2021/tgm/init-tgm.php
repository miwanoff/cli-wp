<?php
/**
 * TGM_Plugin_Activation for Sydney
 */

/**
 * Include the TGM_Plugin_Activation class.
 *
 */

require_once get_template_directory() . '/tgm/class-tgm-plugin-activation.php';

add_action('tgmpa_register', 'sydney_2021_register_required_plugins');

function sydney_2021_register_required_plugins()
{

    $plugins = array(
        array(
            'name' => esc_html__('Contact form 7'),
            'slug' => 'contact-form-7',
        ),

        array(
            'name' => esc_html__('Unyson'),
            'slug' => 'unyson',
            'source' => get_template_directory() . '/assets/plugins/unyson.zip',
            'required' => true,
        ),

        array(
            'name' => 'Kirki',
            'slug' => 'kirki',
            'required' => true,
        ),

    );

    /*
     * Array of configuration settings. Amend each line as needed.

     */
    $config = array(
        'id' => 'sydney-2021', // Unique ID for hashing notices for multiple instances of TGMPA.
        'default_path' => '', // Default absolute path to bundled plugins.
        'menu' => 'tgmpa-install-plugins', // Menu slug.
        'parent_slug' => 'themes.php', // Parent menu slug.
        'capability' => 'edit_theme_options', // Capability needed to view plugin install page, should be a capability associated with the parent menu used.
        'has_notices' => true, // Show admin notices or not.
        'dismissable' => true, // If false, a user cannot dismiss the nag message.
        'dismiss_msg' => '', // If 'dismissable' is false, this message will be output at top of nag.
        'is_automatic' => false, // Automatically activate plugins after installation or not.
        'message' => '', // Message to output right before the plugins table.

    );

    tgmpa($plugins, $config);
}