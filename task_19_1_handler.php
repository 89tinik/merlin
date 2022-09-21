<?php
if (!empty($_GET['id'])){
    /* Подключение к базе данных MySQL с помощью вызова драйвера */
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);

    $sth = $dbh->prepare("SELECT * FROM images WHERE `id`=?");
    $sth->execute([$_GET['id']]);

    if(!empty($image = $sth->fetch(PDO::FETCH_ASSOC))){
        $url = '/var/www/html/'.$image['image'];
        $sth = $dbh->prepare("DELETE FROM images WHERE `id`=?");
        if ($sth->execute([$_GET['id']])){
            unlink($url);
        }
    }
}

header("Location: /task_19.php");