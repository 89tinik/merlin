<?php
session_start();
/**
 * @param $email string
 * @return array
 */
function get_user_by_email($email)
{
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);
    $sth = $dbh->prepare("SELECT * FROM dive_users WHERE `email`=?");
    $sth->execute([$email]);
    return $sth->fetch(PDO::FETCH_ASSOC);
}

/**
 * @param $email string
 * @param $password string
 * @return int
 */
function add_user($email, $password)
{
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';
    $dbh = new PDO($dsn, $user, $password);
    $sth = $dbh->prepare("INSERT INTO dive_users (`email`,`password`) VALUES (:email,:password)");
    if ($sth->execute(['email' => $_POST['email'], 'password' => password_hash($_POST['password'], PASSWORD_DEFAULT)])) {
        $newUserID = $dbh->lastInsertId();
        $sth = $dbh->prepare("INSERT INTO dive_users_data (`user_id`,`email`, `role`) VALUES (:userid,:email,:role)");
        if ($sth->execute(['userid' => $newUserID, 'email' => $_POST['email'], 'role' => 'user'])) {
            return $newUserID;
        }
    }
}

/**
 * @param $message string
 * @param $type string
 * @param $title string
 * @return null
 */
function set_flash_message($message, $type = 'info', $title = '')
{
    $_SESSION['flash'][] = [
        'title' => $title,
        'message' => $message,
        'type' => $type
    ];
}

/**
 * @return string
 */
function display_flash_message()
{
    $outputFlash = '';
    if (!empty($_SESSION['flash'])) {
        foreach ($_SESSION['flash'] as $k => $flash) {
            $titleHtml = (!empty($flash['title'])) ? '<strong>' . $flash['title'] . '</strong> ' : '';
            $outputFlash .= ' <div class="alert alert-' . $flash['type'] . ' text-dark" role="alert">' . $titleHtml . $flash['message'] . '</div>';
            unset($_SESSION['flash'][$k]);
        }
    }
    return $outputFlash;
}

/**
 * @param $path string
 * @return null
 */
function redirect_to($path)
{
    header("Location: $path");
    exit;
}

/**
 * @param $email string
 * @param $password string
 * @return bool|int
 */
function authentication($email, $password)
{
    if (!empty($_POST['email']) && !empty($_POST['password'])) {
        /* Подключение к базе данных MySQL с помощью вызова драйвера */
        $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
        $user = 'magento';
        $password = 'magento';

        $dbh = new PDO($dsn, $user, $password);

        $sth = $dbh->prepare("SELECT * FROM dive_users WHERE `email`=?");
        $sth->execute([$_POST['email']]);

        if (empty($userData = $sth->fetch(PDO::FETCH_ASSOC))) {
            return false;
        } else {

            if (password_verify($_POST['password'], $userData['password'])) {
                return $userData['id'];
            } else {
                return false;
            }
        }
    }
}

/**
 * @param $userID int
 * @param $remember int
 * @return bool
 */
function authorization($userID, $remember)
{

    $_SESSION['user'] = $userID;
    return true;
}

/**
 * @return bool
 */
function log_out()
{
    unset($_SESSION['user']);
    return true;
}

/**
 * @return bool
 */
function is_login()
{
    return isset($_SESSION['user']);
}

/**
 * @param $userID int
 * @return array
 */
function get_user_info($userID)
{
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);

    $sth = $dbh->prepare("SELECT * FROM dive_users_data WHERE `user_id`=?");
    $sth->execute([$userID]);

    if (empty($userData = $sth->fetch(PDO::FETCH_ASSOC))) {
        redirect_to('logout.php');
    } else {
        return $userData;
    }

}

/**
 * @return array|false
 */
function get_all_users($onlyActive = true)
{
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);
    $sql = "SELECT * FROM dive_users_data";
    $dataArr = [];
    if ($onlyActive) {
        $sql .= " WHERE `status` IS NOT NULL OR `user_id`=?";
        $dataArr[] = $_SESSION['user'];
    }
    $sql .= " ORDER BY id DESC";
    $sth = $dbh->prepare($sql);
    $sth->execute($dataArr);

    return $sth->fetchAll(PDO::FETCH_ASSOC);
}

