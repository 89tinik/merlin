<?php
require_once 'function.php';

$redirectUrl = 'create_user.php';
if (!empty(get_user_by_email($_POST['email']))) {
    set_flash_message('Этот эл. адрес уже занят другим пользователем.', 'danger', 'Уведомление!');
} else {
    if ($curentUser = add_user($_POST['email'], $_POST['password'])) {
        set_flash_message('Вы успешно создали пользователя','success');
        set_user_data($curentUser);
        set_user_status($curentUser, $_POST['status']);
        set_photo($_FILES['photo'], $curentUser);
        $redirectUrl = 'users.php';
    }
}
redirect_to($redirectUrl);
