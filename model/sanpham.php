<?php

function danhsach_sanpham()
{
    $sql = "SELECT * FROM sanpham ";

    $result = pdo_query($sql);
    return $result;
}
function loadall_sanpham($keyw = "", $iddm = 0)
{
    $sql = "SELECT sanpham.id,
                   sanpham.name,
                   sanpham.img,
                   sanpham.price_niemyet,
                   sanpham.price_sale,
                   bien_the.so_luong,
                   mau_sac.value AS mau_sac,
                   kich_thuoc.value AS kich_thuoc,
                   sanpham.luotxem, 
                   sanpham.iddm
            FROM sanpham
            JOIN bien_the ON sanpham.id = bien_the.id_sp
            JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
            JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
            -- ORDER BY sanpham.id 
            WHERE 1";
    // where 1 tức là nó đúng
    if ($keyw != "") {
        $sql .= " AND sanpham.name like '%" . $keyw . "%'";
    }
    if ($iddm > 0) {
        $sql .= " AND sanpham.iddm ='" . $iddm . "'";
    }
    $sql .= " ORDER BY sanpham.id";
    $listsanpham = pdo_query($sql);
    return  $listsanpham;
}
function load_sp_insert(){
    $sql = "SELECT * FROM sanpham ORDER BY id DESC LIMIT 0,1";
    $result = pdo_query($sql);
    return $result;
}
function danhsach_mausac()
{
    $sql = "SELECT * FROM mau_sac ";

    $result = pdo_query($sql);
    return $result;
}
function danhsach_kichthuoc()
{
    $sql = "SELECT * FROM kich_thuoc ";

    $result = pdo_query($sql);
    return $result;
}
function insert_sanpham($name, $img_main, $price_niemyet, $price_sale, $mota, $iddm){
    $sql = "INSERT INTO sanpham (name,img, price_niemyet, price_sale, mota, iddm)
    VALUES ('$name','$img_main','$price_niemyet', '$price_sale', '$mota', '$iddm');";
    pdo_execute($sql);
}
function insert_bien_the($idsp, $idms, $idkt, $soluong){
    $sql = "INSERT INTO bien_the (id_sp,id_mau_sac, id_kich_thuoc, so_luong)
    VALUES ('$idsp','$idms','$idkt', '$soluong');";
    pdo_execute($sql);
}
function insert_hinhanh($url, $idsp){
    $sql = "INSERT INTO hinhanh (url, id_sp)
    VALUES ('$url','$idsp');";
    pdo_execute($sql);
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
