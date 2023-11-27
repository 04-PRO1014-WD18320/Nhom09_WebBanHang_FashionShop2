<div class="content">
    <div class="url">
        <a href=""><?php echo "Trang chủ" . " / " . $sanpham['ten_dm']; ?></a>
    </div>

    <div class="info_prod">
        <div class="box_left">
            <!-- SlideShow ảnh sản phẩm nè  -->
            <div id="wrapper">
                <div id="wp-slider">
                    <div class="show-picture">
                        <img src="../assets/img/<?php echo $sanpham['img'] ?>" alt="">
                        <div class="slider-nav">
                            <div class="prev-btn">
                                <i class="fa-solid fa-angle-left"></i>
                            </div>
                            <div class="next-btn">
                                <i class="fa-solid fa-angle-right"></i>
                            </div>
                        </div>
                    </div>
                    <ul class="list-thumb">
                        <?php foreach ($hinhanh as $img_con) : extract($img_con); ?>
                            <li class="thumb-item"><a><img src="../assets/img/<?php echo $url ?> ?>" alt=""></a></li>
                        <?php endforeach; ?>

                    </ul>
                </div>
            </div>

        </div>
        <div class="box_right">
            <div class="name_prod">

                <h2><?php echo $sanpham['name'] ?></h2>
            </div>
            <div class="price_prod">
                <span class="price_niemyet"><?php echo number_format($sanpham['price_niemyet'], 0, ",", ".") ?>đ</span>
                <span class="price_sale"><?php echo number_format($sanpham['price_sale'], 0, ",", ".") ?>đ</span>
            </div>
            <div class="tinh_trang">
                <p>Hàng trong kho: <span><?php echo $sanpham['so_luong'] ?></span></p>
            </div>
            <div class="luot_xem">
                <p>Lượt xem: <span><?php echo $sanpham['luotxem'] ?></span></p>
            </div>
            <div class="ma_sp">
                <p>Mã: <?php echo $sanpham['id'] ?></p>
            </div>
            <div class="danh_muc">
                <p>Danh mục: <?php echo $sanpham['ten_dm'] ?></p>
            </div>
            <!--                  
                    <div>
                        <label class='chonsize' for="size">Chọn Size:</label>
                        <button class="size-button" type="button" onclick="chonSize('S')" data-size="S">S</button>
                        <button class="size-button" type="button" onclick="chonSize('M')" data-size="M">M</button>
                        <button class="size-button" type="button" onclick="chonSize('L')" data-size="L">L</button>
                        <button class="size-button" type="button" onclick="chonSize('XL')" data-size="XL">XL</button>
                    </div>
                    <div class="color-bar">
                        <label class='chonmau' for="mau">Chọn màu:</label>
                        <button class="color-button black" type="button" onclick="chonMau('black')"></button>
                        <button class="color-button white" type="button" onclick="chonMau('white')"></button>
                        <button class="color-button green" type="button" onclick="chonMau('green')"></button>
                        <button class="color-button yellow" type="button" onclick="chonMau('yellow')"></button>
                        <button class="color-button red" type="button" onclick="chonMau('red')"></button>
                    </div>    -->

            <form action="?act=add_to_cart" method="post" onsubmit="return datMua()">
                <div>
                    <label class='chonsize' for="size">Chọn Size:</label>
                    <?php
                    foreach ($bien_the as $key => $value) {
                        $buttonClass = ($value['ten_size'] !== null) ? 'size-button' : 'size-button disabled';
                        echo '<button class="' . $buttonClass . '" type="button" onclick="chonSize(\'' . $value['ten_size'] . '\')" data-size="' . $value['ten_size'] . '">' . $value['ten_size'] . '</button>';
                    }
                    ?>
                </div>
                <div class="color-bar">
                    <label class='chonmau' for="mau">Chọn màu:</label>
                    <?php
                    foreach ($bien_the as $key => $value) {
                        $buttonClass = ($value['ten_mau'] !== null) ? 'color-button ' . $value['ten_mau'] : 'color-button disabled';
                        echo '<button class="' . $buttonClass . '" type="button" onclick="chonMau(\'' . $value['ten_mau'] . '\')"> </button>';
                    }
                    ?>
                </div>

                <!--  -->
                <div>
                    <label for="">Số lượng: </label>
                    <input type="number" min="1" max="<?php echo $sanpham['so_luong'] ?>" name="so_luong" value="1" onchange="updateSelectedQuantity()">

                </div>
                <div class="add_cart">
                    <input type="text" hidden name="iduser" value="<?php echo (empty($_SESSION['iduser'])) ? "" : $_SESSION['iduser'] ?>">
                    <input type="text" hidden name="id" value="<?= $sanpham['id']  ?>">
                    <input type="text" hidden name="name" value="<?= $sanpham['name']  ?>">
                    <input type="text" hidden name="img" value="<?= $sanpham['img']  ?>">
                    <input type="text" hidden name="price_sale" value="<?= $sanpham['price_sale'] ?>">
                    <input type="text" hidden name="id_mau_sac" id="selected_color_id">
                    <input type="text" hidden name="id_kich_thuoc" id="selected_size_id">
                    <input type="text" hidden name="id_bt_sanpham" value="" id="id_bt_sanpham">

                    <?php echo (empty($_SESSION['iduser'])) ? "Bạn cần đăng nhập để mua hàng" : '' ?>
                    <button type='submit' onclick="datMua()" name='btnSubmit'>Thêm vào giỏ hàng</button>
                </div>
            </form>

            <div class="buy_now">
                <form action="?act=buy_now" method="post">
                    <button type='submit' class="buy-now" name='btnSubmit'>Mua ngay</button>
                </form>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="title_prod">
            <h2>Mô tả sản phẩm</h2>
        </div>
        <hr>
        <div class="description_prod">
            <p><?php echo $sanpham['mota'] ?></p>
        </div>
    </div>
    <div class="row binhluan">
        <div class="title_binhluan">
            <h3>Bình luận</h3>
            <hr>
        </div>

        <div class="box-content">
            <div class="name_bl">
                <i class="fa-solid fa-user"></i> <span class='name_kh_bl'>Hà Đại Dương</span>
                <p>2023-20-10 15:00:00| <span>Phân loại hàng: Áo bomber màu đen size L </span></p>
            </div>
            <div class="noidung_bl">
                <p>Sản phẩm rất tốt, dùng 3 ngày là rách </p>
            </div>


        </div>
        <div class="form_bl">
            <form action="">
                <i class="fa-solid fa-user"></i>
                <input type="text" name="content_bl" placeholder="Nhập bình luận của bạn...">
                <button type='submit' name='btnSubmit'>Gửi bình luận</button>
            </form>

        </div>



    </div>
    <div class='see_more' class="row mt">
        <h3>Xem thêm sản phẩm tương tự:</h3>
        <!-- //Xuất các sanpham cùng loại lên , cùng iddm  -->
        <div class="post-item">
            <?php foreach ($sanpham_tt as $product) : ?>
                <div class="prod">
                    <a class="img-prod" href="?act=chitietsp&idsp=<?php echo $product['id'] ?>">
                        <img src="../assets/img/<?php echo $product['img'] ?>" alt="">
                    </a>
                    <br>
                    <a href="?act=chitietsp&idsp=<?php echo $product['id'] ?>" class="name-prod"><?php echo $product['name'] ?></a> <br>
                    <a class="price">
                        <span><?php echo number_format($product['price_niemyet'])  ?>đ</span>
                        <?php echo number_format($product['price_sale'])  ?>đ</a> <br>
                    <span class="star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </span> <br>
                    <span class="favourite">Yêu thích <i class="fa-regular fa-heart"></i> </span>
                </div>
            <?php endforeach; ?>

        </div>

    </div>
