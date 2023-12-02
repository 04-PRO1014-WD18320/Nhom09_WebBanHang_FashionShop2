

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <h1 class="h3 mb-2 text-gray-800 mb-5">Danh sách đơn hàng</h1>
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
                                            <th>Mã ct_đơn hàng</th>
                                            <th>img</th>
                                            <th>tên sp</th>
                                            <th>màu sắc</th>
                                            <th>kích thước</th>
                                            <th>số lượng</th>
                                            <th>Giá</th>
                                            <th>Ngày đặt hàng</th>
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <?php
                                        // $list_donhang = loadall_donhang();
                                            foreach($list_ct_dh as $hd){
                                                extract($hd);
                                                echo '
                                                <tr>
                                                    <td class=" col-1 text-center align-middle"><input type="checkbox" name="select" id=""></td>
                                                    <td class="col-1 align-middle">'.$id.'</td>
                                                    <td class="col-2 align-middle"><img src="../upload/'.$img.'" alt="" width="100px"></td>
                                                    <td class="col-2 align-middle">'.$tensp.'</td>
                                                    <td class="col-2 align-middle">'.$mau_sac.'</td>
                                                    <td class="col-1 align-middle">'.$kich_thuoc.'</td>
                                                    <td class="col-1 align-middle">'.$so_luong.'</td>
                                                    <td  class="col-2 align-middle">'.number_format($gia).'VND</td>
                                                    <td class="col-1 align-middle">'.$ngay_mua.'</td>
                                                    <td class="col-2 align-middle">
                                                        
                                                        <a href="index.php?act=ct_donhang&iddh='.$id.'"><button class="btn btn-secondary btn-sm">hủy</button></a></td>
                                                </tr>
                                                ';

                                            }
                                        ?>
                                        <!-- <tr>
                                            <td class=" col-1 text-center align-middle"><input type="checkbox" name="select" id=""></td>
                                            <td class="col-1 align-middle">DCM-1</td>
                                            <td class="col-2 align-middle">Nguyễn Văn Cường</td>
                                            <td class="col-1 align-middle">1</td>
                                            <td  class="col-2 align-middle">10.000.000 VND</td>
                                            <td  class="col-2 align-middle">Đơn hàng mới</td>
                                            <td class="col-1 align-middle">27/07/2004</td>
                                            <td class="col-2 align-middle"><a href="#"><button class="btn btn-secondary btn-sm">Sửa</button></a> | 
                                                <a href="#"><button class="btn btn-secondary btn-sm">Hủy</button></a></td>
                                        </tr>
                                        <tr>
                                            <td class=" col-1 text-center align-middle"><input type="checkbox" name="select" id=""></td>
                                            <td class="col-1 align-middle">DCM-1</td>
                                            <td class="col-2 align-middle">Nguyễn Văn Cường</td>
                                            <td class="col-1 align-middle">1</td>
                                            <td  class="col-2 align-middle">10.000.000 VND</td>
                                            <td  class="col-2 align-middle">Đơn hàng mới</td>
                                            <td class="col-1 align-middle">27/07/2004</td>
                                            <td class="col-2 align-middle"><a href="#"><button class="btn btn-secondary btn-sm">Sửa</button></a> | 
                                                <a href="#"><button class="btn btn-secondary btn-sm">Hủy</button></a></td>
                                        </tr> -->
                                    </tbody>
                                </table> 
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- /.container-fluid -->
          