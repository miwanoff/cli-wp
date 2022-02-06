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

//Typography panel + sections
Kirki::add_section('section_id', [
    'priority' => 4,
    'title' => esc_html__('Fonts and colors', 'text-domain'),
]);

Kirki::add_field('sydney2021', [
    'type' => 'typography',
    'settings' => 'typography_setting',
    'label' => esc_html__('Automatic Google Fonts control', 'text-domain'),
    'section' => 'section_id',
    'default' => [
        'font-family' => 'Noto Serif',
        'variant' => '400',
        'font-size' => '14px',
        'line-height' => '1.5',
        'letter-spacing' => '0',
        'color' => '#333333',
        'text-transform' => 'none',
        'text-align' => 'left',
    ],
    'priority' => 10,
    'transport' => 'auto',
    'output' => [
        [
            'element' => 'body',
        ],
    ],
]);

Kirki::add_field('sydney2021', [
    'type' => 'color',
    'settings' => 'color_setting',
    'label' => __('Color', 'text-domain'),
    'description' => esc_html__('Some cool description', 'text-domain'),
    'section' => 'section_id',
    'default' => '#000',
    'output' => [
        [
            'element' => 'body',
            'property' => 'color',
            'suffix' => '!important',

        ],
    ],
]);