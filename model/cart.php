<?php
function add_cart($id_user, $id_bt_sanpham, $so_luong)
{
    $sql = "INSERT INTO cart (id_user, id_bt_sanpham, soluong) VALUES ('$id_user', '$id_bt_sanpham', '$so_luong')";
    pdo_execute($sql);
    header('location:?act=cart&iduser='.$id_user.'');
}
function loadall_cart($iduser)
{
            $sql = "SELECT 
            cart.id AS id_cart,
            cart.id_user,
            cart.soluong AS so_luong,
            bienthe.id_sp,
            bienthe.id_mau_sac,
            bienthe.id_kich_thuoc,
            sanpham.id AS id_sp,
            sanpham.name AS ten_sp,
            sanpham.img AS img_sp,
            sanpham.price_sale,
            mau_sac.value AS mau_sac,
            kich_thuoc.value AS kich_thuoc
        FROM cart 
        JOIN bien_the AS bienthe ON bienthe.id = cart.id_bt_sanpham
        JOIN sanpham ON sanpham.id = bienthe.id_sp
        JOIN mau_sac ON mau_sac.id = bienthe.id_mau_sac
        JOIN kich_thuoc ON kich_thuoc.id = bienthe.id_kich_thuoc
        
        WHERE cart.id_user = $iduser;
    ";
    $result = pdo_query($sql);
    return $result;
}
function delete_cart($id_cart){
    $sql = "DELETE FROM cart WHERE id =" . $id_cart;
    pdo_execute($sql);
    // header("location: ?act=cart");
}