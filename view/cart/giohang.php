<div class="cart-area pt-100 pb-100">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form action="#">
                    <div class="cart-table-content">
                        <div class="table-content table-responsive">
                            <table>

                                <thead>
                                    <tr class="giohangthead">
                                        <th class=""></th>
                                        <th class="width-thumbnail"></th>
                                        <th class="width-name">Sản phẩm</th>
                                        <th class="width-price">Đơn giá</th>
                                        <th class="width-quantity">Số lượng</th>
                                        <th class="width-subtotal">Số tiền</th>
                                        <th class="width-remove"></th>
                                    </tr>
                                </thead>

                                <tbody class="giohangtbody">
                                    
                                    <?php
                                        $tongthanhtoan=0;
                                        if(isset($listgh)){
                                            foreach ($listgh as $giohang) {
                                                extract($giohang);
                                                echo '<tr class="trgiohang">
                                                        <td class="">
                                                            <input type="checkbox" name="id" value="">
                                                        </td>
                                                        <td class="product-thumbnail">
                                                            <a href="?act=chitietsp&id='.$idsanpham.'"><img src="../uploads/'.$image.'" alt=""></a>
                                                        </td>
                                                        <td class="product-name">
                                                            <h5><a href="?act=chitietsp&id='.$idsanpham.'">'.$tensp.'</a></h5>
                                                        </td>
                                                        <td class="product-cart-price"><span class="amount">'.number_format($giakm, 0, ',', '.').'₫</span></td>
                                                        <td class="cart-quality">
                                                            <div class="product-quality">
                                                                <input data-id="'.$id.'" type="hidden"  name="id" value="'.$id.'">
                                                                <input data-id="'.$id.'" type="hidden"  name="idsp" value="'.$idsanpham.'">
                                                                <input type="hidden" name="giakm" value="'.$giakm.'">
                                                                <input data-id="'.$id.'" type="hidden" class="thanhtienjs" name="thanhtien" value="'.$thanhtien.'">
                                                                <div  class="dec qtybutton">-</div>
                                                                <input data-id="'.$id.'" class="cart-plus-minus-box input-text qty text" name="qtybutton" value="'.$soluong.'">
                                                                <div  class="inc qtybutton">+</div>
                                                            </div>
                                                        </td>
                                                        <td class="product-total"><span data-id="'.$id.'">'.number_format($thanhtien, 0, ',', '.').' ₫</span></td>
                                                        <td class="product-remove"><a href="?act=xoagiohang&id='.$idsanpham.'"><i class=" ti-trash "></i></a></td>
                                                    </tr>';
                                                $tongthanhtoan+=$thanhtien;
                                            }
                                        }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="cart-shiping-update-wrapper">
                                <div class="cart-clear btn-hover">
                                    <a href="?act=xoagiohang">Xóa tất cả giỏ hàng</a>
                                </div>
                                <div class="grand-total-wrap col-md-5">
                                    <div class="grand-total-content">
                                        <div class="grand-total">
                                            <h4>Tổng thanh toán <span id="tongthanhtoan"><?=number_format($tongthanhtoan, 0, ',', '.');?> đ</span></h4>
                                        </div>
                                    </div>
                                    <div class="grand-total-btn btn-hover">

                                        <?php
                                            if(isset($_SESSION['user'])){
                                                if(isset($countgh)){
                                                    if($countgh['COUNT(*)']==0) $tieptucdathang="#";
                                                    else $tieptucdathang="?act=tieptucdathang";
                                                }
                                            }else{
                                                $tieptucdathang="?act=dangnhap";
                                            }
                                        ?>

                                        <a class="btn btn-primary" href="<?=$tieptucdathang?>">Tiếp tục đặt hàng</a>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>