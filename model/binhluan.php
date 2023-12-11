<?php

function danhsach_binhluan()
{
    $sql = "SELECT binhluan.id, binhluan.noidung, sanpham.name, taikhoan.user, binhluan.ngaybinhluan FROM binhluan JOIN sanpham on sanpham.id = binhluan.idpro join taikhoan on taikhoan.id = binhluan.iduser order by binhluan.ngaybinhluan desc";
    $result = pdo_query($sql);
    return $result;
}

function one_binhluan($idbl)
{
    $sql = "SELECT binhluan.id, binhluan.noidung, sanpham.name, taikhoan.user, binhluan.ngaybinhluan FROM binhluan JOIN sanpham on sanpham.id = binhluan.idpro join taikhoan on taikhoan.id = binhluan.iduser where binhluan.id= $idbl";
    $result = pdo_query_one($sql);
    return $result;
}

function delete_binhluan($idbl)
{
    $sql = "DELETE FROM binhluan WHERE id =" . $idbl;
    pdo_execute($sql);
}

function edit_binhluan($id, $noidung, $user, $name, $ngaybinhluan)
{
    $sql = "UPDATE `binhluan` 
    JOIN taikhoan ON binhluan.iduser = taikhoan.id
    JOIN sanpham ON binhluan.idpro = sanpham.id
    SET binhluan.noidung = '$noidung',
        taikhoan.user = '$user',
        sanpham.name = '$name',
        binhluan.ngaybinhluan = '$ngaybinhluan'
    WHERE binhluan.id = $id";
    pdo_execute($sql);
}

function add_binhluan($noidung, $iduser, $idpro, $datetime)
{
    $sql = "INSERT INTO binhluan(`noidung`, `iduser`,`idpro`, `ngaybinhluan`) VALUES ('$noidung', '$iduser','$idpro','$datetime')";
    pdo_execute($sql);
}

function load_binhluan($idpro)
{
    $sql = "SELECT binhluan.*,
    sanpham.name AS ten_sp ,
    taikhoan.user AS user
       FROM binhluan 
         JOIN sanpham on sanpham.id = binhluan.idpro 
         join taikhoan on taikhoan.id = binhluan.iduser 
         where binhluan.idpro = '" . $idpro . "' order by binhluan.id desc";

    $result = pdo_query($sql);
    return $result;
}
function so_bl(){
    $sql = "SELECT COUNT(id) AS so_bl FROM binhluan;";
    $result = pdo_query($sql);
    return $result;
}
