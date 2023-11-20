<?php
session_start();
include "../model/pdo.php";
include "../model/danhmuc.php";
include "../model/sanpham.php";
include "../model/khachhang.php";
include "../model/taikhoan.php";
include "../model/binhluan.php";
?>

<?php
include "_header.php";


?>
 <?php
    //Các biến dùng chung
   
    $dsdm = danhsach_danhmuc();
    $top10 = top10_sanpham();

    if (!isset($_SESSION['myCart'])) {
        $_SESSION['myCart'] = [];
    }
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

            case "register": {
                    if (isset($_POST['btnSubmit'])) {
                        add_khachhang($_POST['tenkh'], $_POST['pass'], $_POST['email'], $_POST['address'], $_POST['tel'], $_POST['role']);
                        $thongbao = "Đăng ký thành công.";
                    }
                    include "register.php";
                    break;
                }

            case "login": {
                    if (isset($_POST['btnSubmit'])) {
                        if ($_POST['user'] != "" && $_POST['pass'] != "") {
                            $check_user = check_user($_POST['user'], $_POST['pass']);
                            if (is_array($check_user)) {
                                //Tạo ra biến Session để lưu kết quả vừa tìm đc
                                $_SESSION['user'] = $check_user;

                                header("location:?act=login");
                            } else {
                                $thongbao = "Tài khoản không tồn tại. Vui lòng kiểm tra hoặc đăng ký";
                            }
                        } else {
                            $thongbao = "Tên đăng nhập và mật khẩu không được để trống";
                        }
                    }
                    include "home.php";
                    break;
                }
            case "edit_tk": {
                    if (isset($_POST['btnSubmit'])) {
                        edit_tk($_POST['id'], $_POST['user'], $_POST['pass'], $_POST['email'], $_POST['address'], $_POST['tel']);
                        $_SESSION['user'] = check_user($_POST['user'], $_POST['pass']);

                        $thongbao = "Cập nhật tài khoản thành công!";
                    }

                    include "edit_tk.php";
                    break;
                }

            case "logout": {
                    session_unset(); //Xóa hết tất cả ss
                    header("Location:?act=index");
                    break;
                }


            case 'fg_password': {
                    if (isset($_POST['btnSubmit'])) {
                        if ($_POST['email'] != "") {
                            $check_email = check_email($_POST['email']);
                            if (is_array($check_email)) {
                                $thongbaomk = "Mật khẩu của bạn là:" . $check_email['pass'];
                            } else {
                                $thongbaomk = "Email này không tồn tại!";
                            }
                        }else {
                            $thongbaomk = "Email không được để trống";
                        }
                    }
                    include "forgot_password.php";
                    break;
                }
            case "add_to_cart": {
                    if (isset($_POST['btnSubmit'])) {
                        $id = $_POST['id'];
                        $name = $_POST['name'];
                        $img = $_POST['img'];
                        $price = floatval($_POST['price']);
                        $soluong = intval(1);
                        $ttien = ($soluong * $price);

                        $add_sp = [$id, $name, $img, $price, $soluong, $ttien];
                        array_push($_SESSION['myCart'], $add_sp);
                    }
                    include "cart/cart.php";
                    break;
                }
            case "deletespcart": {
                    if (isset($_GET['idcart'])) {
                        $idcart = $_GET['idcart'];
                        array_splice($_SESSION['myCart'], $idcart, 1);
                    } else {
                        $_SESSION['myCart'] = [];
                    }
                }
                header("location:?act=cart");

                break;
            case 'cart': {
                    include "cart/cart.php";
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
    
