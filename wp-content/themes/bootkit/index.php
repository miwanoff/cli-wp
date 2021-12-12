<?php
wp_head(); // здесь автоматически будет подключен файл functions.php
$str = 'Hello, world!';
echo $str = apply_filters('my_filter1', $str); // <strong>Kit</strong>

echo apply_filters('my_filter2', $str); // Hello Kit

do_action('my_action'); // Произошло событие "my_action"!