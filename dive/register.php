<?php
require_once 'function.php';
if(is_login()){
    redirect_to('users.php');
}
$redirectUrl = 'page_register.php';
if (!empty(get_user_by_email($_POST['email']))) {
    set_flash_message('Этот эл. адрес уже занят другим пользователем.', 'danger', 'Уведомление!');
} else {
    if (add_user($_POST['email'], $_POST['password'])) {
        set_flash_message('Вы успешно зарегистрировались','success');
        $redirectUrl = 'page_login.php';
    }
}
redirect_to($redirectUrl);
