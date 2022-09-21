<?php
session_start();
if (!empty($_POST['email']) && !empty($_POST['password'])){
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);

    $sth = $dbh->prepare("SELECT * FROM t13_users WHERE `email`=?");
    $sth->execute([$_POST['email']]);

    if(empty($userData = $sth->fetch(PDO::FETCH_ASSOC))){
        $_SESSION['error']='Неверный логин или пароль';
    } else {

        if(password_verify($_POST['password'], $userData['password'])){
            $_SESSION['success']='Вы успешно авторизировались';
            $_SESSION['user']=$userData['email'];
        }else {
            $_SESSION['error']='Неверный логин или пароль1';
        }
    }
}

header("Location: /task_16.php");