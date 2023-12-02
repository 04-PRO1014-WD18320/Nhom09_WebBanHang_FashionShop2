<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Cập nhật đơn hàng </h1>
    </div>
    <?php
        if(is_array($one_donhang)){
            extract($one_donhang);
            // echo "<pre>";
            // print_r($one_donhang);
        }
    ?>
    <div class="card shadow mb-4">
        <div class="card-body">
            <form action="index.php?act=sua_donhang" method="post" enctype="multipart/form-data" class="form">
                <p>id đơn hàng: <?=$id?></p><br>
                <p>Tên người nhận: <?=$receive_name?></p><br>
                <p>Địa chỉ: <?=$address?></p><br>
                <p>Số điện thoại: 0<?=$sdt?></p><br>
                <p>Tổng giá trị: <?=number_format($tong)?>VND</p><br>
                <p>Ngày đặt: <?=$ngay_dat_hang?></p><br>
                <p>Phương thức thanh toán: <?=$phuongthuctt?></p><br>
                <div class="mb-3">
                    <input type="text" hidden name="iddh" id="" value="<?=$id?>">
                    <select name="status" id="">
                        <option <?=($status == 0)?'selected': ''?> value="0">Trạng thái</option>
                        <option <?=($status == 'Chờ xác nhận')?'selected': ''?> value="Chờ xác nhận">Chờ xác nhận</option>
                        <option <?=($status == 'Đã xác nhận')?'selected': ''?> value="Đã xác nhận">Đã xác nhận</option>
                        <option <?=($status == 'Đang giao hàng')?'selected': ''?> value="Đang giao hàng">Đang giao hàng</option>
                        <option <?=($status == 'Hoàn thành')?'selected': ''?> value="Hoàn thành">Hoàn thành</option>
                    </select>
                </div>





                <div>
                    <button type="submit" name="submit" class="btn btn-success">Xác nhận</button>
                </div>
            </form>
        </div>
    </div>


</div>
<!-- /.container-fluid -->