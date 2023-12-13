<div class="container">
    <div class="login">
        <form action="index.php?act=dangnhap" method="post">
            <div class="box1">
                <h3>Login</h3>
            </div>
            <div class="box3">
                <input type="text" name="user" class="email" placeholder="User name" autocomplete="off" required>
                <i class="fa-solid fa-user"></i>
            </div>
            <div class="box4">
                <input type="password" name="pass" class="email" placeholder="Password" autocomplete="off" required>
                <i class="fa-solid fa-lock"></i>
            </div>
            <div class="box5">
                <input type="checkbox" class="checkbox">
                <label for="check">Nhớ mật khẩu</label>
            </div>
            <div class="box6">
                <button name="dangnhap">Đăng nhập</button>
            </div>
           
            <div class="box7">
                <a href="index.php?act=quenmk">Quên mật khẩu</a>
            </div>
        </form>
        <form action="index.php?act=dangky" method="post">
            <div class="box1">
                <h3>Signup</h3>
            </div>
            <?php
            if (isset($thongbao) && $thongbao != "") {
                echo '
                <p style="color: green;" class="thongbao">'.$thongbao. '</p>
                ';
            }
            ?>
            <div class="box2">
                <input type="text" name="email" class="email" placeholder="Email" autocomplete="off" required>
                <i class="fa-solid fa-envelope"></i>
            </div>
            <div class="box3">
                <input type="text" name="user" class="email" placeholder="User name" autocomplete="off" required>
                <i class="fa-solid fa-user"></i>
            </div>
            <div class="box4">
                <input type="password" name="pass" class="email" placeholder="Password" autocomplete="off" required>
                <i class="fa-solid fa-lock"></i>
            </div>
            <div class="box5">
                <input type="checkbox" class="checkbox">
                <label for="check">Nhớ mật khẩu</label>
            </div>
            <div class="box6">
                <button name="dangky">Đăng ký</button>
            </div>
        
            
            
         
        </form>
    </div>
</div>