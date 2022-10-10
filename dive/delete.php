<?php
require_once 'function.php';
if(is_login()){
    $userInfo = get_user_info($_SESSION['user']);
    if (is_admin($_SESSION['user']) || is_author($_GET['id'])){
        if ($userPhoto = get_photo($_GET['id'])){
            remove_file($userPhoto);
        }
        delete($_GET['id']);
        set_flash_message('Удалили!!!', 'success');
        if (is_author($_GET['id'])){
            log_out();
        }
    } else {
        set_flash_message('У вас не достаточно прав для удаления!!!', 'danger');
    }
    redirect_to('users.php');
} else {
    redirect_to('page_login.php');
}
?>