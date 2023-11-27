<?php
function danhsach_danhmuc()
{
    $sql = "SELECT * FROM danhmuc";
    $result = pdo_query($sql);
    return $result;
}
function tim_sanpham_theodm($iddm)
{
    $sql = 'SELECT * FROM sanpham where iddm = ' . $iddm;
    $result = pdo_query($sql);
    return $result;
}
function tim_sanpham_theo_big_dm($id_b_dm)
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
                    sanpham.iddm,
                    danhmuc.id_dm as id_b_dm
                FROM sanpham
                JOIN bien_the ON sanpham.id = bien_the.id_sp
                JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
                JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id 
                JOIN danhmuc ON danhmuc.id = sanpham.iddm

                where danhmuc.id_dm = '".$id_b_dm."'GROUP BY sanpham.name";
                 
    $result = pdo_query($sql);
    return $result;
}
function danhsach_danhmuc_ao($id_dm)
{
    $sql = "SELECT * FROM danhmuc WHERE id_dm = $id_dm";
    $result = pdo_query($sql);
    return $result;
}
function one_danhmuc($iddm)
{
    $sql = "SELECT * from danhmuc where id = $iddm";
    $result = pdo_query_one($sql);
    return $result;
}


function add_danhmuc($name, $id_dm)
{
    $sql = "INSERT INTO danhmuc (name, id_dm) VALUES ('$name', '$id_dm')";
    pdo_execute($sql);
}
function load_one_dm($iddm)
{
    $sql = "SELECT * FROM danhmuc WHERE id = $iddm";
    $result = pdo_query_one($sql);
    return $result;
}
function update_danhmuc($iddm, $name, $id_Big_dm)
{
    $sql =  "UPDATE `danhmuc` 
        SET `name` = '{$name}', `id_dm` = '{$id_Big_dm}' 
        WHERE `danhmuc`.`id` = $iddm";
    pdo_execute($sql);
}
function hard_delete_danhmuc($iddm)
{
    $sql = "DELETE FROM danhmuc WHERE id =" . $iddm;
    pdo_execute($sql);
}
function delete_danhmuc($iddm)
{
    $sql = "DELETE FROM danhmuc WHERE id =" . $iddm;
    pdo_execute($sql);
    header("location: ?act=dsdm");
}

function edit_danhmuc($iddm, $name)
{
    $sql = "UPDATE danhmuc SET name = '$name' WHERE id = $iddm";
    pdo_execute($sql);
    header("location: ?act=dsdm");
}
