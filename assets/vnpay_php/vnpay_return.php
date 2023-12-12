<?php session_start();
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
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>VNPAY RESPONSE</title>
    <!-- Bootstrap core CSS -->
    <link href="assets/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="assets/jumbotron-narrow.css" rel="stylesheet">
    <script src="assets/jquery-1.11.3.min.js"></script>
</head>

<body>
    <?php
    require_once("./config.php");
    $vnp_SecureHash = $_GET['vnp_SecureHash'];
    $inputData = array();
    foreach ($_GET as $key => $value) {
        if (substr($key, 0, 4) == "vnp_") {
            $inputData[$key] = $value;
        }
    }

    unset($inputData['vnp_SecureHash']);
    ksort($inputData);
    $i = 0;
    $hashData = "";
    foreach ($inputData as $key => $value) {
        if ($i == 1) {
            $hashData = $hashData . '&' . urlencode($key) . "=" . urlencode($value);
        } else {
            $hashData = $hashData . urlencode($key) . "=" . urlencode($value);
            $i = 1;
        }
    }

    $secureHash = hash_hmac('sha512', $hashData, $vnp_HashSecret);
    ?>
    <!--Begin display -->
    <div class="container">
        <div class="header clearfix">
            <h3 class="text-muted">VNPAY RESPONSE</h3>
        </div>
        <div class="table-responsive">
            <div class="form-group">
                <label>Mã đơn hàng:</label>

                <label><?php echo $_GET['vnp_TxnRef'] ?></label>
            </div>
            <div class="form-group">

                <label>Số tiền:</label>
                <label><?php echo ($_GET['vnp_Amount'] / 100) ?></label>
            </div>
            <div class="form-group">
                <label>Nội dung thanh toán:</label>
                <label><?php echo $_GET['vnp_OrderInfo'] ?></label>
            </div>
            <div class="form-group">
                <label>Mã phản hồi (vnp_ResponseCode):</label>
                <label><?php echo $_GET['vnp_ResponseCode'] ?></label>
            </div>
            <div class="form-group">
                <label>Mã GD Tại VNPAY:</label>
                <label><?php echo $_GET['vnp_TransactionNo'] ?></label>
            </div>
            <div class="form-group">
                <label>Mã Ngân hàng:</label>
                <label><?php echo $_GET['vnp_BankCode'] ?></label>
            </div>
            <div class="form-group">
                <label>Thời gian thanh toán:</label>
                <label><?php echo $_GET['vnp_PayDate'] ?></label>
            </div>
            <div class="form-group">
                <label>Kết quả:</label>
                <label>

                    <?php
                    if ($secureHash == $vnp_SecureHash) {
                        if ($_GET['vnp_ResponseCode'] == '00') {
                            echo "<span style='color:blue'>GD Thành công</span>";
                        } else {
                            echo "<span style='color:red'>GD Không thành công</span>";
                         
                        }
                    } else {
                        echo "<span style='color:red'>Chữ ký không hợp lệ</span>";
                    }
                    ?>
                </label>
                <?php if ($secureHash == $vnp_SecureHash) { ?>
                    <?php if ($_GET['vnp_ResponseCode'] == '00') { ?>
                        <br><br><span style='color:blue'>Bạn đã thanh toán thành công. Vui lòng ấn tiếp tục để hoàn tất thanh toán!</span><br><br>
                        <form action="http://localhost/DuAn1/Nhom09_WebBanHang_FashionShop2/view/index.php?act=hoanthanh_tt" method="post">
                            <input type="text" name="iduser" value="<?= $_SESSION['iduser'] ?>">

                            <?php

                            if (is_array($ds_sp_thanhtoan)) {
                                extract($ds_sp_thanhtoan);
                            }
                            $i = 0;
                            $tong = 0;
                            foreach ($count_sp_add as $count_sp) {
                                $i += $count_sp['so_sp'];
                            }

                            for ($j = 0; $j < $i; $j++) {
                                // echo $ds_sp_thanhtoan[$j]['id_bienthe'];
                                echo '<input type="text"  name="id_bienthe' . $j . '" value="' . $ds_sp_thanhtoan[$j]['id_bienthe'] . '">';
                                echo '<input type="text"  name="so_luong' . $j . '" value="' . $ds_sp_thanhtoan[$j]['so_luong'] . '">';
                                echo '<input type="text"  name="price_sale' . $j . '" value="' . $ds_sp_thanhtoan[$j]['price_sale'] . '">';
                                echo '<input type="text"  name="ten_sp' . $j . '" value="' . $ds_sp_thanhtoan[$j]['ten_sp'] . '">';


                                $tong += $ds_sp_thanhtoan[$j]['price_sale'] * $ds_sp_thanhtoan[$j]['so_luong'];
                                // $tong+= 25000; 
                            }

                            // echo $id_bienthe;
                            ?>

                            <button type="submit" name="tieptuc">Tiếp tục</button>
                        </form>


                    <?php } else { ?>
                        <br><br><a href='http://localhost/DuAn1/Nhom09_WebBanHang_FashionShop2/view/index.php?act=thanhtoan'><button type='button'>Quay lại</button></a>
                    <?php  } ?>
                <?php } else { ?>
                    <br><br><a href='http://localhost/DuAn1/Nhom09_WebBanHang_FashionShop2/view/index.php?act=thanhtoan'><button type='button'>Quay lại</button></a>
                <?php  } ?>
            </div>
        </div>
        <p>
            &nbsp;
        </p>
        <footer class="footer">
            <p>&copy; VNPAY <?php echo date('Y') ?></p>
        </footer>
    </div>
</body>

</html>