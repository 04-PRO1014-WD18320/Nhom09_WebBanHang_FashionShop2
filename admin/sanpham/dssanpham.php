<!-- Begin Page Content -->
<div class="container-fluid dssp">
    <h1 class="h3 mb-2 text-gray-800 mb-5">Danh sách sản phấm</h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <button class="btn btn-secondary btn-sm">Chọn tất cả</button>
            <button class="btn btn-secondary btn-sm">Bỏ chọn tất cả</button>
            <button class="btn btn-secondary btn-sm">Xóa các mục đã chọn</button>
            <a href="#"><button class="btn btn-secondary btn-sm">Nhập thêm</button></a>

            <form action="index.php?act=dssanpham" method="post" class="float-right">
                <div class="input-group">
                    <input type="text" class="form-control" name="keyw" placeholder="Tìm kiếm...">
                    <select name="iddm" id="">
                        <option value="0" selected>Tất cả</option>
                        <?php
                        $slt = "";
                        foreach ($list_dm as $dm) {
                            extract($dm);
                            $slt = ($id == $_POST['iddm']) ? $slt = "selected" : "";
                            echo '<option ' . $slt . ' value="' . $id . '">' . $name . '</option>';
                        }
                        ?>
                    </select>
                    <div class="input-group-append">
                        <input class="btn btn-primary timkiem_dssp" type="submit" name="clickOK" value="Tìm kiếm">
                        <!-- <i class="fas fa-search fa-sm"></i> -->
                    </div>
                </div>
            </form>
            <!-- <form action="index.php?act=dssanpham" method="post">
                                <input type="text" name="keyw">
                                <select name="iddm" id="">
                                    <option value="0" selected>Tất cả</option>
                                    <?php
                                    $slt = "";
                                    foreach ($list_dm as $danhmuc) {
                                        extract($danhmuc);
                                        $slt = ($id == $_POST['iddm']) ? $slt = "selected" : "";
                                        echo '<option ' . $slt . ' value="' . $id . '">' . $name . '</option>';
                                    }
                                    ?>
                                </select>
                                <input type="submit" name="clickOK" value="GO">
                            </form> -->
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" width="100%" cellspacing="0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th></th>
                                            <th>Mã loại</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Hình ảnh</th>
                                            <th>Giá niêm yết</th>
                                            <th>Giá bán</th>
                                            <th>Số lượng</th>
                                            <th>Màu sắc</th>
                                            <th>Kích thước</th>
                                            <th>Lượt xem</th>
                                            <th>Danh mục</th>
                                            <th>Trạng thái</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            foreach($list_sp as $sp){
                                                extract($sp);
                                                // print_r($sp);
                                                $tinh_trang= '';
                                                $tinh_trang = ($so_luong <= 0)? "hết hàng" : "còn hàng";
                                                $suasp = "index.php?act=update_sp&idsp=" . $id;
                                                $hard_delete = "index.php?act=hard_delete&idsp=" . $id;
                                                $soft_delete = "index.php?act=soft_delete&idsp=" . $id;
                                                $hinhpath = "../upload/".$img;

                            if (is_file($hinhpath)) {
                                $hinhpath = "<img src= '" . $hinhpath . "' width='100px' height='100px'>";
                            } else {
                                $hinhpath = "No file img!";
                            }

                            echo '
                                                <tr>
                                                    <td class="align-middle text-center"><input type="checkbox" name="select" id=""></td>
                                                    <td class=" align-middle text-center">' .$id. '</td>
                                                    <td class="col-3 align-middle">' .$name. '</td>
                                                    <td class="col-2 align-middle">' .$hinhpath.'</td>
                                                    <td class="col-2 align-middle">' .$price_niemyet. '</td>
                                                    <td class="col-2 align-middle">' .$price_sale. '</td>
                                                    <td class="col-1 align-middle">'.$so_luong.'</td>                 
                                                    <td  class="col-1 align-middle">'.$mau_sac.'</td>
                                                    <td  class="col-1 align-middle">'.$kich_thuoc.'</td>
                                                    <td  class="col-1 align-middle">' .$luotxem. '</td>
                                                    <td  class="col-1 align-middle">' .$iddm. '</td>
                                                    <td class="col-1 align-middle">' .$tinh_trang. '</td>
                                                    <td class="col-2 align-middle"><a href="'.$suasp.'"><button class="btn btn-secondary btn-sm">Sửa</button></a> | 
                                                    <a href="'.$hard_delete.'"><button class="btn btn-secondary btn-sm">Xóa</button></a></td>
                                                </tr>
                                                ';
                        }
                        ?>
                        <!-- <tr>
                                            <td class="align-middle text-center"><input type="checkbox" name="select" id=""></td>
                                            <td class=" align-middle text-center">1</td>
                                            <td class="col-3 align-middle">OPPO Reno10 5G 8GB 256GB</td>
                                            <td class="col-2 align-middle">10.000.000 VND</td>
                                            <td  class="col-1 align-middle"><img src="" alt="err" height="60px"></td>
                                            <td  class="col-1 align-middle">10</td>
                                            <td  class="col-1 align-middle">Iphone</td>
                                            <td class="col-1 align-middle">Còn hàng</td>
                                            <td class="col-2 align-middle"><a href="?act=editsanpham"><button class="btn btn-secondary btn-sm">Sửa</button></a> | 
                                                <a href="#"><button class="btn btn-secondary btn-sm">Xóa</button></a></td>
                                                <select name="" id="">
                                                    <option  selected=""></option>
                                                </select>
                                        </tr>
                                        <tr>
                                            <td class="align-middle text-center"><input type="checkbox" name="select" id=""></td>
                                            <td class=" align-middle text-center">1</td>
                                            <td class="col-3 align-middle">OPPO Reno10 5G 8GB 256GB</td>
                                            <td class="col-2 align-middle">10.000.000 VND</td>
                                            <td  class="col-1 align-middle"><img src="" alt="err" height="60px"></td>
                                            <td  class="col-1 align-middle">10</td>
                                            <td  class="col-1 align-middle">Iphone</td>
                                            <td class="col-1 align-middle">Còn hàng</td>
                                            <td class="col-2 align-middle"><a href="?act=editsanpham"><button class="btn btn-secondary btn-sm">Sửa</button></a> | 
                                                <a href="#"><button class="btn btn-secondary btn-sm">Xóa</button></a></td>
                                        </tr> -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->