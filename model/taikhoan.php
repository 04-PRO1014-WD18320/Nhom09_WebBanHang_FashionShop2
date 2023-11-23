<?php

function danhsach_khachhang()
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
    // header("location: ?act=dskh");
}


function edit_khachhang($idkh, $tenkh, $pass, $email, $address, $tel, $role)
{
    $sql = "UPDATE `taikhoan` SET `user`='$tenkh',`pass` = '$pass' ,`email`='$email',`address`='$address',`tel`='$tel',`role`='$role' WHERE id = $idkh";
    pdo_execute($sql);
}

//Hàm xử lý đăng ký tài khoản ở dao khachhang.php
function check_user($user, $pass)
{
    $sql = "SELECT * FROM taikhoan WHERE user = '" . $user . "' AND pass = '" . $pass . "' ";
    $result = pdo_query_one($sql);
    return $result;
}

function edit_tk($id, $user, $pass, $email, $address, $tel)
{
    $sql = "UPDATE `taikhoan` SET `user`='$user',`pass` = '$pass' ,`email`='$email',`address`='$address',`tel`='$tel' WHERE id = $id";
    pdo_execute($sql);
}

function check_email($email)
{
    $sql = "SELECT * FROM taikhoan WHERE email = '" . $email . "' ";
    $result = pdo_query_one($sql);
    return $result;
}
