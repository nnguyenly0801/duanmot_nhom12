<?php extract($donhang);?>
<section class="h-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div style="width: 100%; font-size: 20px" class="col-lg-10 col-xl-8">
                <div class="card" style="border-radius: 10px;">
                    <div class="card-header text-center chitiethuydon">
                        <div class="cart-shiping-update">
                            <a style="float: left;" href="?act=lichsumuahang"><i class="fa-solid fa-arrow-left"></i> Quay lại</a>
                            <span style="float: right; color:#000;">yêu cầu vào: <span style="margin-left:10px;"><?= $ngaydathang;?></span></span>
                        </div>
                    </div>
                    <div id="tap1" class="card-body p-4 an">
                        <div class="card shadow-0 border mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <?php foreach($listctdh as $ct) : ?>
                                        <div class="col-md-2">
                                            <img src="../uploads/<?= $ct['image'];?>" class="img-fluid" alt="Err">
                                        </div>
                                        <div style="width: 40.666667%;" class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                            <a style="font-size:20px" class="text-muted mb-0"><?= $ct['tensp'];?></a>
                                        </div>
                                        <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                            <p class="text-muted mb-0 small">Số lượng: <?= $ct['soluong'];?></p>
                                        </div>
                                        <div style="width: 22%; display: flex;" class="col-md-2 text-center justify-content-center align-items-center">
                                            <p style="font-size: 18px;" class="text-muted mb-0">Tổng tiền: <?= number_format($ct['thanhtien'],0,',','.');?>đ</p>
                                        </div>
                                        <hr class="mb-4 mt-2" style="background-color: #e0e0e0; opacity: 1;">
                                    <?php endforeach; ?>
                                        <div style="display: inline-block;" class="row align-items-center">
                                            <div class="col-md-2">
                                            <?php if($phuongthuctt==0) $phuongthuctt="COD"; else $phuongthuctt="Thanh toán VNPay";?>
                                                <p style="width: 500px;" class="text-muted mb-0 small">Đã hủy bởi: <span style="color:#000;"><?= $_SESSION['user']['tendangnhap'];?></span></p>
                                                <p style="width: 500px;" class="text-muted mb-0 small">Phương thức thanh toán: <span style="color:#000;"><?= $phuongthuctt;?></span></p>
                                                <p style="width: 500px;" class="text-muted mb-0 small">Mã đơn hàng: <span style="color:#000;">TB-<?= $id;?></span></p>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>