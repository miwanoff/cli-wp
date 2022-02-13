<?php
Kirki::add_section('general_settings', array(
    'title' => esc_attr__('General settings', 'sydney2021'),
    'priority' => 1,
    'capability' => 'edit_theme_options',
));

Kirki::add_field('sydney2021', array(
    'type' => 'text',
    'settings' => 'al-logo',
    'label' => esc_html__('Insert your logo', 'sydney2021'),
    'section' => 'general_settings',
    'default' => 'Sydney 2021',
));