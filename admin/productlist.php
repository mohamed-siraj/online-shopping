<?php
session_start();
include("../db.php");
error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
    $product_id=$_GET['product_id'];
    ///////picture delete/////////
    $result=mysqli_query($con,"select product_image from products where product_id='$product_id'")
    or die("query is incorrect...");

    list($picture)=mysqli_fetch_array($result);
    $path="../product_images/$picture";

    if(file_exists($path)==true)
    {
        unlink($path);
    }
    /*this is delet query*/
    mysqli_query($con,"delete from products where product_id='$product_id'")or die("query is incorrect...");
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
            <div class="col-md-14">
                <div class="card ">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title"> Products List</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive ps">
                            <table id="product_list" class="mdl-data-table table tablesorter" style="width:100%">
                                <thead class="text-primary">
                                <tr>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th style='text-align: center'>Price</th>
                                    <th style='text-align: center'>Offer Price</th>
                                    <th style='text-align: center'>
                                        <a class=" btn btn-primary" href="addproduct.php">Add New</a>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                $result=mysqli_query($con,"select * from products");
                                while($row=mysqli_fetch_array($result)){
                                    echo "<tr><td><img src='../product_images/".$row['product_image']."' style='width:50px; height:50px; border:groove #000'></td>
                                    <td>".$row['product_title']."</td>
                                    <td style='text-align: center'>".$row['product_price']."</td>
                                   <td style='text-align: center'>".$row['offer_price']."</td>
                                   <td style='text-align: center'>
                                   <a class=' btn btn-success' href='productlist.php?product_id=".$row['product_id']."&action=delete'>Delete</a>
                                   </td></tr>";
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