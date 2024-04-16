<div class="container-fluid">
    <div class="row">

        <div class="col-sm bg-primary text-white p-3">
            <h4>Số người dùng: <span> <?= $counttk['soluongtk'] ?> <i class="fa-solid fa-users "></i> </span></h4>

        </div>

        <div class="col-sm bg-dark text-white p-3">
            <h4>Số sản phẩm: <span> <?= $listsp['sosp'] ?> <i class="fa-solid fa-glasses fa-1x"></i> </span></h4>

        </div>
        <div class="col-sm bg-primary text-white p-3">
            <h4>Số bình luận: <span> <?= $listbl['countbl'] ?> <i class="fa-solid fa-comment fa-1x"></i></span></h4>

        </div>
        <div class="col-sm bg-dark text-white p-3">
            <h4>Số đơn hàng hoàn thành: <span> <?= $listdh['dhhoanthanh'] ?> <i class="fa-solid fa-cart-shopping fa-1x"></i> </span></h4>
        </div>
    </div>
</div>
</div>


<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800 mb-2 mt-5">Danh sách thống kê doanh thu 365 ngày qua</h1>
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th>Ngày tháng</th>
                            <th>Tổng số đơn hàng</th>
                            <th>Doanh thu</th>
                            <th>Số lượng bán</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($listthongke as $thongke) {
                            extract($thongke);
                            echo '<tr>
                                            <td>' . $ngaydat . '</td>
                                            <td>' . $donhang . '</td>
                                            <td>' . number_format($doanhthu, 0, ',', '.') . 'đ</td>
                                            <td>' . $soluongban . '</td>
                                        </tr>';
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </form>
</div>

<div id="myChart" style="width:100%; height:900px;"></div>

<script>
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
const data = google.visualization.arrayToDataTable([
    ['Tên sản phẩm', 'Số lượng sản phẩm'],
                <?php 
                $tongsp = count($listthongkesp);
                $i=1;
                foreach ($listthongkesp as $thongke) {
                    extract($thongke);
                    if($i == $tongsp) $dauphay = ""; else $dauphay = ",";
                echo "['".$thongke['tensp']."', ".$thongke['soluong']."]".$dauphay;
                $i+=1;
                }
                ?>
                
            ]);

const options = {
  title:'Thống kê số lượng sản phẩm'
};

const chart = new google.visualization.BarChart(document.getElementById('myChart'));
  chart.draw(data, options);
}
</script>