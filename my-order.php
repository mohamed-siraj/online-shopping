<?php
include 'header.php';
include 'db.php';
$userId = $_SESSION['uid'];
?>

<div class="container">
    <br>
    <h2>My Order</h2>
    <br>
    <div class="row" style="background: #ffffff;">
        <div class="col-md-12">
            <table class="table">
                <tr class="table-header">
                    <th class="cell">Image</th>
                    <th class="cell">Order Id</th>
                    <th class="cell">Order Product Id</th>
                    <th class="cell">Product Name</th>
                    <th class="cell">Quantity</th>
                    <th class="cell">Price</th>
                </tr>

                <?php
                    $orders = [];
                    $product_query = "SELECT * FROM orders_info WHERE user_id = $userId";
                    $query = mysqli_query($con,$product_query);
                    while ($row=mysqli_fetch_array($query)) {
                        $order_id = $row['order_id'];
                        $order_product = "SELECT * FROM order_products INNER JOIN products ON products.product_id = order_products.product_id WHERE order_id = $order_id";
                        $query1 = mysqli_query($con,$order_product);
                        while ($row1=mysqli_fetch_array($query1)) {
                            ?>
                            <tr>
                                <td><img src='product_images/<?php echo $row1['product_image']; ?>' style='max-height: 50px;' alt=''></td>
                                <td><?php echo $row1['order_id']; ?></td>
                                <td><?php echo $row1['order_pro_id']; ?></td>
                                <td><?php echo $row1['product_title']; ?></td>
                                <td><?php echo $row1['qty']; ?></td>
                                <td><?php echo $row1['product_price']; ?></td>
                            </tr>
                            <?php
                        }
                    }

                ?>
            </table>
        </div>
    </div>
</div>

<?php
include 'newslettter.php';
include 'footer.php';
?>
