<div class="thanhtoan">
    <div class="link">GIỎ HÀNG > CHI TIẾT THANH TOÁN > HOÀN THÀNH</div>
    <div class="add_voucher">
        <p>Bạn có mã ưu đãi ? Ấn vào đây để nhập mã </p>
        <div class="ip_add_voucher">
            <p>Nếu bạn có mã giảm giá, vui lòng điền vào phía bên dưới.</p>
            <form action="" method="post">
                <input type="text" name="voucher" id="" placeholder="Mã giảm giá">
                <input type="submit" name="add_voucher" value="ÁP DỤNG">
            </form>

        </div>
    </div>
    <div class="tt_thanhtoan">
        <form action="">
            <div class="tt_user">
                <h2>THÔNG TIN THANH TOÁN</h2>

                <label for="">Họ và tên*</label>
                <input type="text" name="name" placeholder="Họ tên của bạn...">

                <div class="ip_bottom">
                    <div class="ip_in_bottom">
                        <label for="">Số điện thoại*</label>
                        <input type="number" placeholder="Số điện thoại của bạn">
                    </div>
                    <div class="ip_in_bottom">
                        <label for="">Địa chỉ email (không bắt buộc)*</label>
                        <input type="text" placeholder="Email của bạn">
                    </div>
                    <div class="ip_in_bottom">
                        <label for="">Tỉnh/Thành phố *</label>
                        <select name="" id="">
                            <option value="">hà nội</option>
                            <option value="">sài gòn</option>
                        </select>
                    </div>
                    <div class="ip_in_bottom">
                        <label for="">Quận/Huyện *</label>
                        <select name="" id="">
                            <option value="">hà nội</option>
                            <option value="">sài gòn</option>
                        </select>
                    </div>
                    <div class="ip_in_bottom">
                        <label for="">Xã/Phường *</label>
                        <select name="" id="">
                            <option value="">hà nội</option>
                            <option value="">sài gòn</option>
                        </select>
                    </div>
                    <div class="ip_in_bottom">
                        <label for="">Địa chỉ*</label>
                        <input type="text">
                    </div>
                </div>
                <label for="">Ghi chú đơn hàng (không bắt buộc)</label>
                <textarea name="" id="" cols="30" rows="10"></textarea>
            </div>
            <div class="tt_donhang">
                <h2>ĐƠN HÀNG CỦA BẠN</h2>
                <div class="space">
                    <h3>Sản phẩm</h3>
                    <h3>Tạm tính</h3>
                </div>
                <?php
                $tong = 0;
                    foreach($ds_sp_thanhtoan as $sp){
                        extract($sp);
                        $tamtinh = $so_luong * $price_sale;
                        
                        echo '
                        <div class="space">
                            <p>'.$ten_sp.' : '.$mau_sac.' : '.$kich_thuoc.' x '.$so_luong.'</p>
                            <span>'.number_format($price_sale).'đ</span>
                        </div>
                        
                        <div class="space">
                            <p>Tạm tính</p>
                            <span>'.number_format($tamtinh).'đ</span>
                        </div>

                        
                        ';
                    }   $tong+= $tamtinh;
                ?>
                <!-- <div class="space">
                    <p>áo thun newseven</p>
                    <span>220.000đ</span>
                </div> -->
                <div class="space">
                    <p>Giao hàng</p>
                    <span>25.000đ</span>
                </div>
                
                <div class="space">
                    <p>Tổng</p>
                    <span><?=number_format($tong)?>đ</span>
                </div>
                <select name="pt_thanhtoan" id="">
                    <option value="">Thanh toán khi nhận hàng</option>
                    <option value="">Thanh toán online</option>
                </select><BR>
                <input type="submit" name="dat_hang" value="ĐẶT HÀNG">
            </div>
        </form>
    </div>
</div>