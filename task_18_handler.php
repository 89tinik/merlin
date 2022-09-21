<?php
$uploaddir = '/var/www/html/';
$dbDir = 'uploads/'.time(). basename($_FILES['image']['name']);

if (move_uploaded_file($_FILES['image']['tmp_name'], $dbDir)) {
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);
    $sth = $dbh->prepare("INSERT INTO images (image) VALUES (:image)");
    $sth->execute(['image'=>$dbDir]);
}


header("Location: /task_18.php");