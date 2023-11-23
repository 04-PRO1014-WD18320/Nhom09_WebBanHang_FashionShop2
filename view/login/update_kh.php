<div class="container">
    <div class="signup">
        <?php
            extract(array:$profile);

        ?>
        <form action="index.php?act=update_tk" method="post">
            <div class="box1">
                <h3>Sửa thông tin</h3>
            </div>
            <div class="box2">
                <input type="text" name="email" class="email" autocomplete="off" required value="<?php echo $email?>">
                <i class="fa-solid fa-envelope"></i>
            </div>
            <div class="box3">
                <input type="text" name="user" class="email" autocomplete="off" required value="<?php echo $user?>">
                <i class="fa-solid fa-user"></i>
            </div>
            <div class="box3">
                <input type="text" name="old_mk" class="email" placeholder="Mật khẩu cũ" required>
                <i class="fa-solid fa-user"></i>
            </div>
            <div class="box4">
                <input type="password" name="pass" class="email" autocomplete="off" required value="<?php echo $pass?>">
                <i class="fa-solid fa-lock"></i>
            </div>
            <div class="box5">
                <input type="checkbox" class="checkbox">
                <label for="check">Nhớ mật khẩu</label>
            </div>
            <div class="box6">
                <button name="update_tk">UPDATE</button>
            </div>
            <!-- <div class="box7">
                <p>Bạn đã có tài khoản</p>
                <a href="index.php?act=dangnhap">Đăng nhập</a>
            </div>
            <div class="box7">
                <a href="index.php?act=quenmk">Quên mật khẩu</a>
            </div> -->
            
            <?php
            if (isset($thongbao) && $thongbao != "") {
                echo '
                <p style="color: green;" class="thongbao">'.$thongbao. '</p>
                ';
            }
            ?>
        </form>
    </div>
</div>