<main class="container">
  <div class="box_title">Quên mật khẩu</div>
  <div class="login">

    <div class="box_content form_account">
      <form action="index.php?act=quenmk" method="post">
        <div class="box1">
          <h3>Quên mật khẩu</h3>
        </div>
        <div class="box3">
          <input type="email" name="email" class="email" placeholder="Email" required>
        </div>
        <div class="box3">
          <input type="text" name="user" class="email" placeholder="User name" required>
        </div>
        <div class="box6">
          <button name="guiemail">Gửi</button>
        </div>
        <div class="box7">
          <p>Bạn chưa có tài khoản</p>
          <a href="index.php?act=dangky">Đăng ký</a>
        </div>
        <div class="box7">
          <a href="index.php?act=dangnhap">Đăng nhập</a>
        </div>
        <br>

        <?php
        if (isset($sendMailMess) && $sendMailMess != "") {
          echo $sendMailMess;
        }
        ?>
      </form>
    </div>

  </div>

</main>