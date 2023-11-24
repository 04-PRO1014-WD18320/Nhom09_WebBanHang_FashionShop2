<?php

function danhsach_khachhang()
{
    $sql = "SELECT * FROM taikhoan ORDER BY CASE WHEN role = 'admin' THEN 0 ELSE 1 END, role ASC";
    $result = pdo_query($sql);
    return $result;
}

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
    $sql = "SELECT * FROM taikhoan ORDER BY CASE WHEN role = 'admin' THEN 0 ELSE 1 END, role ASC";
    $result = pdo_query($sql);
    return $result;
}

function one_khachhang($idkh)
{
    $sql = "SELECT * from taikhoan where id = $idkh";
    $result = pdo_query_one($sql);
    return $result;
}

function add_khachhang($fullname, $user, $pass, $email,$tel, $address,  $role)
{
    $sql = "INSERT INTO taikhoan(`user`,`fullname`, `pass`,`email`, `address`, `tel`, `role`) VALUES ('$user','$fullname', '$pass', '$email', '$address', '$tel', '$role') ";
    pdo_execute($sql);
}

function delete_khachhang($idkh)
{
    $sql = "DELETE FROM taikhoan WHERE id =" . $idkh;
    pdo_execute($sql);
    
}


function edit_khachhang($idkh, $role)
{
    $sql = "UPDATE `taikhoan` SET `role`='$role' WHERE id = $idkh";
    pdo_execute($sql);
}

//Hàm xử lý đăng ký tài khoản ở dao khachhang.php


function edit_tk($id, $user, $pass, $email, $address, $tel)
{
    $sql = "UPDATE `taikhoan` SET `user`='$user',`pass` = '$pass' ,`email`='$email',`address`='$address',`tel`='$tel' WHERE id = $id";
    pdo_execute($sql);
}


