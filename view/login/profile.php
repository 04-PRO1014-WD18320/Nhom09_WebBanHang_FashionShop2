<div class="profile">
    <?php
    extract(array: $profile);
    $chucnang = "Khách hàng";
    if($role != 0){
        $chucnang = "Quản trị viên";
    }
    if($address = "" && $tel = ""){
        $sdt = "chưa cung cấp";
    }else{
        $sdt = $tel;
    }
    echo "
        <img src='../img/avt.jfif' alt=''>
        <h2>$user</h2>
        <div class='thongtin_cn'>
            <p>email: $email</p>
            <p>chức năng: $chucnang</p>
            <p>sdt: $sdt</p>
        </div>
        <div class= 'box6'>
            <button style='padding: 0 40px;' name='update_tk'>Chỉnh sửa</button>
        </div>
            ";
    ?>

    <div class=" " style="padding: 0 40px;"></div>
</div>