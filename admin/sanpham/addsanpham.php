<!-- Begin Page Content -->
<div class="container-fluid">
    <?php
        // echo (isset($_SESSION['inputCounter']))? '<br>'. $_SESSION['inputCounter'] : "";
        // var_dump($_SESSION['inputCounter']);
        $ses= (isset($_SESSION['inputCounter'])) ? $_SESSION['inputCounter'] : 1;
        // echo 'ses trong file add: '.$ses;
        // var_dump($ses);
        function checkInput($data){
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        
    ?>
    <?php echo ($thanhCong != '')? $thanhCong : ''?>
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Thêm mới sản phẩm </h1>
    </div>
    <div class="card shadow mb-4">
        <div class="card-body">
            <form action="index.php?act=add_sp" method="post" enctype="multipart/form-data" class="form">
                <div class="mb-3">
                    <label for="hovaten" class="form-label">Tên sản phẩm</label>
                    <input type="text" class="form-control" id="hovaten" name="name" placeholder="Nhập tên sản phẩm...">
                </div>
                <div class="mb-3">
                    <label for="gia" class="form-label">Giá niêm yết</label>
                    <input type="text" class="form-control" id="gia" name="price_niemyet" placeholder="Nhập giá...">
                </div>
                <div class="mb-3">
                    <label for="gia" class="form-label">Giá bán</label>
                    <input type="text" class="form-control" id="gia" name="price_sale" placeholder="Nhập giá...">
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label">Ảnh đại diện sản phẩm:</label>
                    <input type="file" name="image_main" id="image" class="form-control-file border">
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label">Ảnh chi tiết sản phẩm:</label>
                    <input type="file" name="image[]" id="image" class="form-control-file border" multiple>
                </div>
                <div class="mb-3">
                    <label for="soluong" class="form-label">Mô tả</label>
                    <textarea name="mota" id="" cols="30" rows="10"></textarea>
                </div>
                <div class="mb-3">
                    <label for="sel1">Danh mục</label>
                    <select name="iddm" class="form-control" id="sel1" >
                        <option value="0">Danh mục</option>
                        <?php
                            foreach ($list_dm as $dm) {
                                extract(array: $dm);
                                echo "
                                    <option value='$id'>$name</option>
                                ";
                            }
                        ?>
                    </select>
                </div>
                <div class="ip_bienthe">
                    <div class="mb-3">
                        <label for="sel1">Màu Sắc</label>
                        <select class="form-control" id="sel1" name="idms_0">
                            <option value="0">Color</option>
                            <?php
                            foreach ($list_ms as $ms) {
                                extract(array: $ms);
                                echo "
                                    <option value='$id'>$value</option>
                                ";
                            }
                            ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="sel1">Kích thước</label>
                        <select class="form-control" id="sel1" name="idkt_0">
                            <option value="0">Size</option>
                            <?php
                            foreach ($list_kt as $kt) {
                                extract(array: $kt);
                                echo "
                                    <option value='$id'>$value</option>
                                ";
                            }
                            ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="gia" class="form-label">Số lượng</label>
                        <input type="number" class="form-control" id="gia" name="soluong_0" placeholder="Số lượng">
                    </div>
                    <div class="add_ip">
                        <button name="add_input"><i class="fa-solid fa-plus"></i></button>
                    </div>
                    <div class="add_ip">
                        <button name="delete_input"><i class="fa-solid fa-minus"></i></button>
                    </div>
                </div>
                <?php
                if (isset($_POST['add_input'])) {
                    $name = $_POST['name'];
                    // Tăng giá trị biến session để theo dõi số lượng thẻ input
                    $_SESSION['inputCounter'] = isset($_SESSION['inputCounter']) ? $_SESSION['inputCounter'] + 1 : 1;
                }
                if(isset($_POST['delete_input'])){
                    unset($_SESSION['inputCounter']);
                }

                if (isset($_SESSION['inputCounter'])) {
                    for ($i = 1; $i <= $_SESSION['inputCounter']; $i++) {
                        echo '
                        <div class="ip_bienthe">
                            <div class="mb-3">
                                <label for="sel1">Màu Sắc'.$i.'</label>
                                <select class="form-control" id="sel1" name="idms_'.$i.'">
                                    <option value="0">Color</option>';
                                    foreach ($list_ms as $ms) {
                                        extract($ms);
                                        echo '
                                        <option value="' . $id . '">' . $value . '</option>';
                                    }
                                echo '
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="sel1">Kích thước</label>
                                    <select class="form-control" id="sel1" name="idkt_'.$i.'">
                                        <option value="0">Size</option>';

                                    foreach ($list_kt as $kt) {
                                        extract($kt);
                                        echo '
                                        <option value="' . $id . '">' . $value . '</option>';
                                    }

                                    echo '
                                    </select>
                            </div>
                            <div class="mb-3">
                                <label for="gia" class="form-label">Số lượng</label>
                                <input type="number" class="form-control" id="gia" name="soluong_'.$i.'" placeholder="Số lượng">
                            </div>
                        </div><br>';
                    }
                }
                ?>
                <div>
                    <button type="submit" name="submit" class="btn btn-success">Xác nhận</button>
                </div>
            </form>
        </div>
    </div>


</div>
<!-- /.container-fluid -->