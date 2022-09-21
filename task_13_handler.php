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

    if(!empty($sth->fetch(PDO::FETCH_ASSOC))){
        $_SESSION['error']='Этот эл адрес уже занят другим пользователем';
    } else {
        $sth = $dbh->prepare("INSERT INTO t13_users (`email`,`password`) VALUES (:email,:password)");
        if($sth->execute(['email'=>$_POST['email'], 'password'=>password_hash($_POST['password'], PASSWORD_DEFAULT)])){
            $_SESSION['success']='Вы успешно зарегистрировались';
        }
    }
}

header("Location: /task_13.php");