<?php 
    session_start();
    if (isset($_SESSION['username'])) {
        header("Location: index.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <link rel="icon" href="bravo-logo.png">
    <title>Login</title>
</head>

<body>
    <section class="banner">
        <div class="wrapper">
            <form action="" method="POST" class="login-email">
            <p class="title">Login</p>
            <div class="field">
                <p class = "mail">Masukkan Username : </p>
                <input type="text" placeholder="Username" name="username" value="" required class="mailed">
            </div>
            <div class="field">
                <p class = "pass">Masukkan Password : </p>
                <input type="password" placeholder="Password" name="password" value="" required class="passed">
            </div> 
            <div class="field" align ="center"> 
            <button name="submit" class="button">Login</button>
        </div>
    </section>

    <?php
        $username = array('admin' , 'user');
        $password = array('123', '456');
        if (isset($_POST['submit'])) {
            if ($_POST['username'] == $username[0] && $_POST['password'] == $password[0]){
                $_SESSION["username"] = $username[0];
                $_SESSION["priv"] = "admin";
                header("Location: admin.php");
            }
            elseif ($_POST['username'] == $username[1] && $_POST['password'] == $password[1]){
                $_SESSION["username"] = $username[1]; 
                $_SESSION["priv"] = "user";
                header("Location: index.php");
            }
            else {
                echo("<p class='login-register-text'>email atau password anda salah.</p>");
            }
        }
        elseif (isset($_SESSION['username'])){
            header("Location: index.php");
        }
    ?> 

</body>

</html>