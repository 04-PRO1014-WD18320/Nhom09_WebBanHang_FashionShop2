<!-- Begin Page Content -->
<div class="container-fluid">
    <?php
        if(is_array($sanpham)){
            extract($sanpham);
        }
        
        $hinh_main="../upload/".$img;
        // echo $hinh_main;
        if(is_file($hinh_main)){
            $hinh_main="<img src='".$hinh_main."' width='100px' height='100px'>";
        }else{
            $hinh_main="No file img!";
        }
        
    ?>
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Sửa sản phẩm</h1>
    </div>
    <div class="card shadow mb-4">
        <div class="card-body">
            <form action="index.php?act=sua_sp" method="post" enctype="multipart/form-data" class="form">
                <input type="number" hidden name="id" value="<?=$id?>">
                <div class="mb-3">
                    <label for="hovaten" class="form-label">Tên sản phẩm</label>
                    <input type="text" required class="form-control" id="hovaten" name="name" value="<?=$name?>">
                </div>
                <div class="mb-3">
                    <label for="gia" class="form-label">Giá niêm yết</label>
                    <input type="text" required class="form-control" id="gia" name="price_niemyet" value="<?=$price_niemyet?>">
                </div>
                <div class="mb-3">
                    <label for="gia" class="form-label">Giá bán</label>
                    <input type="text" required class="form-control" id="gia" name="price_sale" value="<?=$price_sale?>">
                </div>
                <?=$hinh_main?>
                <div class="mb-3">
                    <label for="image" class="form-label">Ảnh đại diện sản phẩm:</label>
                    <input type="file" required name="image_main" id="image" class="form-control-file border">
                </div>
                <div class="flex_img">
                    <?php
                        foreach($anh_phu as $ap){
                            extract($ap);
                            echo "<img src='../upload/".$url."' width='100px' height='100px'><br>";
                            // echo $url.',';
                        }
                    ?>
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label">Ảnh chi tiết sản phẩm:</label>
                    <input type="file" required name="image[]" id="image" class="form-control-file border" multiple>
                </div>
                <div class="mb-3">
                    <label for="soluong" class="form-label">Mô tả</label>
                    <textarea name="mota" id="" cols="30" rows="10"><?=$mota?></textarea>
                </div>
                <div class="mb-3">
                    <label for="sel1">Danh mục</label>
                    <select name="iddm" class="form-control" id="sel1" required>
                        <option value="0">Danh mục</option>
                        <?php
                            $slt = '';
                            foreach ($list_dm as $dm) {
                                extract(array: $dm);
                                $slt = ($id == $iddm)? "selected" :"";
                                echo "
                                    <option $slt value='$id'>$name</option>
                                ";
                            }
                        ?>
                    </select>
                </div>
                
                <?php
                    if(isset($bienThe_update)){
                        extract($bienThe_update);
                        // echo "<pre>";
                        // print_r($bienThe_update);
                        // echo $bienThe_update['soluong'];
                    }
                    if(isset($so_bt)){
                        extract($so_bt);
                        // echo "<pre>";
                        // print_r($so_bt);
                        // echo $so_bt['so_bt'];
                    }
                    $i = 0;

                    foreach($so_bt as $bt){
                        $i+= $bt['so_bt'];
                    }
                    echo $i;
                    $slt_ms = '';
                    $slt_kt = '';
                    for($j = 0; $j < $i; $j++){
                        // echo 'lần';
                        // echo $bienThe_update[$j]['so_luong'];
                        // echo $bienThe_update[$j]['id_mau_sac'];
                        echo '
                        <div class="ip_bienthe">
                    <div class="mb-3">
                        <label for="sel1">Màu Sắc</label>
                        <select class="form-control" id="sel1" name="idms'.$j.'">
                            <option value="0">Color</option>';
                            
                            foreach ($list_ms as $ms) {
                                extract(array: $ms);
                                $slt_ms = ($bienThe_update[$j]['id_mau_sac'] == $id)? 'selected': '';
                                echo "
                                    <option $slt_ms value='$id'>$value</option>
                                ";
                            }
                    echo '        
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="sel1">Kích thước</label>
                        <select class="form-control" id="sel1" name="idkt'.$j.'">
                            <option value="0">Size</option>';
                    
                            foreach ($list_kt as $kt) {
                                extract(array: $kt);
                                $slt_kt = ($bienThe_update[$j]['id_kich_thuoc'] == $id)? 'selected': '';
                                echo "
                                    <option $slt_kt value='$id'>$value</option>
                                ";
                            }
                    echo '
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="gia" class="form-label">Số lượng</label>
                        <input type="number" class="form-control" id="gia" name="soluong'.$j.'" value="'.$bienThe_update[$j]['so_luong'].'">
                    </div>
                    
                </div>
                        ';
                    }
                ?>
                <?php
                    
                ?>
                <!-- <div class="ip_bienthe">
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
                    
                </div> -->
                <div>
                    <button type="submit" name="submit" class="btn btn-success">Xác nhận</button>
                </div>
            </form>
        </div>
    </div>


</div>
<!-- /.container-fluid -->