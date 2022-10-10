<?php
require_once 'function.php';
$redirectUrl = 'users.php';
if(is_login()){
    redirect_to($redirectUrl);
}
if ($userId = authentication($_POST['email'], $_POST['password'])) {
    authorization($userId, $_POST['remember']);
} else {
    set_flash_message('Неверный логин или пароль', 'danger', 'Уведомление!');
    $redirectUrl = 'page_login.php';
}
redirect_to($redirectUrl);
