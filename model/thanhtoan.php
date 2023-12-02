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
function insetr_donhang($id_user, $address, $sdt, $email, $tong, $name)
{
    $date = date('Y-m-d');
    $pthuc_tt = 'Trả tiền khi nhận hàng';
    $status = 'Chờ xác nhận';
    $sql = "INSERT INTO donhang (id_user, address, sdt, email, phuongthuctt, ngay_dat_hang, tong, status, receive_name)
    VALUES ('$id_user', '$address', '$sdt', '$email', '$pthuc_tt', '$date' , '$tong', '$status', '$name');";
    pdo_execute($sql);
}
function loadone_donhang_new()
{
    $sql = "SELECT * FROM donhang ORDER BY id DESC LIMIT 0,1";
    $result = pdo_query_one($sql);
    return $result;
}
function insert_ct_donhang($id_donhang, $id_bienthe, $so_luong, $price, $name)
{
    $date = date('Y-m-d');
    $sql = "INSERT INTO chitiet_donhang (id_donhang, id_bt_sanpham, so_luong, gia, tensp, ngay_mua)
    VALUES ('$id_donhang', '$id_bienthe', '$so_luong', '$price', '$name', '$date');";
    pdo_execute($sql);
}
function delete_sp_buy($iduser)
{
    $sql = "DELETE FROM cart WHERE id_user = $iduser";
    pdo_execute($sql);
    header('location:?act=hoanthanh_tt');
}
function loadall_ct_donhang($iduser)
{
    $sql = "SELECT 
    donhang.id_user,
    chitiet_donhang.tensp,
    sanpham.img,
    sanpham.price_niemyet,
    chitiet_donhang.gia,
    chitiet_donhang.ngay_mua,
    chitiet_donhang.so_luong,
    chitiet_donhang.id_bt_sanpham,
    chitiet_donhang.id_donhang,
    mau_sac.value AS mau_sac,
    kich_thuoc.value AS  kich_thuoc,
    donhang.status
    FROM  chitiet_donhang
    JOIN donhang ON donhang.id = chitiet_donhang.id_donhang 
    JOIN taikhoan ON donhang.id_user = taikhoan.id 
    JOIN bien_the ON chitiet_donhang.id_bt_sanpham = bien_the.id
    JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
    JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
    JOIN sanpham ON sanpham.id = bien_the.id_sp
    
    WHERE donhang.id_user = $iduser
    ORDER BY chitiet_donhang.id_donhang DESC;";

    $result = pdo_query($sql);
    return $result;
}
function loadall_donhang(){
    $sql = "SELECT donhang.id,
            donhang.id_user,
            donhang.receive_name,
            taikhoan.user,
            donhang.address,
            donhang.sdt,
            donhang.email,
            donhang.ngay_dat_hang,
            donhang.tong,
            donhang.status,
            chitiet_donhang.id_donhang,
            COUNT(chitiet_donhang.id_donhang) AS so_sp
            
            FROM donhang JOIN chitiet_donhang ON 
            
            donhang.id = chitiet_donhang.id_donhang
            JOIN taikhoan on donhang.id_user = taikhoan.id
            
            GROUP BY chitiet_donhang.id_donhang
            ORDER BY donhang.id DESC;";

    $result = pdo_query($sql);
    return $result;
}
function load_ct_donhang($iddh){
    $sql = "SELECT chitiet_donhang.id,
    chitiet_donhang.id_bt_sanpham,
    sanpham.img,
    chitiet_donhang.tensp,
    mau_sac.value AS mau_sac,
    kich_thuoc.value AS kich_thuoc,
    chitiet_donhang.so_luong,
    chitiet_donhang.gia,
    chitiet_donhang.ngay_mua
    
    FROM chitiet_donhang JOIN donhang ON
    chitiet_donhang.id_donhang = donhang.id
    JOIN bien_the ON
    chitiet_donhang.id_bt_sanpham = bien_the.id
    JOIN sanpham ON 
    bien_the.id_sp = sanpham.id
    JOIN mau_sac ON
    bien_the.id_mau_sac = mau_sac.id
    JOIN kich_thuoc ON
    bien_the.id_kich_thuoc = kich_thuoc.id
    WHERE chitiet_donhang.id_donhang = $iddh;";

    $result = pdo_query($sql);
    return $result;
}
function loadone_donhang($iddh){
    $sql = "SELECT * FROM donhang WHERE id = $iddh";
    $result = pdo_query_one($sql);
    return $result;
}
function update_donhang($iddh, $status){
    $sql =  "UPDATE `donhang` SET `status` = '{$status}' WHERE `donhang`.`id` = $iddh";
    pdo_execute($sql);
    // header('location:index.php');
}
function loadall_ct_donhang_cho_xn($iduser)
{
    $sql = "SELECT 
    donhang.id_user,
    chitiet_donhang.tensp,
    sanpham.img,
    sanpham.price_niemyet,
    chitiet_donhang.gia,
    chitiet_donhang.ngay_mua,
    chitiet_donhang.so_luong,
    chitiet_donhang.id_bt_sanpham,
    chitiet_donhang.id_donhang,
    mau_sac.value AS mau_sac,
    kich_thuoc.value AS  kich_thuoc,
    donhang.status
    FROM  chitiet_donhang
    JOIN donhang ON donhang.id = chitiet_donhang.id_donhang 
    JOIN taikhoan ON donhang.id_user = taikhoan.id 
    JOIN bien_the ON chitiet_donhang.id_bt_sanpham = bien_the.id
    JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
    JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
    JOIN sanpham ON sanpham.id = bien_the.id_sp
    
    WHERE donhang.id_user = $iduser AND donhang.status = 'Chờ xác nhận'
    ORDER BY chitiet_donhang.id_donhang DESC;";

    $result = pdo_query($sql);
    return $result;
}
function loadall_ct_donhang_da_xn($iduser)
{
    $sql = "SELECT 
    donhang.id_user,
    chitiet_donhang.tensp,
    sanpham.img,
    sanpham.price_niemyet,
    chitiet_donhang.gia,
    chitiet_donhang.ngay_mua,
    chitiet_donhang.so_luong,
    chitiet_donhang.id_bt_sanpham,
    chitiet_donhang.id_donhang,
    mau_sac.value AS mau_sac,
    kich_thuoc.value AS  kich_thuoc,
    donhang.status
    FROM  chitiet_donhang
    JOIN donhang ON donhang.id = chitiet_donhang.id_donhang 
    JOIN taikhoan ON donhang.id_user = taikhoan.id 
    JOIN bien_the ON chitiet_donhang.id_bt_sanpham = bien_the.id
    JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
    JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
    JOIN sanpham ON sanpham.id = bien_the.id_sp
    
    WHERE donhang.id_user = $iduser AND donhang.status = 'Đã xác nhận'
    ORDER BY chitiet_donhang.id_donhang DESC;";

    $result = pdo_query($sql);
    return $result;
}
function loadall_ct_donhang_dang_giao($iduser)
{
    $sql = "SELECT 
    donhang.id_user,
    chitiet_donhang.tensp,
    sanpham.img,
    sanpham.price_niemyet,
    chitiet_donhang.gia,
    chitiet_donhang.ngay_mua,
    chitiet_donhang.so_luong,
    chitiet_donhang.id_bt_sanpham,
    chitiet_donhang.id_donhang,
    mau_sac.value AS mau_sac,
    kich_thuoc.value AS  kich_thuoc,
    donhang.status
    FROM  chitiet_donhang
    JOIN donhang ON donhang.id = chitiet_donhang.id_donhang 
    JOIN taikhoan ON donhang.id_user = taikhoan.id 
    JOIN bien_the ON chitiet_donhang.id_bt_sanpham = bien_the.id
    JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
    JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
    JOIN sanpham ON sanpham.id = bien_the.id_sp
    
    WHERE donhang.id_user = $iduser AND donhang.status = 'Đang giao hàng'
    ORDER BY chitiet_donhang.id_donhang DESC;";

    $result = pdo_query($sql);
    return $result;
}