/**
 * @param $userId int
 * @return bool
 */
function set_user_data($userId)
{
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';
    $dbh = new PDO($dsn, $user, $password);

    $dataArr = ['user_id', 'user', 'name', 'work', 'phone', 'adress', 'vk', 'telegramm', 'inst'];
    $sqlArr=[];
    $insertData = [];
    foreach ($dataArr as $field){
        if (isset($_POST[$field])){
            $sqlArr[]='`'.$field.'`=:'.$field;
            $insertData[$field] = $_POST[$field];
        }
    }

    if(!empty($sqlArr)) {
        if (!isset($insertData['user_id'])){
            $sqlArr[]='`user_id`=:user_id';
            $insertData['user_id'] = $userId;
        }
        $sth = $dbh->prepare("UPDATE dive_users_data SET " . implode(',', $sqlArr) . " WHERE `user_id`=:user_id");
        return $sth->execute($insertData);
    }
    return false;
}

/**
 * @param $userId int
 * @param $status string
 * @return bool
 */
function set_user_status($userId, $status)
{
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';
    $dbh = new PDO($dsn, $user, $password);

    $sth = $dbh->prepare("UPDATE dive_users_data SET `status`=:status WHERE `user_id`=:user_id");
    return $sth->execute(['user_id' => $userId, 'status' => $status]);
}

/**
 * @param $photo array
 * @param $userId int
 * @return bool|void
 */
function set_photo($photo, $userId){
    if (empty($photo['name'])){
        return false;
    }
    $uploaddir = '/var/www/html/dive/';
    $dbDir = 'photo/'.time(). basename($photo['name']);

    if (move_uploaded_file($photo['tmp_name'], $dbDir)) {
        $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
        $user = 'magento';
        $password = 'magento';

        $dbh = new PDO($dsn, $user, $password);

        $sth = $dbh->prepare("UPDATE dive_users_data SET `photo`=:photo WHERE `user_id`=:user_id");
        return $sth->execute(['user_id' => $userId, 'photo' => $dbDir]);
    }
}

/**
 * @param $userId int
 * @return bool
 */
function is_admin($userId){
    $userData = get_user_info($userId);
    return $userData['role'] == 'admin';
}

/**
 * @param $userId int
 * @return bool
 */
function is_author($userId){
    return $userId == $_SESSION['user'];
}

/**
 * @param $user_id int
 * @param $email string
 * @param $password string
 * @return bool
 */
function edit_credentianals($user_id, $email, $password){
    if (empty($user_id) || empty($email) || empty($password)){
        return false;
    }
    $userArr = get_user_by_email($email);
    if (empty($userArr) || $userArr['id'] == $user_id) {
        /* Подключение к базе данных MySQL с помощью вызова драйвера */
        $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
        $user = 'magento';
        $password = 'magento';
        $dbh = new PDO($dsn, $user, $password);
        $sth = $dbh->prepare("UPDATE dive_users SET `email`=:email, `password`=:password WHERE `id`=:user_id");
        return $sth->execute(['email' => $email, 'password' => password_hash($password, PASSWORD_DEFAULT), 'user_id' => $user_id]);
    }
    return false;
}

/**
 * @param $user_id int
 * @return void
 */
function delete ($user_id){
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';
    $dbh = new PDO($dsn, $user, $password);
    $sth = $dbh->prepare("DELETE FROM dive_users WHERE `id`=:user_id");
    $sth->execute(['user_id' => $user_id]);
    $sth = $dbh->prepare("DELETE FROM dive_users_data WHERE `user_id`=:user_id");
    $sth->execute(['user_id' => $user_id]);
}

/**
 * @param $userID int
 * @return string | false
 */
function get_photo($userID){
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);

    $sth = $dbh->prepare("SELECT photo FROM dive_users_data WHERE `user_id`=?");
    $sth->execute([$userID]);
    $userPhotoArr = $sth->fetch(PDO::FETCH_ASSOC);

    if (empty($userPhotoArr['photo'])) {
        return false;
    } else {
        return $userPhotoArr['photo'];
    }
}

function remove_file($file){
    $uploaddir = '/var/www/html/dive/';
    unlink($uploaddir.$file);
}