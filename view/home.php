<div class="container-fluid">
        <div class="hero-slider swiper-container">
            <div class="swiper-wrapper">
                <div class="hero-slide-item swiper-slide">
                    <div class="hero-slide-bg">
                        <img src="../uploads/banner.jpg" alt="Slider Image" width = "100%" />
                    </div>
<div class="service-area pb-70 mt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-30">
                <div class="service-wrap" data-aos="fade-up" data-aos-delay="200">
                    <div class="service-img">
                        <img src="../assets/giao_dien_home/assets/images/icon-img/car.png" alt="">
                    </div>
                    <div class="service-content">
                        <h3>Giao Nhanh Miễn Phí</h3>
                        <p>Với Đơn Hàng Trên 100K</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-30">
                <div class="service-wrap" data-aos="fade-up" data-aos-delay="400">
                    <div class="service-img">
                        <img src="../assets/giao_dien_home/assets/images/icon-img/time.png" alt="">
                    </div>
                    <div class="service-content">
                        <h3>Hỗ Trợ 24/7</h3>
                        <p>Nhiệt Tình</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-30">
                <div class="service-wrap" data-aos="fade-up" data-aos-delay="600">
                    <div class="service-img">
                        <img src="../assets/giao_dien_home/assets/images/icon-img/dollar.png" alt="">
                    </div>
                    <div class="service-content">
                        <h3>Đổi Hàng Miễn Phí</h3>
                        <p>Hỗ trợ đổi SIZE – MÀU trong 7 ngày </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-30">
                <div class="service-wrap" data-aos="fade-up" data-aos-delay="800">
                    <div class="service-img">
                        <img src="../assets/giao_dien_home/assets/images/icon-img/discount.png" alt="">
                    </div>
                    <div class="service-content">
                        <h3>Siêu Giảm Giá</h3>
                        <p>Giảm Giá Đơn Hàng</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="product-area pb-95">
    <div class="container">
        <div class="section-border section-border-margin-1" data-aos="fade-up" data-aos-delay="200">
            <div class="section-title-timer-wrap bg-white">
                <div class="section-title-1">
                    <h2>Hot Sale Hôm Nay</h2>
                </div>
                
            </div>
        </div>
        <div class="product-slider-active-1 swiper-container">
            <div class="swiper-wrapper">
            <?php foreach ($list_sp_home as $sp) : ?>
                <?php extract($sp); $delay=200; ?>
                <div class="swiper-slide">
                    <div class="product-wrap" data-aos="fade-up" data-aos-delay="<?= $delay?>">
                        <div class="product-img img-zoom mb-25">
                            <a href="?act=chitietsp&id=<?= $id?>">
                                <img src="../uploads/<?= $image?>" alt="">
                            </a>
                            <div class="product-badge badge-top badge-right badge-pink">
                                <span>-<?= $khuyenmai ?>%</span>
                            </div>
                            <div class="product-action-2-wrap">
                                <?php if($soluong>0){ ?>
                                    <button data-id="<?= $id?>" onclick="themgiohang(<?= $id?>,<?= $giakm?>)" class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Thêm Vào Giỏ Hàng</button>
                                <?php }else{ ?>
                                    <button class="product-action-btn-2">Đang hết hàng</button>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="?act=chitietsp&id=<?= $id?>"><?= $tensp?></a></h3>
                            <div class="product-price">
                                <span class="new-price"><?= number_format($giakm, 0, ',', '.')?>₫</span>
                                <span class="old-price"><?= number_format($giasp, 0, ',', '.')?>₫</span>
                            </div>
                        </div>
                    </div>
                </div>
                <?php $delay+=200;?>
            <?php endforeach; ?>
            </div>
            <div class="product-prev-1 product-nav-1" data-aos="fade-up" data-aos-delay="200"><i class="fa fa-angle-left"></i></div>
            <div class="product-next-1 product-nav-1" data-aos="fade-up" data-aos-delay="200"><i class="fa fa-angle-right"></i></div>
        </div>
    </div>
</div> 
<div class="product-area pb-60">
    <div class="container">
        <div class="section-title-tab-wrap mb-75">
            <div class="section-title-2" data-aos="fade-up" data-aos-delay="200">
                <h2>Sản Phẩm Nổi Bật</h2>
            </div>
        </div>
        <!--Danh mục-->
        <div id="pro-1" class="tab-pane">
            <div class="row">
                <?php foreach ($list_sp_nb as $sp) : ?>
                <?php extract($sp);?>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                        <div class="product-wrap mb-35" data-aos="fade-up" data-aos-delay="200">
                            <div class="product-img img-zoom mb-25">
                                <a href="?act=chitietsp&id=<?= $id?>">
                                    <img src="../uploads/<?= $image?>" alt="">
                                </a>
                                <div class="product-badge badge-top badge-right badge-pink">
                                    <span>-<?= $khuyenmai ?>%</span>
                                </div>
                                <div class="product-action-2-wrap">
                                    <?php if($soluong>0){ ?>
                                        <button data-id="<?= $id?>" onclick="themgiohang(<?= $id?>,<?= $giakm?>)" class="product-action-btn-2" title="Add To Cart"><i class="pe-7s-cart"></i> Thêm Vào Giỏ Hàng</button>
                                    <?php }else{ ?>
                                        <button class="product-action-btn-2">Đang hết hàng</button>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="?act=chitietsp&id=<?= $id?>"><?= $tensp?></a></h3>
                                <div class="product-price">
                                    <span class="new-price"><?= number_format($giakm, 0, ',', '.')?>₫</span>
                                    <span class="old-price"><?= number_format($giasp, 0, ',', '.')?>₫</span>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>