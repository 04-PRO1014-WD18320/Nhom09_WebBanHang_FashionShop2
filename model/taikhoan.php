<?php

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
