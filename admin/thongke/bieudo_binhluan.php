<!-- Begin Page Content -->
<div class="container-fluid dssp">
    <h1 class="h3 mb-2 text-gray-800 mb-5">Top 5 SP có lượt xem, bình luận cao nhất</h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <a href="?act=dsthongke"><button class="btn btn-secondary btn-sm">Trở về</button></a>
        </div>
        <div class="card-body">

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
                            ['Sản phẩm', 'Lượt xem'],
                            <?php
                            $tongbl = count($tk_binhluan);
                            $i = 1;
                            foreach ($tk_binhluan as $thongke) {
                                extract($thongke);
                                if ($i == $tongbl) $dauphay = "";
                                else $dauphay = ",";
                                // echo "['$name', '$soluong'],";
                                echo "['" . $thongke['name'] . "', " . $thongke['luotxem'] . "]" . $dauphay;
                                $i += 1;
                            }
                            ?>
                        ]);


                        var options = {
                            title: 'Biểu đồ thống kê lượt xem sản phẩm',
                            is3D: true,
                        };

                        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                        chart.draw(data, options);
                    }
                </script>
                <div id="piechart_3d" style="width:100%; width:1000px; height:500px; align-items: center">
                </div>
            </div>
            <!--  -->
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
                            ['Sản phẩm', 'Bình luận'],
                            <?php
                            $tongbl = count($tk_binhluan);
                            $i = 1;
                            foreach ($tk_binhluan as $thongke) {
                                extract($thongke);
                                if ($i == $tongbl) $dauphay = "";
                                else $dauphay = ",";
                                // echo "['$name', '$soluong'],";
                                echo "['" . $thongke['name'] . "', " . $thongke['tong_binhluan'] . "]" . $dauphay;
                                $i += 1;
                            }
                            ?>
                        ]);


                        var options = {
                            title: 'Biểu đồ thống kê tổng số bình luận sản phẩm',
                            is3D: true,
                        };

                        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d2'));
                        chart.draw(data, options);
                    }
                </script>
                <div id="piechart_3d2" style="width:100%; width:1000px; height:500px; align-items: center">
                </div>
            </div>

        </div>
    </div>

</div>