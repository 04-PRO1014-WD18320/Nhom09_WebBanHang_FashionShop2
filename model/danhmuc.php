<?php  
    function danhsach_danhmuc() {
        $sql = "SELECT * FROM danhmuc";
        $result = pdo_query($sql);
        return $result;
    }

    function one_danhmuc($iddm) {
        $sql = "SELECT * from danhmuc where id = $iddm";
        $result = pdo_query_one($sql);
        return $result;
    }
   

    function add_danhmuc($tendm){
        $sql = "INSERT INTO danhmuc(`name`) VALUES ('$tendm') ";
        pdo_execute($sql);
    }

    function delete_danhmuc($iddm){
        $sql = "DELETE FROM danhmuc WHERE id =" . $iddm;
        pdo_execute($sql);
        header("location: ?act=dsdm");
    }

    function edit_danhmuc($iddm, $name){
       $sql = "UPDATE danhmuc SET name = '$name' WHERE id = $iddm";
       pdo_execute($sql);
       header("location: ?act=dsdm");

    }
