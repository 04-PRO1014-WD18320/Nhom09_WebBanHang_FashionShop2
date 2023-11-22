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
                  ?>
                    <?php foreach ($dscart as $key => $value) :
                       extract($value);
                       $tamtinh = $price_sale * $so_luong;
                    ?>
                        <tr>
                            <td class='ten_sp_cart'>
                                <a href="?act=delete_sp_cart&id_cart=<?php echo $id_cart ?>" class="xoa">X</a>
                                <?php echo "<img width='80' src='../assets/img/$img_sp'>"; ?>
                                <span class='name-prod' ><?= $ten_sp ?> - Màu:<?= $mau_sac ?> - Size:<?= $kich_thuoc ?></span>
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
            <a href="?act=chitietsp&idsp=31" class="continue_sp">Tiếp tục xem sản phẩm</a>
        </div>

        <!--  -->
        <div class="tienhanh_thanhtoan">

            <div class="table_thanhtoan">
                <div>
                    <h3>CỘNG GIỎ HÀNG</h3>
                </div>
                <div class="flex">
                    <span class=" ml_0">Tạm tính:</span>
                    <span class="text_red mr_0 bold"><?php echo number_format($tong)  ?></span>
                </div>
                <div class="flex">
                    <span class=" ml_0">Giao hàng:</span>
                    <span class="text_red mr_0 bold">Phí ship: 25.000đ</span>
                </div>
                <div class="flex">
                    <span class=" ml_0">Tổng:</span>
                    <span class="text_red mr_0 bold"><?php echo $tong_thanhtoan = number_format($tong + 25000) ?></span>
                </div>
                <div>
                    <a href="" class='pay btn'>Thanh toán</a>
                </div>

            </div>
        </div>

    </div>
</div>