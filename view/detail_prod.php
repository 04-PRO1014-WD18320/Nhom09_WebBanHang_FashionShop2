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


            <form action="?act=add_to_cart" method="post">
                <!-- <?php echo $id_bt_sanpham = $sanpham['id_bt_sanpham']; ?> -->
                <div class="color_sp">
                    <p class="bold">Màu:</p>
                    <div class="mau_sac">
                        <ul>
                            <?php
                            foreach ($colors as $color) {
                                echo '<li><a class="' . $color['value'] . '" href="#" ></a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <div class="size_sp">
                    <p class="bold">Size:</p>
                    <ul>
                        <?php
                        foreach ($sizes as $size) {
                            echo '<li><a href="#" >' . $size['value'] . '</a></li>';
                        }
                        ?>
                    </ul>
                </div>
                <!--  -->
                <div>
                    <label for="">Số lượng: </label>
                    <input type="number" min="1" max="<?php echo $sanpham['so_luong'] ?>" name="so_luong" value="1">
                </div>
                <div class="add_cart">

                    <input type="text" name="id" value="<?= $sanpham['id']  ?>">
                    <input type="text" name="name" value="<?= $sanpham['name']  ?>">
                    <input type="text" name="img" value="<?= $sanpham['img']  ?>">
                    <input type="text" name="price_sale" value="<?= $sanpham['price_sale'] ?>">
                    <input type="text" name="id_mau_sac" id="selected_color_id">
                    <input type="text" name="id_kich_thuoc" id="selected_size_id">
                    <input type="text" name="so_luong" id="selected_quantity" value="1">
                    <input type="text" name="id_bt_sanpham" value="<?= $id_bt_sanpham ?>">
                
                    <button type='submit' name='btnSubmit'>Thêm vào giỏ hàng</button>

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
        <ul>
            <?php foreach ($sanpham_tt as $value) : ?>
                <li>
                    <div class="img_prod">
                        <a href="?act=chitietsp&idsp=<?php echo $value['id']; ?>">
                            <img width="100px" src="../assets/img/<?php echo $value['img']; ?>" alt="">
                        </a>
                    </div>
                    <div class="name_prod">
                        <a href="?act=chitietsp&idsp=<?php echo $value['id']; ?>"><?php echo $value['name']; ?></a>
                    </div>
                </li>
            <?php endforeach;  ?>

            <!-- <li>
                <div class="img_prod">
                    <a href="">
                        <img width="100px" src="../assets/img/Áo Polo NEWSEVEN Glitch Polo PL.145.jpg" alt="">
                    </a>
                </div>
                <div class="name_prod">
                    <a href=""> Áo Polo NEWSEVEN Glitch Polo</a>
                </div>
            </li>
            <li>
                <div class="img_prod">
                    <a href="">
                        <img width="100px" src="../assets/img/Áo Polo NEWSEVEN Glitch Polo PL.145.jpg" alt="">
                    </a>
                </div>
                <div class="name_prod">
                    <a href=""> Áo Polo NEWSEVEN Glitch Polo</a>
                </div>
            </li> -->

        </ul>

    </div>
</div>
</div>
</body>