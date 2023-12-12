<?php
session_start();
// $date = date('Y-m-d H:i:s');
// echo $date;
include "../../model/pdo.php";
include "../../model/danhmuc.php";
include "../../model/sanpham.php";
include "../../model/taikhoan.php";
include "../../model/binhluan.php";
include "../../model/cart.php";
include "../../model/thanhtoan.php";

$ds_sp_thanhtoan = loadall_cart($_SESSION['iduser']);
$count_sp_add = count_sp_add($_SESSION['iduser']);

?>

<?php
if (is_array($ds_sp_thanhtoan)) {
    extract($ds_sp_thanhtoan);
}
$i = 0;
$tong = 0;
foreach ($count_sp_add as $count_sp) {
    // echo "<pre>";
    // print_r($count_sp);
    $i += $count_sp['so_sp'];
}
// $_SESSION['so_sp_giohang'] = $so_sp = $i;
// echo $so_sp;
// echo $i.'<br>';
for ($j = 0; $j < $i; $j++) {
    // echo $ds_sp_thanhtoan[$j]['id_bienthe'];
    echo '<input type="text" hidden name="id_bienthe' . $j . '" value="' . $ds_sp_thanhtoan[$j]['id_bienthe'] . '">';
    echo '<input type="text" hidden name="so_luong' . $j . '" value="' . $ds_sp_thanhtoan[$j]['so_luong'] . '">';
    echo '<input type="text" hidden name="price_sale' . $j . '" value="' . $ds_sp_thanhtoan[$j]['price_sale'] . '">';
    echo '<input type="text" hidden name="ten_sp' . $j . '" value="' . $ds_sp_thanhtoan[$j]['ten_sp'] . '">';

    $tong += $ds_sp_thanhtoan[$j]['price_sale'] * $ds_sp_thanhtoan[$j]['so_luong'];
    // $tong+= 25000; 
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Tạo mới đơn hàng</title>
    <!-- Bootstrap core CSS -->
    <link href="assets/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="assets/jumbotron-narrow.css" rel="stylesheet">
    <script src="assets/jquery-1.11.3.min.js"></script>
</head>

<body>
    <?php require_once("./config.php"); ?>
    <div class="container">
        <h3>Tạo mới đơn hàng</h3>
        <div class="table-responsive">
            <form action="vnpay_create_payment.php" id="frmCreateOrder" method="post">
                <input type="text" hidden name="iduser" value="<?= $_SESSION['iduser'] ?>">
             
                <div class="form-group">
                    <label for="amount">Số tiền</label>
                    <input class="form-control" data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount" max="100000000" min="1" name="amount" type="number" value="<?= $tong + 25000 ?>"/>
                    
                </div>
                <h4>Phương thức thanh toán</h4>
                <div class="form-group">
                    <h5>Cách 1: Chuyển hướng sang Cổng VNPAY chọn phương thức thanh toán</h5>
                    <input type="radio" Checked="True" id="bankCode" name="bankCode" value="">
                    <label for="bankCode">Cổng thanh toán VNPAYQR</label><br>

                </div>
                <div class="form-group">
                    <h5>Chọn ngôn ngữ giao diện thanh toán:</h5>
                    <input type="radio" id="language" Checked="True" name="language" value="vn">
                    <label for="language">Tiếng việt</label><br>
                    <input type="radio" id="language" name="language" value="en">
                    <label for="language">Tiếng anh</label><br>

                </div>
                <button type="submit" class="btn btn-default" href>Tiếp tục</button>
            </form>
        </div>
        <p>
            &nbsp;
        </p>
        <footer class="footer">
            <p>&copy; VNPAY 2020</p>
        </footer>
    </div>
</body>

</html>