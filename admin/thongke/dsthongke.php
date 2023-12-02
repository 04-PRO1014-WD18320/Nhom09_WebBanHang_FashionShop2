<!-- Begin Page Content -->
<div class="container-fluid dssp">
    <h1 class="h3 mb-2 text-gray-800 mb-5">Thống kê bình luận sản phẩm</h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <a href="?act=add_sp"><button class="btn btn-secondary btn-sm">Xem biểu đồ</button></a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th>Mã loại</th>
                            <th>Tên sản phẩm</th>
                            <th>Hình ảnh</th>
                            <th>Giá bán</th>
                            <th>Lượt xem</th>
                            <th>Số bình luận</th>
                  
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($list_sp as $sp) {
                            extract($sp);
                            // print_r($sp);
                 
                        
                            $suasp = "index.php?act=update_sp&idsp=" . $id;
                            $hard_delete = "index.php?act=hard_delete&idsp=" . $id;
                            $soft_delete = "index.php?act=soft_delete&idsp=" . $id;
                            $hinhpath = "../upload/" . $img;

                            if (is_file($hinhpath)) {
                                $hinhpath = "<img src= '" . $hinhpath . "' width='100px' height='100px'>";
                            } else {
                                $hinhpath = "No file img!";
                            }

                            echo '
                                                <tr>
                                                 
                                                    <td class=" align-middle text-center">' . $id . '</td>
                                                    <td class="col-3 align-middle">' . $name . '</td>
                                                    <td class="col-2 align-middle">' . $hinhpath . '</td>
                                             
                                                    <td class="col-2 align-middle">' . $price_sale . '</td>
                                                 
                                                    <td  class="col-1 align-middle">' . $luotxem . '</td>
                                                    <td  class="col-1 align-middle">' . $iddm . '</td>
                                                 
                                                   
                                                </tr>
                                                ';
                        }
                        ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->