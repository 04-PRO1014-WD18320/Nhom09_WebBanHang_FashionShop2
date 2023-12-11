<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Trang chủ quản trị</h1>
    </div>

    <!-- Content Row -->
    <div class="row">
        <?php
        $tong_this= 0;
            foreach($tk_doanhthu_thang_nay as $this_month){
                extract($this_month);
                $tong_this+= $tong_thang;
            }
        // echo $tong_thang;
        ?>
        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                Doanh thu tháng <?php $month= date('m'); echo $month;?></div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800" style="font-size: 1rem;"><?=number_format($tong_this)?>VND</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-cart-arrow-down fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <?php
            foreach($so_bl as $bl){
                extract($bl);
            }
        ?>
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Bình luận</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?=$so_bl?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-comment-alt fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <?php
            foreach($so_tk as $tk){
                extract($tk);
            }
        ?>
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                <a href="?act=dsdonhang">Đơn hàng mới</a></div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?=$_SESSION['don_new']?></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-users fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending Requests Card Example -->
        <?php
            foreach($so_lx as $lx){
                extract($lx);
            }
        ?>
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                Nguời xem</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?=$so_lx?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-eye fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="row ">
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load("current", {
                packages: ["corechart"]
            });
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
                //Set data
                var data = google.visualization.arrayToDataTable([
                    ['tháng', 'doanh thu'],
                    <?php
                    $tong_thang_1 = 0;
                    foreach($dt_t1 as $t1){
                        extract($t1);
                        $tong_thang_1+= $tong_thang;
                    }
                    echo "['tháng 1', " . $tong_thang_1 . "],";
                    
                    $tong_thang_2 = 0;
                    foreach($dt_t2 as $t2){
                        extract($t2);
                        $tong_thang_2+= $tong_thang;
                    }
                    echo "['tháng 2', " . $tong_thang_2 . "],";
                    $tong_thang_3 = 0;
                    foreach($dt_t3 as $t3){
                        extract($t3);
                        $tong_thang_3+= $tong_thang;
                    }
                    echo "['tháng 3', " . $tong_thang_3 . "],";
                    $tong_thang_4 = 0;
                    foreach($dt_t4 as $t4){
                        extract($t4);
                        $tong_thang_4+= $tong_thang;
                    }
                    echo "['tháng 4', " . $tong_thang_4 . "],";
                    $tong_thang_5 = 0;
                    foreach($dt_t5 as $t5){
                        extract($t5);
                        $tong_thang_5+= $tong_thang;
                    }
                    echo "['tháng 5', " . $tong_thang_5 . "],";
                    $tong_thang_6 = 0;
                    foreach($dt_t6 as $t6){
                        extract($t6);
                        $tong_thang_6+= $tong_thang;
                    }
                    echo "['tháng 6', " . $tong_thang_6 . "],";
                    $tong_thang_7 = 0;
                    foreach($dt_t7 as $t7){
                        extract($t7);
                        $tong_thang_7+= $tong_thang;
                    }
                    echo "['tháng 7', " . $tong_thang_7 . "],";
                    $tong_thang_8 = 0;
                    foreach($dt_t8 as $t8){
                        extract($t8);
                        $tong_thang_8+= $tong_thang;
                    }
                    echo "['tháng 8', " . $tong_thang_8 . "],";
                    $tong_thang_9 = 0;
                    foreach($dt_t9 as $t9){
                        extract($t9);
                        $tong_thang_9+= $tong_thang;
                    }
                    echo "['tháng 9', " . $tong_thang_9 . "],";
                    $tong_thang_10 = 0;
                    foreach($dt_t10 as $t10){
                        extract($t10);
                        $tong_thang_10+= $tong_thang;
                    }
                    echo "['tháng 10', " . $tong_thang_10 . "],";
                    $tong_thang_11 = 0;
                    foreach($dt_t11 as $t11){
                        extract($t11);
                        $tong_thang_11+= $tong_thang;
                    }
                    echo "['tháng 11', " . $tong_thang_11 . "],";
                    $tong_thang_12 = 0;
                    foreach($dt_t12 as $t12){
                        extract($t12);
                        $tong_thang_12+= $tong_thang;
                    }
                    echo "['tháng 12', " . $tong_thang_12 . "]";
                    // echo "['" . $thongke['name'] . "', " . $thongke['luotxem'] . "],";
                    
                    ?>
                ]);


                var options = {
                    title: 'Biểu đồ thống kê doanh thu năm',
                    is3D: true,
                };

                var chart = new google.visualization.BarChart(document.getElementById('piechart_3d'));
                chart.draw(data, options);
            }
        </script>
        <div id="piechart_3d" style="margin-left: 80px;width:100%; width:1000px; height:500px; align-items: center">
        </div>
    </div>
</div>

<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->