<?php
function load_sp_home(){
    $query="SELECT * FROM sanpham ORDER BY id desc limit 0,10";
    return pdo_query($query);
}
function load_sp_nb(){
    $query="SELECT * FROM sanpham ORDER BY luotxem desc limit 0,8";
    return pdo_query($query);
}

function load_sp_lq($iddm){
    $query="SELECT sanpham.*, danhmuc.tendm FROM sanpham INNER JOIN danhmuc ON sanpham.iddm=danhmuc.id WHERE 1";
    if($iddm!=""){
        $query .=" AND iddm=".$iddm;
    }
    $query .=" ORDER BY id asc";
    return pdo_query($query);
}
function load_one_sp($id){
    $query="SELECT * FROM sanpham WHERE id=".$id;
    return pdo_query_one($query);
}
function load_one_spdm($iddm){
    
    $query="SELECT * FROM sanpham WHERE iddm=".$iddm;
    return pdo_query($query);

}
function dem_sp_dm($iddm){
    $query="SELECT COUNT(*) as countsp FROM sanpham WHERE iddm='$iddm'";
    return pdo_query_one($query);
}
function dem_sp(){
    $query="SELECT COUNT(*) FROM sanpham WHERE 1";
    return pdo_query_one($query);
}

function insert_sp($danhmuc, $tensp, $giasp, $image,$giakm, $soluong,$khuyenmai, $mota) {
    $conn=pdo_get_connection();
    $query_check = "SELECT COUNT(*) as count FROM sanpham WHERE image = :image OR tensp=:tensp";
    $stmt = $conn->prepare($query_check);
    $stmt->execute([':image'=> $image,':tensp'=> $tensp]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($result['count'] > 0) {
        echo '<script>
                alert("Sản phẩm đã tồn tại !");
                window.location.href="?act=addsp";
            </script>';
    } else {
        $query="INSERT INTO `sanpham`(`iddm`, `tensp`, `giasp`,`giakm`, `image`, `soluong`,`khuyenmai`, `mota`) 
        VALUES ('$danhmuc','$tensp','$giasp','$giakm','$image','$soluong','$khuyenmai','$mota')";
        $result2=pdo_execute($query);
        echo '<script>
                    alert("Bạn đã thêm sản phẩm thành công !");
                    window.location.href="?act=listsp";
                </script>';
    }
}
function update_sp($id,$danhmuc,$tensp,$giasp,$giakm,$image,$oldImage,$soluong,$khuyenmai,$mota,$trangthai){
    $conn=pdo_get_connection();
    $query="UPDATE `sanpham` SET `iddm`=:danhmuc,`tensp`=:tensp,`giasp`=:giasp,`giakm`=:giakm,`image`=:image,`soluong`=:soluong,`khuyenmai`=:khuyenmai,`mota`=:mota,`trangthai`=:trangthai WHERE `id`=:id";
    $state=$conn->prepare($query);
    $state->execute([
        ':id'=>$id,
        ':danhmuc'=>$danhmuc,
        ':tensp'=>$tensp,
        ':giasp'=>$giasp,
        ':giakm'=>$giakm,
        ':image'=>($image?$image:$oldImage),
        ':soluong'=>$soluong,
        ':khuyenmai'=>$khuyenmai,
        ':trangthai'=>$trangthai,
        ':mota'=>$mota
    ]);
}
function update_sl_sp($id,$soluong){
    $query="UPDATE sanpham SET `soluong`='$soluong' WHERE id='$id'";
    pdo_execute($query);
}
function update_luotxem_sp($id,$luotxem){
    $query="UPDATE sanpham SET `luotxem`='$luotxem' WHERE id='$id'";
    pdo_execute($query);
}
function delete_sp($id){
    $query="DELETE FROM sanpham WHERE id=".$id;
    pdo_execute($query);
}
function delete_sp_dm($id){
    $query="DELETE FROM sanpham WHERE iddm=".$id;
    pdo_execute($query);
}
function giasp_min(){
    $query="SELECT MIN(giakm) AS giaspmin FROM sanpham";
    return pdo_query_one($query);
}
function giasp_max(){
    $query="SELECT MAX(giakm) AS giaspmax FROM sanpham";
    return pdo_query_one($query);
}
function sum_luotxem(){
    $query="SELECT SUM(luotxem) FROM sanpham";
    return pdo_query_one($query);
}
?>