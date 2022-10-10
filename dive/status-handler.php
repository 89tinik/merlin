<?php
require_once 'function.php';
if(is_login()){
    $userInfo = get_user_info($_SESSION['user']);
    if (is_admin($_SESSION['user']) || is_author($_POST['user_id'])){
        set_user_status($_POST['user_id'], $_POST['status']);
        set_flash_message('Данные успешно изменены.', 'success');
    } else {
        set_flash_message('У вас не достаточно прав для редактирования этих данных!!!', 'danger');
    }
    redirect_to('users.php');
} else {
    redirect_to('page_login.php');
}