<?php  
    function danhsach_khachhang() {
        $sql = "SELECT * FROM taikhoan ";
        $result = pdo_query($sql);
        return $result;
    }

    function one_khachhang($idkh) {
        $sql = "SELECT * from taikhoan where id = $idkh";
        $result = pdo_query_one($sql);
        return $result;

    }


    function add_khachhang($tenkh, $pass, $email, $address, $tel, $role){
        $sql = "INSERT INTO taikhoan(`user`, `pass`,`email`, `address`, `tel`, `role`) VALUES ('$tenkh', '$pass', '$email', '$address', '$tel', '$role') ";
        pdo_execute($sql);
    }

    function delete_khachhang($idkh){
        $sql = "DELETE FROM taikhoan  WHERE id =" . $idkh;
        pdo_execute($sql);
        header("location: ?act=dskh");
    }

   
function edit_khachhang($idkh, $tenkh, $pass, $email, $address, $tel, $role)
{
    $sql = "UPDATE `taikhoan` SET `user`='$tenkh',`pass` = '$pass' ,`email`='$email',`address`='$address',`tel`='$tel',`role`='$role' WHERE id = $idkh";
    pdo_execute($sql);
    
}
