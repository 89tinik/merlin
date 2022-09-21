<?php
session_start();
if (isset($_POST['count'])) {
    $_SESSION['count'] ++;
}
header("Location: /task_15.php");