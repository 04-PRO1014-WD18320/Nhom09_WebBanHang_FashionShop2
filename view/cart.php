<div class="content">
    <div class="title_cart" align='center'>
        <h3>GIỎ HÀNG</h3>
    </div>
    <div class="gio_hang">
        <div class="row table-cart">
            <table>
                <thead>
                    <tr align="center">
                        <th class="th_tensp">Tên sản phẩm</th>
                        <th align='center'>Giá</th>
                        <th align='center'>Số lượng</th>
                        <th align='center'>Tạm tính</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $tong = 0;

                    foreach ($dscart as $key => $value) :
                        extract($value);
                        $tamtinh = $price_sale * $so_luong;
                    ?>
                        <tr>
                            <?php
                            $id_user = (empty($_SESSION['iduser'])) ? "" : $_SESSION['iduser'];
                            ?>
                            <td class='ten_sp_cart'>
                                <a href="?act=delete_sp_cart&id_cart=<?php echo $id_cart ?>&iduser=<?= $id_user ?>" class="xoa">X</a>
                                <?php echo "<img width='80' src='../assets/img/$img_sp'>"; ?>
                                <span class='name-prod'><?= $ten_sp ?>- Size: <?= $kich_thuoc ?> - Màu: <?= $mau_sac ?> </span>
                            </td>
                            <td align='center'><span><?= number_format($price_sale) ?> đ</span></td>
                            <td align='center'><input type="number" min='1' name="input_slg_cart" id="" value="<?= $so_luong ?>"></td>
                            <td align='center'><span class="text_red"><?php echo number_format($tamtinh); ?> đ</span></td>

                        </tr>
                        <?php $tong += $tamtinh ?>
                    <?php

                    endforeach; ?>

                </tbody>


            </table>
            <a href="?act=chitietsp&idsp=<?php echo $id_sp ?>" class="continue_sp">Tiếp tục xem sản phẩm</a>
        </div>

        <!--  -->
        <div class="tienhanh_thanhtoan">

            <div class="table_thanhtoan">
                <div>
                    <h3>CỘNG GIỎ HÀNG</h3>
                </div>
                <div class="flex">
                    <span class=" ml_0">Tạm tính:</span>
                    <span class="text_red mr_0 bold"><?php echo number_format($tong)  ?>đ</span>
                </div>
                <div class="flex">
                    <span class=" ml_0">Giao hàng:</span>
                    <span class="text_red mr_0 bold">Phí ship: <?php if ($tong != 0) {
                                                                    echo "25.000đ";
                                                                } else {
                                                                    echo "0đ";
                                                                }
                                                                ?></span>
                </div>
                <div class="flex">
                    <span class=" ml_0">Tổng:</span>
                    <span class="text_red mr_0 bold"><?php
                                                        if ($tong != 0) {
                                                            echo $tong_thanhtoan = number_format($tong + 25000);
                                                        } else {
                                                            echo "0";
                                                        }
                                                        ?>đ</span>
                </div>
                <?php if ($tong != 0) : ?>
                    <div>
                        <a href="index.php?act=thanhtoan" class='pay btn'>Thanh toán</a>
                    </div>
                <?php endif; ?>

            </div>
        </div>

    </div>
</div>