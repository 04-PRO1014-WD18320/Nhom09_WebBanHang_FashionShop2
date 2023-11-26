<?php


function count_sp_add($iduser)
{
    $sql = "SELECT 
                cart.id AS id_cart, 
                cart.id_user, 
                COUNT(cart.id_user) AS so_sp, 
                cart.soluong AS so_luong, 
                bienthe.id_sp AS id_bienthe, 
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
function insetr_donhang($id_user, $address, $sdt, $email, $tong){
    $date = date('Y-m-d');
    $pthuc_tt = 'Trả tiền khi nhận hàng';
    $status = 'Chờ xác nhận';
    $sql = "INSERT INTO donhang (id_user, address, sdt, email, phuongthuctt, ngay_dat_hang, tong, status)
    VALUES ('$id_user', '$address', '$sdt', '$email', '$pthuc_tt', '$date' , '$tong', '$status');";
    pdo_execute($sql);
}
function loadone_donhang_new(){
    $sql = "SELECT * FROM donhang ORDER BY id DESC LIMIT 0,1";
    $result = pdo_query_one($sql);
    return $result;
}
function insert_ct_donhang($id_donhang, $id_bienthe, $so_luong, $price, $name){
    $date = date('Y-m-d');
    $sql = "INSERT INTO chitiet_donhang (id_donhang, id_bt_sanpham, so_luong, gia, tensp, ngay_mua)
    VALUES ('$id_donhang', '$id_bienthe', '$so_luong', '$price', '$name', '$date');";
    pdo_execute($sql);
}
function delete_sp_buy($iduser){
    $sql = "DELETE FROM cart WHERE id_user = $iduser";
    pdo_execute($sql);
    header('location:?act=hoanthanh_tt');
}
