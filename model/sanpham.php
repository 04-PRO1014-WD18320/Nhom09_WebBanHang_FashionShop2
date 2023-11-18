<?php

function danhsach_sanpham()
{
    $sql = "SELECT * FROM sanpham ";

    $result = pdo_query($sql);
    return $result;
}
function one_sanpham($idsp)
{
    $sql = "SELECT * FROM sanpham where id= $idsp";
    $result = pdo_query_one($sql);
    return $result;
}
function one_id_danhmuc()
{
    $sql = "SELECT * FROM danhmuc";
    $result = pdo_query($sql);
    return $result;
}
function add_sanpham($tensp, $photo, $mota, $price, $discount, $luotxem, $iddm)
{
    $sql = "INSERT INTO sanpham(`name`, `price`,`discount`, `img`, `mota`, `luotxem`, `iddm`) VALUES ('$tensp', '$price','$discount', '$photo', '$mota', '$luotxem', '$iddm')";
    pdo_execute($sql);
}

function get_iddanhmuc()
{
    $sql = "SELECT * FROM danhmuc";
    $result = pdo_query($sql);
    return $result;
}

function delete_sanpham($idsp)
{
    $data = one_sanpham($idsp);
    unlink("../uploads/{$data['img']}");
    $sql = "DELETE FROM sanpham WHERE id =" . $idsp;
    pdo_execute($sql);
    header("location: ?act=dssp");
}

function edit_sanpham($idsp, $name, $photo, $price, $discount, $mota, $luotxem, $iddm)
{

    if ($photo == "") {
        $sql = "UPDATE `sanpham` SET `name`='$name',`price`='$price',`discount` = '$discount',`mota`='$mota',`luotxem`='$luotxem',`iddm`='$iddm' WHERE id = $idsp";
    } else {
        $sql = "UPDATE `sanpham` SET `name`='$name',`price`='$price',`discount` = '$discount',`img` = '$photo' ,`mota`='$mota',`luotxem`='$luotxem',`iddm`='$iddm' WHERE id = $idsp";
    }

    pdo_execute($sql);
}

function top10_sanpham()
{
    $sql = "select * from sanpham order by luotxem desc limit 0,10";
    $result = pdo_query($sql);
    return $result;
}

function tim_sanpham_theodm($iddm)
{
    $sql = 'SELECT * FROM sanpham where iddm = ' . $iddm;
    $result = pdo_query($sql);
    return $result;
}

function tim_kiem_san_pham($keyword) {

    $sql = "SELECT * FROM sanpham WHERE name LIKE '%" . $keyword . "%' ";
    $result = pdo_query($sql);
    return $result;
}



function xemthem_sanpham($idsp)
{
    $sanpham = one_sanpham($idsp);
    $iddm = $sanpham['iddm'];
    $sql = "SELECT * FROM sanpham WHERE iddm = $iddm AND id <> $idsp limit 0,5";

    $result = pdo_query($sql);
    return $result;
}

function tangluotxem($idsp)
{
    $sanpham = one_sanpham($idsp);
    $luotxem = $sanpham['luotxem'] + 1;
    $sql = "update sanpham set luotxem = $luotxem where id = $idsp";
    pdo_execute($sql);
}
