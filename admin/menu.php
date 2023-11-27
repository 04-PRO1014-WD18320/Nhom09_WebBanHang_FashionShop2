 <!-- Content Wrapper -->
 <div id="content-wrapper" class="d-flex flex-column">

     <!-- Main Content -->
     <div id="content">

         <!-- Topbar -->
         <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
             <!-- Topbar Navbar -->
             <ul class="navbar-nav ml-auto">
                 <!-- Nav Item - User Information -->
                 <li class="nav-item dropdown no-arrow">
                     <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?php
                            echo (empty($_SESSION['user']))? "":'<span class="mr-2 d-none d-lg-inline text-gray-600 small">'.$_SESSION['user'].'</span>
                            <i class="fas fa-fw fa-user"></i>';
                        ?>
                     </a>
                     <!-- Dropdown - User Information -->
                     <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                         <a class="dropdown-item" href="#">
                             <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                             Thông tin cá nhân
                         </a>
                         <a class="dropdown-item" href="#">
                             <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                             Cài đặt
                         </a>
                         <a class="dropdown-item" href="#">
                             <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                             Lịch sử truy cập
                         </a>
                         <div class="dropdown-divider"></div>
                         <a class="dropdown-item" href="?act=back-to-website" data-toggle="modal" data-target="#logoutModal">
                             <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            Quay trở về Website
                         </a>
                     </div>
                 </li>
             </ul>
         </nav>
         <!-- End of Topbar -->