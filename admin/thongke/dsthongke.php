<!-- Begin Page Content -->
<div class="container-fluid dssp">
    <h1 class="h3 mb-2 text-gray-800 mb-5">Top 5 SP có lượt xem, bình luận cao nhất</h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <a href="?act=bieudo_binhluan"><button class="btn btn-secondary btn-sm">Xem biểu đồ</button></a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th>STT</th>
                            <th>Hình ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá bán</th>
                            <th>Lượt xem</th>
                            <th>Số bình luận</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($tk_binhluan as $key => $value) : extract($value) ?>
                            <tr>
                                <td><?= $key + 1 ?></td>
                                <td><?php if ($img != "") {
                                        echo " <img width='80px' src='../assets/img/$img'>";
                                    }  ?></td>
                                <td><?= $name ?></td>

                                <td><?= number_format($price_sale) ?>đ</td>
                                <td><?= $luotxem ?></td>
                                <td><?= $tong_binhluan ?></td>
                            </tr>
                        <?php endforeach; ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
