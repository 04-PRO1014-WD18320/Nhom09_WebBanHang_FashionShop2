<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>FaShion Shop</title>
   <link rel="stylesheet" href="../assets/css/style_chitietsp.css">
   <link rel="stylesheet" href="../assets/css/login.css">
   <link rel="stylesheet" href="../assets/css/style_home.css">
   <link rel="stylesheet" href="../assets/css/css.css">
   <link rel="stylesheet" href="../assets/fontawesome/css/all.css">
   <link rel="stylesheet" href="../assets/css/thanhtoan.css">
   <link rel="shortcut icon" href="../assets/img/favicon-32x32.png" type="image/x-icon">
   <script src="../assets/js/library-jquery.js"></script>
   <script src="../assets/js/slideshow_chitietsp.js"></script>
   <script src="../assets/js/slideShow_home.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

   <script src="https://kit.fontawesome.com/509cc166d7.js" crossorigin="anonymous"></script>
   <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">

</head>

<body>
   <nav>
      <div class="logo">
         Fashion Shop
      </div>
      <ul class="menu">
         <li><a href="index.php">HOME</a></li>
         <li>
            <a href="">SHOP ^</a>
            <div class="dropdown">
               <div class="draw">
                  <div class="diamond"></div>
                  <?php
                      $dsdm_ao = danhsach_danhmuc_ao('1');
                      $dsdm_quan = danhsach_danhmuc_ao('2');
                      $dsdm_phukien = danhsach_danhmuc_ao('3');
                      echo '
                      <div class="shirt">
                        <a href="?act=tim_b_dm&id_b_dm=1" class="bold">Áo</a>';
                        foreach($dsdm_ao as $dm_a){
                           extract($dm_a);
                           echo '<a href="?act=timdm&iddm='.$id.'" class="no-bold">'.$name.'</a>';
                        }
                        echo '</div>';
                     echo '<div class="shirt">
                              <a href="?act=tim_b_dm&id_b_dm=2" class="bold">Quần</a>';
                              foreach($dsdm_quan as $dm_q){
                                 extract($dm_q);
                                 echo '<a href="?act=timdm&iddm='.$id.'" class="no-bold">'.$name.'</a>';
                              }
                           echo '</div>';
                     echo '<div class="shirt">
                              <a href="?act=tim_b_dm&id_b_dm=3" class="bold">Phụ kiện</a>';
                              foreach($dsdm_phukien as $dm_pk){
                                 extract($dm_pk);
                                 echo '<a href="?act=timdm&iddm='.$id.'" class="no-bold">'.$name.'</a>';
                              }
                           echo '</div>';
                  ?>
               </div>

               
            </div>
         </li>
         <li><a href="index.php?act=sanpham">CONTACT</a></li>
         <li><a href="">GROUP</a></li>
         <li><a href="">TIN TỨC</a></li>
         <form action="?act=timkiem" method="post">
            <input type="text" name="keyword" placeholder="Tìm kiếm sản phẩm...">
            <a href=""><i class="fa-solid fa-magnifying-glass"></i></a>
            <input hidden type="submit" name="timkiem" value="Tìm kiếm">
         </form>

      </ul>
      <div class="user">
         <ul>
            <li class="user_name">
               <a href="">
                  <?php
                  echo (empty($_SESSION['user'])) ? "" : $_SESSION['user']
                  ?>
               </a>

               <div class="dropdown_user">
                  <div class="draw_user">
                     <div class="diamond_user"></div>
                     <div class="shirt_user">
                        <a href="index.php?act=profile">Tài khoản của tôi</a>
                        <a href="index.php?act=update_tk">Sửa thông tin</a>
                        <a href="?act=donmua">Đơn mua</a>
                        <?php
                        echo (($_SESSION["role"]) == 0) ? "" :
                           '<a href="../admin/index.php">
                              Chuyển trang quản trị
                           </a>'
                        ?>
                        <a href="index.php?act=dangxuat">Đăng xuất</a>
                     </div>
                  </div>
               </div>
            </li>
            <?php
            echo (empty($_SESSION['user'])) ? "
            <li><a href='index.php?act=dangnhap'><i class='fa-solid fa-user'></i></a></li>
            " : ""
            ?>
            <li><a href="<?php echo (isset($_SESSION['iduser'])) ?'index.php?act=cart&iduser=' . $_SESSION['iduser'] : '' ?>"><i class="fa-solid fa-cart-shopping"></i></a></li>
         </ul>
      </div>
   </nav>