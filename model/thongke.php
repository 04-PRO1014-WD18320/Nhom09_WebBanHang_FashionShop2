<?php
function load_thongke_binhluan()
{
    $sql = "SELECT sanpham.*, COUNT(binhluan.idpro) AS 'tong_binhluan'
    FROM sanpham 
    LEFT JOIN binhluan ON binhluan.idpro = sanpham.id
    GROUP BY sanpham.id
    ORDER BY sanpham.luotxem DESC
    LIMIT 5;
    "; // Chỉ lấy top 5 sản phẩm có số lượng cao nhất
    $result = pdo_query($sql);
    return $result;
}
function doanhthu_month_now(){
    $month = date('m');
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t1(){
    $month = 1;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t2(){
    $month = 2;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t3(){
    $month = 3;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t4(){
    $month = 4;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t5(){
    $month = 5;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t6(){
    $month = 6;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t7(){
    $month = 7;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t8(){
    $month = 8;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t9(){
    $month = 9;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t10(){
    $month = 10;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t11(){
    $month = 11;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}
function doanhthu_t12(){
    $month = 12;
    $year = date('Y');
    // echo $year;
    // echo $month;
    $sql = "SELECT *, SUM(tong) AS tong_thang
    FROM donhang
    WHERE status = 'Hoàn thành' AND EXTRACT(MONTH FROM ngay_dat_hang) = $month and
                                    EXTRACT(YEAR FROM ngay_dat_hang) = $year
    GROUP BY ngay_dat_hang;";

    $result = pdo_query($sql);
    return $result;
}