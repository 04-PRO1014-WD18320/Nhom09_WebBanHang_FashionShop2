<?php
function danhsach_sanpham()
{
    $sql = "SELECT * FROM sanpham ";

    $result = pdo_query($sql);
    return $result;
}
function danhsach_sanphamdm($iddm)

{
    $sql = "SELECT * FROM sanpham  WHERE iddm = $iddm LIMIT 0,5";
    $result = pdo_query($sql);
    return $result;
}

function loadall_sanpham($keyw = "", $iddm = 0)
{
    $sql = "SELECT sanpham.id,
                   sanpham.name,
                   bien_the.id AS id_bienthe,
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
    $sql .= " ORDER BY sanpham.id DESC";
    $listsanpham = pdo_query($sql);
    return  $listsanpham;
}
function load_sp_insert()
{
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
function insert_sanpham($name, $img_main, $price_niemyet, $price_sale, $mota, $iddm)
{
    $sql = "INSERT INTO sanpham (name,img, price_niemyet, price_sale, mota, iddm)
    VALUES ('$name','$img_main','$price_niemyet', '$price_sale', '$mota', '$iddm');";
    pdo_execute($sql);
}
function insert_bien_the($idsp, $idms, $idkt, $soluong)
{
    $sql = "INSERT INTO bien_the (id_sp,id_mau_sac, id_kich_thuoc, so_luong)
    VALUES ('$idsp','$idms','$idkt', '$soluong');";
    pdo_execute($sql);
    // header('location:index.php');
}
function insert_hinhanh($url, $idsp)
{
    $sql = "INSERT INTO hinhanh (url, id_sp)
    VALUES ('$url','$idsp');";
    pdo_execute($sql);
}

function one_sanpham($idsp)
{
    $sql = "SELECT sanpham.id,
                    sanpham.name,
                    sanpham.img,
                    sanpham.price_niemyet,
                    sanpham.price_sale,
                    sanpham.mota,
                    bien_the.so_luong,
                    mau_sac.value AS mau_sac,
                    kich_thuoc.value AS kich_thuoc,
                    sanpham.luotxem, 
                    danhmuc.name AS ten_dm,
                    sanpham.iddm ,
                    bien_the.id AS id_bt_sanpham

                FROM sanpham
                JOIN bien_the ON sanpham.id = bien_the.id_sp
                JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
                JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
                JOIN danhmuc ON sanpham.iddm = danhmuc.id
                JOIN hinhanh ON sanpham.id = hinhanh.id_sp
                -- ORDER BY sanpham.id 
                WHERE sanpham.id=" . $idsp;
    $result = pdo_query_one($sql);
    return $result;
}

function loadone_sanpham($idsp)
{
    $sql = "SELECT sanpham.id AS id,
                sanpham.name,
                sanpham.img,
                sanpham.mota,
                sanpham.price_niemyet,
                sanpham.price_sale,
                bien_the.so_luong,
                mau_sac.value AS mau_sac,
                kich_thuoc.value AS kich_thuoc,
                sanpham.luotxem, 
                sanpham.iddm,
                COUNT(sanpham.name) AS so_bien_the
            FROM sanpham
            JOIN bien_the ON sanpham.id = bien_the.id_sp
            JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
            JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
            -- ORDER BY sanpham.id 
            WHERE sanpham.id =$idsp";
    $result = pdo_query_one($sql);
    return $result;
}
function load_anh_phu($idsp)
{
    $sql = "SELECT * FROM hinhanh  WHERE id_sp = $idsp";
    $result = pdo_query($sql);
    return $result;
}
function bienThe_update($idsp)
{
    $sql = "SELECT  
    bien_the.id_sp,bien_the.id_mau_sac, mau_sac.value AS mau_sac,
    bien_the.id_kich_thuoc,kich_thuoc.value as kich_thuoc,
    bien_the.so_luong
    
    FROM bien_the 
    JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
    JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
    -- ORDER BY id_sp;
    WHERE bien_the.id_sp = $idsp;
    ";
    $result = pdo_query($sql);
    return $result;
}
function so_bt_theo_idsp($idsp){
    $sql = "SELECT  
    bien_the.id_sp,bien_the.id_mau_sac, mau_sac.value AS mau_sac,
    COUNT(bien_the.id_sp) AS so_bt,
    bien_the.id_kich_thuoc,kich_thuoc.value as kich_thuoc,
    bien_the.so_luong
    
    FROM bien_the 
    JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
    JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
    
    WHERE bien_the.id_sp = $idsp;";
    $result = pdo_query($sql);
    return $result;
}
function update_sanpham($id, $iddm, $name, $price_niemyet, $price_sale, $mota, $img_main)
{
    if ($img_main != "") {
        // $sql="update sanpham set iddm='".$iddm."',name='".$tensp."',price='".$giasp."',mota='".$mota."',img='".$hinh."' where id=".$id;
        $sql =  "UPDATE `sanpham` SET `name` = '{$name}', `img` = '{$img_main}', `price_niemyet` = '{$price_niemyet}', `price_sale` = '{$price_sale}', `mota` = '{$mota}', `iddm` = '{$iddm}' WHERE `sanpham`.`id` = $id";
    } else {
        //  $sql="update sanpham set iddm='".$iddm."',name='".$name."',price='".$giasp."',mota='".$mota."' where id=".$id;
        $sql =  "UPDATE `sanpham` SET `name` = '{$name}', `price_niemyet` = '{$price_niemyet}', `price_sale` = '{$price_sale}', `mota` = '{$mota}', `iddm` = '{$iddm}' WHERE `sanpham`.`id` = $id";
    }
    pdo_execute($sql);
    // header('location:index.php?act=dssanpham');
}

function hard_delete_hinhanh($id)
{
    $sql = "DELETE FROM hinhanh WHERE id_sp=" . $id;
    pdo_execute($sql);
}
function hard_delete_bien_the($id)
{
    $sql = "DELETE FROM bien_the WHERE id_sp=" . $id;
    pdo_execute($sql);
}
function hard_delete_bthe($id)
{
    $sql = "DELETE FROM bien_the WHERE id=" . $id;
    pdo_execute($sql);
}
function hard_delete_sanpham($id)
{
    hard_delete_hinhanh($id);
    hard_delete_bien_the($id);
    $sql = "DELETE FROM sanpham WHERE id=" . $id;
    pdo_execute($sql);
}
function delete_bienthe($idsp){
    $sql = "DELETE FROM bien_the WHERE id_sp=" . $idsp;
    pdo_execute($sql);
}
function update_bienthe($id, $id_mau_sac, $id_kich_thuoc, $so_luong)
{
    insert_bien_the($id, $id_mau_sac, $id_kich_thuoc, $so_luong);
    // header('location:index.php?act=dssanpham');
}
// function update_hinhanh($id,$img_phu){
//     $sql=  "UPDATE `hinhanh` SET `url` = '{$img_phu}' WHERE `hinhanh`.`id_sp` = $id";

//     pdo_execute($sql);
//     // header('location:index.php?act=dssanpham');
// }

//Sơn

// function load_mausac($idsp)
// {
//     $sql = "SELECT mau_sac.* 
//             FROM mau_sac
//             JOIN bien_the ON mau_sac.id = bien_the.id_mau_sac
//             WHERE bien_the.id_sp = " . $idsp;
//     $result = pdo_query($sql);
//     return $result;
// }
// function load_kichthuoc($idsp)
// {
//     $sql = "SELECT kich_thuoc.* 
//             FROM kich_thuoc
//             JOIN bien_the ON kich_thuoc.id = bien_the.id_kich_thuoc
//             WHERE bien_the.id_sp = " . $idsp;
//     $result = pdo_query($sql);
//     return $result;
// }

function load_id_bienthe($idsp)
{
    $sql = "SELECT 
        sanpham.id AS id_sp,
        bien_the.id AS id_bt_sanpham,
        bien_the.id_mau_sac AS id_mau_sac,
        bien_the.id_kich_thuoc AS id_kich_thuoc,
        bien_the.so_luong AS so_luong,
        kich_thuoc.value AS ten_size,
        mau_sac.value AS ten_mau 
    FROM `sanpham`
    JOIN bien_the ON bien_the.id_sp = sanpham.id
    JOIN kich_thuoc ON kich_thuoc.id = bien_the.id_kich_thuoc
    JOIN mau_sac ON mau_sac.id = bien_the.id_mau_sac
    WHERE sanpham.id = " . $idsp;
    $result = pdo_query($sql);
    return $result;
}
function load_sl_bienthe($id_bt_sanpham){
    $sql = "SELECT * FROM bien_the where id =" . $id_bt_sanpham;
    $result = pdo_query($sql);
    return $result;
}
function load_anhcon($idsp)
{
    $sql = "SELECT * FROM hinhanh where id_sp =" . $idsp;
    $result = pdo_query($sql);
    return $result;
}

function sanpham_tuongtu($idsp)
{
    $sanpham = one_sanpham($idsp);
    $iddm = $sanpham['iddm'];
    $sql = "SELECT * FROM sanpham WHERE sanpham.iddm = $iddm AND sanpham.id <> $idsp limit 0,5";
    $result = pdo_query($sql);
    return $result;
}


function one_id_danhmuc()
{
    $sql = "SELECT * FROM danhmuc";
    $result = pdo_query($sql);
    return $result;
}


function top5_sanpham()
{
    $sql = "select * from sanpham order by luotxem desc limit 0,5";
    $result = pdo_query($sql);
    return $result;
}


function tim_kiem_san_pham($keyword)
{

    $sql = "SELECT * FROM sanpham WHERE name LIKE '%" . $keyword . "%' ";
    $result = pdo_query($sql);
    return $result;
}




function tangluotxem($idsp)
{
    $sanpham = loadone_sanpham($idsp);
    $luotxem = $sanpham['luotxem'] + 1;
    $sql = "update sanpham set luotxem = $luotxem where id = $idsp";
    pdo_execute($sql);
}
function so_lx(){
    $sql = "SELECT SUM(luotxem) AS so_lx FROM sanpham;";
    $result = pdo_query($sql);
    return $result;
}