<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Sửa thông tin</h1>
    </div>
    <div class="card shadow mb-4">
        <div class="card-body">
            <form action="?act=editnguoidung&idkh=<?= $olddata['id'] ?>" method="post" class="form">
                <input type="hidden" name="idkh" value="<?php echo $olddata['id'] ?>">
                <div>
                    <?php
                    if ($thongbao != "") {
                        echo " <p class='text_green'>$thongbao</p>";
                    }
                    ?>

                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="hovaten" class="form-label">Họ và tên</label>
                        <input type="text" class="form-control" readonly id="hovaten" name="name" placeholder="Nhập họ và tên..." value="<?php echo $olddata['fullname'] ?>">
                    </div>
                    <div class="col-md-6">
                        <label for="tendangnhap" class="form-label">Tên đăng nhập</label>
                        <input type="text" class="form-control" readonly id="tendangnhap" name="user" placeholder="Nhập tên đăng nhập..." value="<?php echo $olddata['user'] ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="matkhau" class="form-label">Mật Khẩu</label>
                        <input type="password" class="form-control" readonly id="matkhau" name="password" placeholder="Nhập mật khẩu..." value="<?php echo $olddata['pass'] ?>">
                    </div>
                    <div class="col-md-6">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" readonly id="email" name="email" placeholder="Nhập email..." value="<?php echo $olddata['email'] ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="sodienthoai" class="form-label">Số điện thoại</label>
                        <input type="text" class="form-control" readonly id="sodienthoai" name="sodienthoai" placeholder="Nhập số điện thoại..." value="<?php echo $olddata['tel'] ?>">
                    </div>
                    <div class="col-md-6">
                        <label for="diachi" class="form-label">Địa chỉ</label>
                        <input type="text" class="form-control" readonly id="diachi" name="address" placeholder="Nhập địa chỉ..." value="<?php echo $olddata['address'] ?>">
                    </div>
                </div>
                <div class="mb-3 row">
                    <div class="col-md-6">
                        <label for="sel1">Vai Trò</label>
                        <select class="form-control" id="sel1" name="role">
                            <option value="2" <?php if ($olddata['role'] == '2') : ?> selected <?php endif; ?>>Khách hàng</option>
                            <option value="1" <?php if ($olddata['role'] == '1') : ?> selected <?php endif; ?>>Admin</option>
                        </select>
                    </div>
                </div>



                <div>
                    <button type="submit" name="btnSubmit" class="btn btn-success">Xác nhận</button>
                </div>
            </form>
        </div>
    </div>


</div>