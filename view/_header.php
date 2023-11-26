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
                  <div class="shirt">
                     <a href="" class="bold">Áo</a>
                     <a href="" class="no-bold">Áo thun</a>
                     <a href="" class="no-bold">Polo</a>
                     <a href="" class="no-bold">Hoodie</a>
                     <a href="" class="no-bold">Áo khoác</a>
                  </div>
                  <div class="shirt">
                     <a href="" class="bold">Quần</a>
                     <a href="" class="no-bold">Quần short</a>
                     <a href="" class="no-bold">Quần dài</a>
                  </div>
                  <div class="shirt">
                     <a href="" class="bold">Phụ kiện</a>
                     <a href="" class="no-bold">Túi</a>
                  </div>
               </div>
            </div>
         </li>
         <li><a href="index.php?act=sanpham">CONTACT</a></li>
         <li><a href="">GROUP</a></li>
         <li><a href="">TIN TỨC</a></li>
         <form action="" method="post">
            <input type="text" name="timkiem" placeholder="Tìm kiếm sản phẩm...">
            <a href=""><i class="fa-solid fa-magnifying-glass"></i></a>
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
                        <a href="index.php?act=profile">Profile</a>
                        <a href="index.php?act=update_tk">Sửa thông tin</a>
                        <?php
                        echo (($_SESSION["role"])==0) ? "" : 
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
            <li><a href="<?php echo(isset($_SESSION['iduser']))?
            'index.php?act=cart&iduser='.$_SESSION['iduser'].'':''?>"><i class="fa-solid fa-cart-shopping"></i></a></li>
         </ul>
      </div>
   </nav>