<?php


include "../model/pdo.php";
include "../model/danhmuc.php";
include "../model/sanpham.php";
include "../model/khachhang.php";
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

                include "taikhoan/dsquantrivien.php";
                break;
            case 'dsnguoidung':

                include "taikhoan/dsnguoidung.php";
                break;
            case 'addnguoidung':

                include "taikhoan/addnguoidung.php";
                break;
            case 'editnguoidung':

                include "taikhoan/editnguoidung.php";
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

                include "sanpham/dssanpham.php";
                break;
            case 'editsanpham':

                include "sanpham/editsanpham.php";
                break;
            case 'addsanpham':

                include "sanpham/addsanpham.php";
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