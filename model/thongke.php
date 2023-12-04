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