</div>
</div>
</body>

<script>
    var selectedSize = '';
    var selectedColor = '';

    function chonSize(size) {
        if (selectedSize) {
            document.querySelector('.size-button.selected').classList.remove('selected');
        }
        selectedSize = size;
        document.querySelector('.size-button[data-size="' + size + '"]').classList.add('selected');
    }

    function chonMau(color) {
        if (selectedColor) {
            document.querySelector('.color-button.selected').classList.remove('selected');
        }
        selectedColor = color;
        document.querySelector('.color-button.' + color).classList.add('selected');
    }

    function updateSelectedQuantity() {
        var selectedQuantity = document.getElementsByName('so_luong')[0].value;
        document.getElementById('selected_quantity').value = selectedQuantity;
    }


    function datMua() {
        var inputIdBtSanpham = document.querySelector('input[name="id_bt_sanpham"]');

        if (selectedSize && selectedColor) {
            // alert('Đã thêm vào giỏ hàng');
        } else {
            // alert('Vui lòng chọn size và màu trước khi đặt mua!');
            return false;
        }
        if (inputIdBtSanpham.value == "") {
            alert("Sản phẩm này đang hết hàng !!");
            return false;
        }

    }
</script>
<script>
    function kiemTraSanPham() {
        var selectedSize = document.querySelector('.size-button.selected').getAttribute('data-size');
        var selectedColor = document.querySelector('.color-button.selected').classList[1];

        var bien_the = <?php echo json_encode($bien_the); ?>; // Chuyển dữ liệu PHP thành mảng JavaScript

        for (var i = 0; i < bien_the.length; i++) {
            if (bien_the[i]['ten_size'] === selectedSize && bien_the[i]['ten_mau'] === selectedColor) {
                var id_bt_sanpham = bien_the[i]['id_bt_sanpham'];
                // alert(id_bt_sanpham);
                // console.log(id_bt_sanpham);
                updateIdBtSanpham(id_bt_sanpham);
                return id_bt_sanpham;
            }
        }
        return null;
    }

    document.querySelectorAll('.size-button').forEach(function(button) {
        button.addEventListener('click', function() {
            var id_bt_sanpham = kiemTraSanPham();
            // alert("id_bt_sanpham: ", id_bt_sanpham);
        });
    });

    document.querySelectorAll('.color-button').forEach(function(button) {
        button.addEventListener('click', function() {
            var id_bt_sanpham = kiemTraSanPham();
            // alert("id_bt_sanpham: ", id_bt_sanpham);
        });
    });


    // Hàm cập nhật giá trị cho input id_bt_sanpham
    function updateIdBtSanpham(id_bt_sanpham) {
        var inputIdBtSanpham = document.querySelector('input[name="id_bt_sanpham"]');
        if (id_bt_sanpham) {
            inputIdBtSanpham.value = id_bt_sanpham;
        } else {
            inputIdBtSanpham.value = '';
        }
    }
</script>