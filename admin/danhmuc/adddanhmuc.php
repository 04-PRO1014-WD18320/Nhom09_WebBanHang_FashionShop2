

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Thêm mới danh mục</h1>
                    </div>
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <form action="index.php?act=add_danhmuc" class="form" method="post">
                                <div class="mb-3">
                                    <label for="" class="form-label">Mã loại</label>
                                    <input type="text" required name="id_dm" id="" class="form-control" placeholder="Nhập mã loại...">
                                </div>
                                <div class="mb-3">
                                    <label for="name" class="form-label">Danh mục</label>
                                    <input type="text" required name="name" id="name" class="form-control" placeholder="Nhập tên danh mục...">
                                </div>
                                <div>
                                    <button type="submit" name="submit" class="btn btn-success">Xác nhận</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                </div>
                <!-- /.container-fluid -->
          