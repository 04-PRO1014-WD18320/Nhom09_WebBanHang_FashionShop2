

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <?php
                        if(is_array($danhmuc_update)){
                            extract($danhmuc_update);
                            // echo "<pre>";
                            // print_r($danhmuc_update);
                        }
                    ?>
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Chỉnh sửa danh mục</h1>
                    </div>
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <form action="index.php?act=cf_update_danhmuc" class="form" method="post">
                                <input type="number" hidden name="iddm" id="" value="<?=$id?>">
                                <div class="mb-3">
                                    <label for="" class="form-label">Mã loại</label>
                                    <input type="text" required name="id_b_dm" id="" class="form-control" value="<?=$id_dm?>" >
                                </div>
                                <div class="mb-3">
                                    <label for="name" class="form-label">Danh mục</label>
                                    <input type="text" required name="name" id="name" class="form-control" value="<?=$name?>">
                                </div>
                                <div>
                                    <button type="submit" name="submit" class="btn btn-success">Xác nhận</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    
                </div>
                <!-- /.container-fluid -->
          