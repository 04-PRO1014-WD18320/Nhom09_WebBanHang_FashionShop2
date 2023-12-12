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
    $date = date('Y-m-d H:i:s', strtotime('+6 hours'));
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
    $date = date('Y-m-d H:i:s', strtotime('+6 hours'));
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
function load_sanpham_mua_ngay($idbt)
{
    $sql = "SELECT sanpham.id AS id,
                    sanpham.name,
                    sanpham.img,
                    sanpham.price_sale,
                    mau_sac.value AS mau_sac,
                    kich_thuoc.value AS kich_thuoc
            FROM sanpham
            JOIN bien_the ON sanpham.id = bien_the.id_sp
            JOIN mau_sac ON bien_the.id_mau_sac = mau_sac.id
            JOIN kich_thuoc ON bien_the.id_kich_thuoc = kich_thuoc.id
            -- ORDER BY sanpham.id 
            WHERE bien_the.id =$idbt;";
    $result = pdo_query_one($sql);
    return $result;
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
function loadall_donhang()
{
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
function load_ct_donhang($iddh)
{
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
function loadone_donhang($iddh)
{
    $sql = "SELECT * FROM donhang WHERE id = $iddh";
    $result = pdo_query_one($sql);
    return $result;
}
function update_donhang($iddh, $status)
{
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
function loadall_ct_donhang_hoan_thanh($iduser)
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
    
    WHERE donhang.id_user = $iduser AND donhang.status = 'Hoàn thành'
    ORDER BY chitiet_donhang.id_donhang DESC;";

    $result = pdo_query($sql);
    return $result;
}
function loadall_ct_donhang_da_huy($iduser)
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
    
    WHERE donhang.id_user = $iduser AND donhang.status = 'Đã hủy'
    ORDER BY chitiet_donhang.id_donhang DESC;";

    $result = pdo_query($sql);
    return $result;
}
function huy_don($iddh)
{
    $sql = "UPDATE donhang SET status = 'Đã hủy'
    WHERE id = $iddh";
    pdo_execute($sql);
    //exec
}
function hoan_thanh($iddh)
{
    $sql = "UPDATE donhang SET status = 'Hoàn thành'
    WHERE id = $iddh";
    pdo_execute($sql);
    //exec
}
function update_donhang_new()
{
    if (isset($_SESSION['don_new'])) {
        $_SESSION['don_new'] += 1;
    }
}

function thanhtoanonline($tongdonhang)
{

    $vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
    $vnp_Returnurl = "https://localhost/vnpay_php/vnpay_return.php";
    $vnp_TmnCode = "ELVAQEWH"; //Mã website tại VNPAY 
    $vnp_HashSecret = "UMNOHDQWWDIRGSNATSWASPXTXOFSMHZR"; //Chuỗi bí mật

    $vnp_TxnRef = $_POST['order_id']; //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
    $vnp_OrderInfo = $_POST['order_desc'];
    $vnp_OrderType = $_POST['order_type'];
    $vnp_Amount = $_POST['amount'] * 100;
    $vnp_Locale = $_POST['language'];
    $vnp_BankCode = $_POST['bank_code'];
    $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
    //Add Params of 2.0.1 Version
    $vnp_ExpireDate = $_POST['txtexpire'];
    //Billing
    $vnp_Bill_Mobile = $_POST['txt_billing_mobile'];
    $vnp_Bill_Email = $_POST['txt_billing_email'];
    $fullName = trim($_POST['txt_billing_fullname']);
    if (isset($fullName) && trim($fullName) != '') {
        $name = explode(' ', $fullName);
        $vnp_Bill_FirstName = array_shift($name);
        $vnp_Bill_LastName = array_pop($name);
    }
    $vnp_Bill_Address = $_POST['txt_inv_addr1'];
    $vnp_Bill_City = $_POST['txt_bill_city'];
    $vnp_Bill_Country = $_POST['txt_bill_country'];
    $vnp_Bill_State = $_POST['txt_bill_state'];
    // Invoice
    $vnp_Inv_Phone = $_POST['txt_inv_mobile'];
    $vnp_Inv_Email = $_POST['txt_inv_email'];
    $vnp_Inv_Customer = $_POST['txt_inv_customer'];
    $vnp_Inv_Address = $_POST['txt_inv_addr1'];
    $vnp_Inv_Company = $_POST['txt_inv_company'];
    $vnp_Inv_Taxcode = $_POST['txt_inv_taxcode'];
    $vnp_Inv_Type = $_POST['cbo_inv_type'];
    $inputData = array(
        "vnp_Version" => "2.1.0",
        "vnp_TmnCode" => $vnp_TmnCode,
        "vnp_Amount" => $vnp_Amount,
        "vnp_Command" => "pay",
        "vnp_CreateDate" => date('YmdHis'),
        "vnp_CurrCode" => "VND",
        "vnp_IpAddr" => $vnp_IpAddr,
        "vnp_Locale" => $vnp_Locale,
        "vnp_OrderInfo" => $vnp_OrderInfo,
        "vnp_OrderType" => $vnp_OrderType,
        "vnp_ReturnUrl" => $vnp_Returnurl,
        "vnp_TxnRef" => $vnp_TxnRef,
        "vnp_ExpireDate" => $vnp_ExpireDate,
        "vnp_Bill_Mobile" => $vnp_Bill_Mobile,
        "vnp_Bill_Email" => $vnp_Bill_Email,
        "vnp_Bill_FirstName" => $vnp_Bill_FirstName,
        "vnp_Bill_LastName" => $vnp_Bill_LastName,
        "vnp_Bill_Address" => $vnp_Bill_Address,
        "vnp_Bill_City" => $vnp_Bill_City,
        "vnp_Bill_Country" => $vnp_Bill_Country,
        "vnp_Inv_Phone" => $vnp_Inv_Phone,
        "vnp_Inv_Email" => $vnp_Inv_Email,
        "vnp_Inv_Customer" => $vnp_Inv_Customer,
        "vnp_Inv_Address" => $vnp_Inv_Address,
        "vnp_Inv_Company" => $vnp_Inv_Company,
        "vnp_Inv_Taxcode" => $vnp_Inv_Taxcode,
        "vnp_Inv_Type" => $vnp_Inv_Type
    );

    if (isset($vnp_BankCode) && $vnp_BankCode != "") {
        $inputData['vnp_BankCode'] = $vnp_BankCode;
    }
    if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
        $inputData['vnp_Bill_State'] = $vnp_Bill_State;
    }

    //var_dump($inputData);
    ksort($inputData);
    $query = "";
    $i = 0;
    $hashdata = "";
    foreach ($inputData as $key => $value) {
        if ($i == 1) {
            $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
        } else {
            $hashdata .= urlencode($key) . "=" . urlencode($value);
            $i = 1;
        }
        $query .= urlencode($key) . "=" . urlencode($value) . '&';
    }

    $vnp_Url = $vnp_Url . "?" . $query;
    if (isset($vnp_HashSecret)) {
        $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret); //  
        $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
    }
    $returnData = array(
        'code' => '00', 'message' => 'success', 'data' => $vnp_Url
    );
    if (isset($_POST['redirect'])) {
        header('Location: ' . $vnp_Url);
        die();
    } else {
        echo json_encode($returnData);
    }
}
