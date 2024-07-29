<?php
session_start();
include("../db.php");

$error = "";
$success = "";
if(isset($_POST['btn_save']))
{
    $product_name=$_POST['product_name'];
    $details=$_POST['details'];
    $price=$_POST['price'];
    $c_price=$_POST['c_price'];
    $product_type=$_POST['product_type'];
    $tags=$_POST['tags'];
    $offer_price=$_POST['offer_price'];

    //picture coding
    $picture_name=$_FILES['picture']['name'];
    $picture_type=$_FILES['picture']['type'];
    $picture_tmp_name=$_FILES['picture']['tmp_name'];
    $picture_size=$_FILES['picture']['size'];

    if($picture_type=="image/jpeg" || $picture_type=="image/jpg" || $picture_type=="image/png" || $picture_type=="image/gif")
    {

        $pic_name=time()."_".$picture_name;
        move_uploaded_file($picture_tmp_name,"../product_images/".$pic_name);

        mysqli_query($con,"insert into products (product_cat,offer_price,product_title,product_price, product_desc, product_image,product_keywords) values ('$product_type','$offer_price','$product_name','$price','$details','$pic_name','$tags')") or die ("query incorrect");

        $success = "Product created successfully";
    }else{
        $error = "Image format should be jpeg or jpg or png";
    }

    mysqli_close($con);
}
include "sidenav.php";
include "topheader.php";
?>
    <!-- End Navbar -->
    <div class="content">
        <div class="container-fluid">
            <form action="/admin/addproduct.php" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-12">
                        <?php
                        if($error != ""){

                            ?>
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <?php echo $error; ?>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <?php
                        }
                        ?>

                        <?php
                        if($success != ""){

                            ?>
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <?php echo $success; ?>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                    <div class="col-md-7">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h5 class="title">Add Product</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Product Title</label>
                                            <input type="text" id="product_name" required name="product_name" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="">
                                            <label for="">Add Image</label>
                                            <input type="file" name="picture" required class="btn btn-fill btn-success" id="picture" >
                                        </div>
                                    </div>
                                    <div class="col-md-12 mt-3">
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea rows="4" cols="80" id="details" required name="details" class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Regular Pricing</label>
                                            <input type="number" id="price" name="price" required class="form-control" >
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Offer Pricing</label>
                                            <input type="number" id="price" name="offer_price" required class="form-control" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h5 class="title">Categories</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Product Category</label>
                                            <select class="form-control" id="product_type" name="product_type" style="background: #202940">
                                                <option value="1">History Book</option>
                                                <option value="2">Children Book </option>
                                                <option value="3">Education Book</option>
                                                <option value="4">Science Book</option>
                                                <option value="5">Technology Book</option>
                                                <option value="6">Cartoon Book</option>
                                                <option value="7">Religious Book</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Product Keywords</label>
                                            <input type="text" id="tags" name="tags" required class="form-control" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="submit" id="btn_save" name="btn_save" class="btn btn-fill btn-primary">Create Product</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
<?php
include "footer.php";
?>