<?php
session_start();
if (isset($_POST['simpleinput']) && !empty($_POST['simpleinput'])){ //обсудить не излишнее ли условие
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);

    $sth = $dbh->prepare("SELECT * FROM text WHERE `text`=?");
    $sth->execute([$_POST['simpleinput']]);

    if(!empty($sth->fetch(PDO::FETCH_ASSOC))){
        $_SESSION['error']='You should check in on some of those fields below.';
    } else {
        $sth = $dbh->prepare("INSERT INTO text (text) VALUES (?)");
        if($sth->execute([$_POST['simpleinput']])){
            $_SESSION['success']='success';
        }
    }



}
header("Location: /task_12.php");