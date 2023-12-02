<!-- Begin Page Content -->
<div class="container-fluid">
    <?php
        if(is_array($sanpham)){
            extract($sanpham);
        }
        
        $hinh_main="../upload/".$img;
        echo $hinh_main;
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
                    <input type="text" class="form-control" id="hovaten" name="name" value="<?=$name?>">
                </div>
                <div class="mb-3">
                    <label for="gia" class="form-label">Giá niêm yết</label>
                    <input type="text" class="form-control" id="gia" name="price_niemyet" value="<?=$price_niemyet?>">
                </div>
                <div class="mb-3">
                    <label for="gia" class="form-label">Giá bán</label>
                    <input type="text" class="form-control" id="gia" name="price_sale" value="<?=$price_sale?>">
                </div>
                <?=$hinh_main?>
                <div class="mb-3">
                    <label for="image" class="form-label">Ảnh đại diện sản phẩm:</label>
                    <input type="file" name="image_main" id="image" class="form-control-file border">
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
                    <input type="file" name="image[]" id="image" class="form-control-file border" multiple>
                </div>
                <div class="mb-3">
                    <label for="soluong" class="form-label">Mô tả</label>
                    <textarea name="mota" id="" cols="30" rows="10"><?=$mota?></textarea>
                </div>
                <div class="mb-3">
                    <label for="sel1">Danh mục</label>
                    <select name="iddm" class="form-control" id="sel1" >
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
                    foreach($bienThe_update as $bt){
                        extract($bt);
            
                        echo '
                            <div class="ip_bienthe">
                                <div class="mb-3">';
                                // for ($i = 1; $i <= $so_bien_the; $i++){
                                //     echo '<label for="sel1">Màu Sắc'.$i.'</label>';
                                // }
                                echo '
                                    <label for="sel1">Màu Sắc'.$id_mau_sac.'</label>
                                    <select class="form-control" id="sel1" name="idms'.$id_mau_sac.'">
                                        <option value="0">Color</option>';
                                        foreach ($list_ms as $ms) {
                                            extract($ms);
                                            $slt = ($id == $id_mau_sac)? "selected" :"";
                                            echo '
                                            <option '.$slt.' value="' . $id . '">' . $value . '</option>';
                                        }
                                    echo '
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label for="sel1">Kích thước</label>
                                        <select class="form-control" id="sel1" name="idkt'.$id_kich_thuoc.'">
                                            <option value="0">Size</option>';

                                        foreach ($list_kt as $kt) {
                                            extract($kt);
                                            $slt = ($id == $id_kich_thuoc)? "selected" :"";
                                            echo '
                                            <option '.$slt.' value="' . $id . '">' . $value . '</option>';
                                        }

                                        echo '
                                        </select>
                                </div>
                                <div class="mb-3">
                                    <label for="gia" class="form-label">Số lượng</label>
                                    <input type="number" class="form-control" id="gia" name="soluong'.$so_luong.'" value="'.$so_luong.'">
                                </div>
                            </div><br>';
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