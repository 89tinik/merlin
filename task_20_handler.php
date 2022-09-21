<?php
if (!empty($_FILES)){
    $uploaddir = '/var/www/html/';
    $execArr = [];
    foreach ($_FILES['image']['name'] as $k => $name){
        $dbDir = 'uploads/'.uniqid(). basename($name);

        if (move_uploaded_file($_FILES['image']['tmp_name'][$k], $dbDir)) {
            $execArr[] = $dbDir;
        }
    }
    $dsn = 'mysql:dbname=magento;host=db;charset=utf8';
    $user = 'magento';
    $password = 'magento';

    $dbh = new PDO($dsn, $user, $password);
    $sql = "INSERT INTO images (image) VALUES " . implode(',', array_fill(0, count($execArr), '(?)'));
    $sth = $dbh->prepare($sql);
    $sth->execute($execArr);
}



header("Location: /task_20.php");