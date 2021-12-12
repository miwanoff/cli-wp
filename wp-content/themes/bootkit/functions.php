<?php
function my_filter_function1($str)
{
    $str = '<em>' . $str . '</em>';
    return $str; // возвращаем измененное значение!
}

add_filter('my_filter1', 'my_filter_function1');

function my_filter_function2($str)
{
    return 'Hello ' . $str . '!'; // возвращаем измененное значение!
}
add_filter('my_filter2', 'my_filter_function2');

function my_action_function($text)
{
    echo 'Произошло событие "my_action"!'; // ничего не возвращаем!
}
add_action('my_action', 'my_action_function', 2);
function my_action_function_new()
{
    echo "!!!";
}
add_action('my_action', 'my_action_function_new', 1);