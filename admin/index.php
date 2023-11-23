<?php
session_start();

include "../model/pdo.php";
include "../model/danhmuc.php";
include "../model/sanpham.php";
include "../model/taikhoan.php";
include "../model/binhluan.php";
include "../model/thongke.php";
include 'header.php';
include 'boxleft.php';
include 'menu.php';

?>


<!--  -->
<div>
    <?php
    // $bieudo = load_thongke_sp_dm();
    //Controller
    if (isset($_GET['act']) && $_GET['act'] != "") {
        $act = $_GET['act'];

        switch ($act) {
            case 'home':

                include "trangchu/home.php";
                break;
            case 'qtv':
                $ds_nguoidung = danhsach_khachhang();
                include "taikhoan/dsquantrivien.php";
                break;
            case 'dsnguoidung':
                $ds_nguoidung = danhsach_khachhang();
                include "taikhoan/dsnguoidung.php";
                break;
            case 'addnguoidung':
                //validate
                $check = true;
                $err  = [];
                $thongbao = "";
                if (isset($_POST['btnSubmit'])) {
                    if ($check) {
                        add_khachhang($_POST['fullname'], $_POST['user'], $_POST['pass'], $_POST['email'], $_POST['tel'], $_POST['address'], $_POST['role']);
                    }

                    $thongbao = "Đăng ký tài khoản thành công !";
                }
                include "taikhoan/addnguoidung.php";
                break;
            case 'editnguoidung':

                include "taikhoan/editnguoidung.php";
                break;
            case "deletekh": {
                    if (isset($_GET['idkh'])) {
                        delete_khachhang($_GET['idkh']);
                        $ds_nguoidung = danhsach_khachhang();
                    }
                }

                include "taikhoan/dsnguoidung.php";
                break;
            case 'dsdanhmuc':
                $dsdm = danhsach_danhmuc();
                include "danhmuc/dsdanhmuc.php";
                break;
            case 'editdanhmuc':

                include "danhmuc/editdanhmuc.php";
                break;
            case 'adddanhmuc':

                include "danhmuc/adddanhmuc.php";
                break;

            case 'dssanpham':
                if (isset($_POST['clickOK']) && ($_POST['clickOK'])) {
                    $keyw = $_POST['keyw'];
                    $iddm = $_POST['iddm'];
                } else {
                    $keyw = "";
                    $iddm = 0;
                }
                $list_dm = danhsach_danhmuc();
                $list_sp = loadall_sanpham($keyw, $iddm);
                include "sanpham/dssanpham.php";
                break;
            case 'add_sp':
                $ses = (isset($_SESSION['inputCounter'])) ? $_SESSION['inputCounter'] : 1;
                echo 'ses trong file index: ' . $ses;
                $list_dm = danhsach_danhmuc();
                $list_ms = danhsach_mausac();
                $list_kt = danhsach_kichthuoc();
                if (isset($_POST['submit'])) {
                    $name = $_POST['name'];
                    $price_niemyet = $_POST['price_niemyet'];
                    $price_sale = $_POST['price_sale'];
                    $mota = $_POST['mota'];
                    $iddm = $_POST['iddm'];
                    $idsp = 0;
                    $img_phu = '';

                    $idms_ = '';
                    $idkt_ = '';
                    $soluong_ = array();


                    $img_main = $_FILES['image_main']['name'];
                    echo $img_main;
                    $target_dir = "../upload/";
                    $target_file = $target_dir . basename($_FILES['image_main']['name']);
                    //                    echo $target_file;
                    if (move_uploaded_file($_FILES['image_main']['tmp_name'], $target_file)) {
                        echo "Bạn đã upload ảnh thành công";
                    } else {
                        echo "Upload ảnh không thành công";
                    }
                    // thêm bảng sp
                    insert_sanpham($name, $img_main, $price_niemyet, $price_sale, $mota, $iddm);
                    $sp_insert = load_sp_insert();
                    foreach ($sp_insert as $sp) {
                        extract($sp);
                        $idsp = $id;
                    }
                    echo 'id -san pham vua nhap la: ' . $idsp;
                    //them bang hinhanh
                    $img = $_FILES['image'];
                    $imgCount = count($img['name']);

                    $target_dir_arr = "../upload/";
                    for ($i = 0; $i < $imgCount; $i++) {
                        echo '<br>' . $img['name'][$i] . '<br>';
                        $img_phu = $img['name'][$i];

                        insert_hinhanh($img_phu, $idsp);

                        $target_file_arr = $target_dir_arr . basename($img['name'][$i]);
                        // echo $target_file_arr.'<br>';
                        if (move_uploaded_file($img['tmp_name'][$i], $target_file_arr)) {
                            echo "Bạn đã upload ảnh thành công";
                        } else {
                            echo "Upload ảnh không thành công";
                        }
                    }
                    //thêm bảng biến thể
                    for ($j = 0; $j <= $ses; $j++) {
                        $idms_[$j] = $_POST['idms_' . $j];
                        $idkt_[$j] = $_POST['idkt_' . $j];
                        $soluong_[$j] = $_POST['soluong_' . $j];
                        var_dump($soluong_[$j]);
                        // echo $soluong_[$j];
                        // echo '<br>id_mau: '.$idms_[$j];
                        // echo '<br>id_kich thuoc: '.$idkt_[$j];
                        // echo '<br>soluong: '.$soluong_[$j];
                        insert_bien_the($idsp, $idms_[$j], $idkt_[$j], $soluong_[$j]);
                    }



                    // insert_sanpham($name, $img_main, $price_niemyet, $price_sale, $mota, $iddm);
                    // $sp_insert = load_sp_insert();
                    // foreach($sp_insert as $sp ){
                    //     extract($sp);
                    //     $idsp = $id;
                    // }
                    // echo 'id -san pham vua nhap la: '.$idsp;
                    // insert_hinhanh($img_phu, $idsp);
                }

                // $list_sp = loadall_sanpham($keyw, $iddm);
                include "sanpham/addsanpham.php";
                break;
            case 'update_sp':
                if (isset($_GET['idsp']) && ($_GET['idsp'] > 0)) {
                    $sanpham = loadone_sanpham($_GET['idsp']);
                    $anh_phu = load_anh_phu($_GET['idsp']);
                    $bienThe_update = bienThe_update($_GET['idsp']);
                }

                $list_dm = danhsach_danhmuc();
                $list_ms = danhsach_mausac();
                $list_kt = danhsach_kichthuoc();
                $list_sp = loadall_sanpham('', 0);
                include "sanpham/editsanpham.php";
                break;
            case 'sua_sp':
                $list_dm = danhsach_danhmuc();
                $list_ms = danhsach_mausac();
                $list_kt = danhsach_kichthuoc();

                if (isset($_POST['submit'])) {
                    $name = $_POST['name'];
                    $price_niemyet = $_POST['price_niemyet'];
                    $price_sale = $_POST['price_sale'];
                    $mota = $_POST['mota'];
                    $iddm = $_POST['iddm'];
                    $idsp = $_POST['id'];
                    $img_phu = '';
                    // $bienThe_update = bienThe_update($idsp);
                    //     extract($bienThe_update);



                    $img_main = $_FILES['image_main']['name'];
                    echo $img_main;
                    $target_dir = "../upload/";
                    $target_file = $target_dir . basename($_FILES['image_main']['name']);
                    //                    echo $target_file;
                    if (move_uploaded_file($_FILES['image_main']['tmp_name'], $target_file)) {
                        echo "Bạn đã update img main thành công";
                    } else {
                        echo "Upload img main không thành công";
                    }
                    // sửa bảng sp
                    update_sanpham($idsp, $iddm, $name, $price_niemyet, $price_sale, $mota, $img_main);
                    // sửa bang hinhanh

                    $img = $_FILES['image'];
                    $imgCount = count($img['name']);
                    echo "img count: ";
                    var_dump($imgCount);

                    $target_dir_arr = "../upload/";
                    if ($imgCount > 1) {
                        hard_delete_hinhanh($idsp);
                        for ($i = 0; $i < $imgCount; $i++) {
                            echo '<br>' . $img['name'][$i] . '<br>';
                            $img_phu = $img['name'][$i];

                            insert_hinhanh($img_phu, $idsp);

                            $target_file_arr = $target_dir_arr . basename($img['name'][$i]);
                            // echo $target_file_arr.'<br>';
                            if (move_uploaded_file($img['tmp_name'][$i], $target_file_arr)) {
                                echo "Bạn đã upload ảnh thành công";
                            } else {
                                echo "Upload ảnh không thành công";
                            }
                        }
                    }

                    //sửa bảng biến thể
                    $bienThe_update = bienThe_update($idsp);

                    foreach ($bienThe_update as $bt) {
                        extract($bt);

                        $idms_value = $_POST['idms' . $id_mau_sac];
                        $idkt_value = $_POST['idkt' . $id_kich_thuoc];
                        $soluong_value = $_POST['soluong' . $so_luong];

                        echo 'id màu:' . $id_mau_sac;

                        update_bienthe($idsp, $idms_value, $idkt_value, $soluong_value);

                        $bt['idms'] = $idms_value;
                        $bt['idkt'] = $idkt_value;
                        $bt['soluong'] = $soluong_value;
                        echo $idms_value;
                    }


                    // $img = $_FILES['image'];
                    // $imgCount = count($img['name']);

                    // $target_dir_arr = "../upload/";
                    // for($i = 0; $i < $imgCount; $i++){
                    //     echo '<br>'.$img['name'][$i].'<br>';
                    //     $img_phu= $img['name'][$i];

                    //     update_hinhanh($idsp, $$img_phu);

                    //     $target_file_arr = $target_dir_arr . basename($img['name'][$i]);
                    //     // echo $target_file_arr.'<br>';
                    //     if (move_uploaded_file($img['tmp_name'][$i], $target_file_arr)) {
                    //             echo "Bạn đã upload ảnh thành công";
                    //     } else {
                    //             echo "Upload ảnh không thành công";
                    //     }

                    // }
                    // //thêm bảng biến thể
                    // for ($j = 0; $j <= $ses; $j++) {
                    //     $idms_[$j] = $_POST['idms_' . $j];
                    //     $idkt_[$j] = $_POST['idkt_' . $j];
                    //     $soluong_[$j] = $_POST['soluong_' . $j];
                    //     var_dump($soluong_[$j]);
                    //     // echo $soluong_[$j];
                    //     // echo '<br>id_mau: '.$idms_[$j];
                    //     // echo '<br>id_kich thuoc: '.$idkt_[$j];
                    //     // echo '<br>soluong: '.$soluong_[$j];
                    //     insert_bien_the($idsp, $idms_[$j], $idkt_[$j], $soluong_[$j]);

                    // }
                }
                include "sanpham/dssanpham.php";
                break;

            case "hard_delete":
                if (isset($_GET['idsp'])) {
                    hard_delete_sanpham($_GET['idsp']);
                }
                $list_sp = loadall_sanpham("", 0);
                include "sanpham/dssanpham.php";
                break;

            case 'dsdonhang':

                include "donhang/dsdonhang.php";
                break;
            case 'dsbinhluan':
                $dsbl = danhsach_binhluan();
                include "binhluan/dsbinhluan.php";
                break;
            case "deletebl":
                if (isset($_GET['idbl'])) {

                    delete_binhluan($_GET['idbl']);
                    $dsbl = danhsach_binhluan();
                }
                // header("location: ?act=home");

                include "binhluan/dsbinhluan.php";
                break;

            case 'dsthongke':

                include "thongke/dsthongke.php";
                break;

                // case 'login':

                //     header("location:../login.php");
                //     break;

            case 'dscd':

                include "chuyende/list-chuyende.php";
                break;
            case 'add-chuyende':

                include "chuyende/add-chuyende.php";
                break;

            case 'dstk':

                include "taikhoan/list-taikhoan.php";
                break;
            case 'addtk':

                include "taikhoan/add-taikhoan.php";
                break;
            case 'edittk':

                include "taikhoan/edit-taikhoan.php";
                break;
            case 'dsch':

                include "cauhoi/list-cauhoi.php";
                break;
            case 'addch':

                include "cauhoi/add-cauhoi.php";
                break;
            case 'editch':

                include "cauhoi/edit-cauhoi.php";
                break;
            case 'dsda':

                include "dapan/list-dapan.php";
                break;
            case 'editda':

                include "dapan/edit-dapan.php";
                break;
            case 'back-to-website':

                break;

            case 'test_loadall_sp':
                if (isset($_POST['clickOK']) && ($_POST['clickOK'])) {
                    $keyw = $_POST['keyw'];
                    $iddm = $_POST['iddm'];
                } else {
                    $keyw = "";
                    $iddm = 0;
                }
                $list_dm = danhsach_danhmuc();
                $list_sp = loadall_sanpham($keyw, $iddm);
                include "test_render/dssanpham.php";
                break;
            default:
                include "../404.php";
                break;
        }
    } else {
        include "trangchu/home.php";
    }
    ?>
</div>


<?php
include 'footer.php';

?>