<?php
session_start();
include "../model/pdo.php";
include "../model/danhmuc.php";
include "../model/sanpham.php";
include "../model/taikhoan.php";
include "../model/binhluan.php";
include "../model/cart.php";
?>

<?php
include "_header.php";


?>
 <?php
    //Các biến dùng chung
    $dssp = danhsach_sanpham();
    $dsdm = danhsach_danhmuc();

    $top5 = top5_sanpham();


    //Controller
    if (isset($_GET['act']) && $_GET['act'] != "") {
        $act = $_GET['act'];
        switch ($act) {
            case 'home': {
                    include "home.php";
                    break;
                }

            case 'timdm': {
                    if (isset($_GET['iddm']) && $_GET['iddm'] > 0) {
                        $dssp = tim_sanpham_theodm($_GET['iddm']);
                    }
                    include "home.php";
                    break;
                }

            case "chitietsp": {
                    if (isset($_GET['idsp']) && $_GET['idsp'] > 0) {
                        $dsbl = load_binhluan($_GET['idsp']);
                        $sanpham = one_sanpham($_GET['idsp']);
                        $hinhanh = load_anhcon($_GET['idsp']);
                        $sanpham_tt = sanpham_tuongtu($_GET['idsp']);
                        tangluotxem($_GET['idsp']);
                        $colors = load_mausac($_GET['idsp']);
                        $sizes = load_kichthuoc($_GET['idsp']);
                    }
                    if (isset($_POST['btnSubmit'])) {
                        add_binhluan($_POST['noidung'], $_POST['iduser'], $_POST['idpro'], $_POST['datetime']);
                        header("Location: ?act=chitietsp&idsp=" . $_GET['idsp']);
                    }
                    include "detail_prod.php";
                    break;
                }
            case 'timkiem': {
                    if (isset($_POST['timkiem'])) {
                        $keyword = $_POST['keyword'];
                        $dssp = tim_kiem_san_pham($keyword);
                    }

                    include "home.php";
                    break;
                }

            case "dangky":
                if (isset($_POST['dangky'])) {
                    $email = $_POST['email'];
                    $user = $_POST['user'];
                    $pass = $_POST['pass'];
                    insert_taikhoan($email, $user, $pass);
                    $thongbao = "đăng ký thành công";
                }
                include "login/login.php";
                break;
            case "dangnhap":
                if (isset($_POST['dangnhap'])) {
                    dangnhap($_POST['user'], $_POST['pass']);
                }
                include "login/login.php";
                break;
            case "dangxuat":
                dangxuat();
                include "view/home.php";
                break;


            case 'fg_password': {
                    if (isset($_POST['btnSubmit'])) {
                        if ($_POST['email'] != "") {
                            $check_email = check_email($_POST['email']);
                            if (is_array($check_email)) {
                                $thongbaomk = "Mật khẩu của bạn là:" . $check_email['pass'];
                            } else {
                                $thongbaomk = "Email này không tồn tại!";
                            }
                        } else {
                            $thongbaomk = "Email không được để trống";
                        }
                    }
                    include "forgot_password.php";
                    break;
                }

            case "add_to_cart": {

                    if (isset($_POST['btnSubmit'])) {
                        // $id_user = $_POST['id_user'];

                        $id_user = 1;
                        $id_bt_sanpham = $_POST['id_bt_sanpham'];
                        $so_luong = $_POST['so_luong'];

                        add_cart($id_user, $id_bt_sanpham, $so_luong);
                    }
                    $dscart = loadall_cart();
                    include "cart.php";
                    break;
                }

            case "delete_sp_cart": {
                    if (isset($_GET['id_cart'])) {
                        delete_cart($_GET['id_cart']);
                    }
                }
                header("location:?act=cart");

                break;
            case 'cart': {
                    $dscart = loadall_cart();
                    include "cart.php";
                    break;
                }
            case "bill": {
                    include "cart/bill.php";
                    break;
                }
            case "bill_confirm": {
                    if (isset($_POST['btnSubmit'])) {
                        $name = $_POST['user'];
                        $email = $_POST['email'];
                        $address = $_POST['address'];
                        $tel = $_POST['tel'];
                        $ngayDatHang = date('Y-m-d H:i:s', strtotime('+5 hours'));

                        $_SESSION['myCart'] = [];
                    }
                    include "cart/bill_confirm.php";
                    break;
                }
            default: {
                    include "home.php";
                    break;
                }
        }
    } else {
        include "home.php";
    }
    ?>



<?php
include "_footer.php";
?>
    
