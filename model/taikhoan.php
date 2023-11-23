<?php
function insert_taikhoan($email, $user, $pass)
{
    $sql = "INSERT INTO `taikhoan` ( `user`, `pass`, `email` ) 
        VALUES ( '$user', '$pass', '$email'); ";
    pdo_execute($sql);
}
function dangnhap($user, $pass)
{
    $sql = "SELECT * FROM taikhoan WHERE user = '$user' AND pass = '$pass' ";
    
    $taikhoan = pdo_query_one($sql);
    if ($taikhoan != false) {
        $_SESSION['user'] = $taikhoan['user'];
        $_SESSION['iduser'] = $taikhoan['id'];
        $_SESSION['role'] = $taikhoan['role'];
        header('location:index.php');
    } else {
        return "thông tin tài khoản sai";
    }
}
function dangxuat()
{
    if (isset($_SESSION['user'])) {
        unset($_SESSION['user']);
        unset($_SESSION['iduser']);
        unset($_SESSION['role']);
        header('location:index.php');
    }
}
//Hàm xử lý đăng ký tài khoản ở dao khachhang.php

function check_user($user, $pass)
{
    $sql = "SELECT * FROM taikhoan WHERE user = '".$user."' AND pass = '".$pass."' ";
    $result = pdo_query_one($sql);
    return $result;

}

function edit_tk($id, $user, $pass, $email, $address, $tel)
{
    $sql = "UPDATE `taikhoan` SET `user`='$user',`pass` = '$pass' ,`email`='$email',`address`='$address',`tel`='$tel' WHERE id = $id";
    pdo_execute($sql);
    
}

function check_email($email) {
    $sql = "SELECT * FROM taikhoan WHERE email = '".$email."' ";
    $result = pdo_query_one($sql);
    return $result;
}
