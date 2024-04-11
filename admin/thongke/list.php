<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800 mb-5">Danh sách thống kê doanh thu 365 ngày qua</h1>
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

<!-- <canvas id="myChart" style="width:100%;max-width:600px"></canvas>

<script>
    const xValues = <?php
    $tongsp = count($listslsp);
    $i = 1;
    foreach ($listslsp as $sp) {
                            extract($sp);
                            if($i = $tongsp) $dauphay = ""; else $dauphay =",";
                            echo "[" .$sp['tensp']."]" . $dauphay;
                            $i+=1;
                        } ?>;
    const yValues = <?php
    $tongsp = count($listslsp);
    $i = 1;
    foreach ($listslsp as $sp) {
                            extract($sp);
                            if($i = $tongsp) $dauphay = ""; else $dauphay =",";
                            echo "[" .$sp['soluong']."]" . $dauphay;
                            $i+=1;
                        } ?>;
    const barColors = ["red", "green", "blue", "orange", "brown"];

    new Chart("myChart", {
        type: "bar",
        data: {
            labels: xValues,
            datasets: [{
                backgroundColor: barColors,
                data: yValues
            }]
        },
        options: {
            legend: {
                display: false
            },
            title: {
                display: true,
                text: "World Wine Production 2018"
            }
        }
    });
</script> -->