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
   

    function add_danhmuc($name, $id_dm){
        $sql = "INSERT INTO danhmuc (name, id_dm) VALUES ('$name', '$id_dm')";
        pdo_execute($sql);
    }
    function load_one_dm($iddm){
        $sql = "SELECT * FROM danhmuc WHERE id = $iddm";
        $result = pdo_query_one($sql);
        return $result;
    }
    function update_danhmuc( $iddm, $name, $id_Big_dm){
        $sql=  "UPDATE `danhmuc` 
        SET `name` = '{$name}', `id_dm` = '{$id_Big_dm}' 
        WHERE `danhmuc`.`id` = $iddm";
        pdo_execute($sql);
    }
    function hard_delete_danhmuc($iddm){
        $sql = "DELETE FROM danhmuc WHERE id =".$iddm;
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
