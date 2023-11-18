<!-- Begin Page Content -->
<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800 mb-5">Danh sách bình luận</h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <button class="btn btn-secondary btn-sm">Chọn tất cả</button>
            <button class="btn btn-secondary btn-sm">Bỏ chọn tất cả</button>
            <button class="btn btn-secondary btn-sm">Xóa các mục đã chọn</button>
            <form action="" class="float-right">
                <div class="input-group">
                    <input type="text" class="form-control" name="kyw" placeholder="Tìm kiếm...">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit" name="search">
                            <i class="fas fa-search fa-sm"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th></th>
                            <th>ID</th>
                            <th>Nội dung</th>
                            <th>Tên khách hàng</th>
                            <th>Tên sản phẩm</th>
                            <th>Ngày bình luận</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php 
                        
                        foreach ($dsbl as $key => $value) : ?>
                            <tr>
                                <td class="text-center align-middle"><input type="checkbox" name="select" id=""></td>
                                <td class="col-1 align-middle"><?php echo $value['id'] ?></td>
                                <td class="col-2 align-middle"><?php echo $value['noidung'] ?></td>
                                <td class="col-3 align-middle"><?php echo $value['user'] ?></td>
                                <td class="col-3 align-middle"><?php echo $value['name'] ?></td>
                                <td class="col-1 align-middle"><?php echo $value['ngaybinhluan'] ?></td>
                                <td class="col-1 align-middle"><a onclick="confirmDelete('<?php echo $value['id'] ?>')"><button class="btn btn-secondary btn-sm">Xóa</button></a></td>

                            </tr>
                        <?php endforeach; ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<script>
    function confirmDelete(id) {
        let ok = confirm('Bạn chắc chắc muốn xóa chứ ?');
        if (ok) {
            window.location.href = "?act=deletebl&idbl=" + id;
        }

    }
</script>
<!-- /.container-fluid -->