<section class="_banner">
    <div class="banner" onclick="anh()">
        <img src="../assets/img/anh0.jpg" alt="" id="anh">
        <br>
        <input type="button" value="<" id="pre" onclick="back();">
        <input type="button" value=">" id="next" onclick="next();">
    </div>
</section>

<section class="hotSale">
    <div align="center" class="box-title">
        <h2>TOP 5 SẢN PHẨM YÊU THÍCH</h2>
        <!-- <hr> -->
    </div>
    <div class="post-item">
        <?php foreach ($top5 as $i => $value) : ?>
            <div class="prod">
                <a class="img-prod" href="?act=chitietsp&idsp=<?php echo $value['id'] ?>">
                    <img src="../assets/img/<?php echo $value['img'] ?>" alt="">
                </a>
                <br>
                <a href="?act=chitietsp&idsp=<?php echo $value['id'] ?>" class="name-prod"><?php echo $value['name'] ?></a> <br>
                <a class="price">
                    <span><?php echo number_format($value['price_niemyet'])  ?>đ</span>
                    <?php echo number_format($value['price_sale'])  ?>đ</a> <br>
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
</section>



<?php foreach ($dsdm as $i => $dm) : ?>
    <section class="product">
        <div class="box-title">
            <h2><?php echo $dm['name'] ?></h2>
            <hr>
        </div>

        <div class="post-item">
            <?php
            $dssp_dm = danhsach_sanphamdm($dm['id']); // Lấy danh sách sản phẩm theo danh mục
            foreach ($dssp_dm as $j => $product) : ?>
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
    </section>
<?php endforeach; ?>

