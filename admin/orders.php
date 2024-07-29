<?php
session_start();
include("../db.php");

error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
    $order_id=$_GET['order_id'];

    /*this is delet query*/
    mysqli_query($con,"delete from order_products where order_pro_id='$order_id'")or die("delete query is incorrect...");
}

///pagination
$page=$_GET['page'];

if($page=="" || $page=="1")
{
    $page1=0;
}
else
{
    $page1=($page*10)-10;
}

include "sidenav.php";
include "topheader.php";
?>
    <!-- End Navbar -->
    <div class="content">
        <div class="container-fluid">
            <!-- your content here -->
            <div class="col-md-14">
                <div class="card ">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Orders  / Page <?php echo $page;?> </h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive ps">
                            <table id="product_list" class="table table-hover tablesorter">
                                <thead class=" text-primary">
                                <tr>
                                    <th>Customer Name</th>
                                    <th>Address</th>
                                    <th>Contact | Email</th>
                                    <th>Products</th>
                                    <th>Qty</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                $result=mysqli_query($con,"select * from order_products,products,orders_info,user_info  where order_products.product_id=products.product_id and orders_info.order_id=order_products.order_id and user_info.user_id=orders_info.user_id")or die ("query 1 incorrect.....");

                                while($row=mysqli_fetch_array($result))
                                {
                                    echo "<tr><td>".$row['f_name']."</td><td>ADDRESS:".$row['address']."<br>CITY: ".$row['city']."<br>STATE: ".$row['state']."<br>ZIP: ".$row['zip']."</td><td>".$row['mobile']." | ".$row['email']."</td><td>".$row['product_title']."</td><td>".$row['qty']."</td><td>".$row['product_price']."</td><td>".$row['qty'] * $row['product_price']."</td><td><a class=' btn btn-danger' href='orders.php?order_id=".$row['order_pro_id']."&action=delete'>Delete</a></td></tr>";
                                }
                                ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
include "footer.php";
?>