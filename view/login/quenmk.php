<div class="container">
    <div class="login">
        <form action="index.php?act=quenmk" method="post">
            <div class="box1" align='center'>
                <h3>Quên Mật Khẩu</h3>
            </div>
            <div class="box2">
                <input type="text" name="email" class="email" placeholder="Nhập email của bạn ..." autocomplete="off" required>
                <i class="fa-solid fa-envelope"></i>
            </div>

            <div class="gui">
                <input type="submit" value="Gửi" name="guiemail" style=" width: 100%;
                cursor: pointer;
    height: 50px;
    border-radius: 30px;
    border: none;
    margin:30px 0;
    outline: none;
    font-size: 20px;
    font-weight: 600;
    background-color: black;
    color: azure;">
                <a href="?act=dangnhap" style=" text-decoration: none;
    margin-left: 5px;
    background: -webkit-linear-gradient(120deg, #9708cc, #43cbff);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    font-weight: 600;
    &:hover {
        margin-left: 5px;
        background: -webkit-linear-gradient(120deg, hsl(318, 94%, 61%), hsl(239, 69%,51%));
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }">Đăng nhập</a>
            </div>
            <?php
            if (isset($thongbao) && $thongbao != "") {
                echo '
                <p class="thongbao">' . $thongbao . '</p>';
            }
            ?>
        </form>
    </div>
</div>