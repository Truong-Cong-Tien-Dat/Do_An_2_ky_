<?php include('header.php') ?>
<?php include('navbar.php') ?>

<?php
$show_category = new catgoryModel;
$html_list_category = $show_category->show_category($data['list_category']);

$show_product = new productModel;

$html_list_product_1 = $show_product->show_product($data['list_product_1']);
$html_list_product_2 = $show_product->show_product($data['list_product_2']);
$html_list_product_3 = $show_product->show_product($data['list_product_3']);
$html_list_product_4 = $show_product->show_product($data['list_product_4']);


?>

<div id="container">
    <section id="slider">
        <img src="Public/img/slide.jpg" class="img-fluid" alt="">
    </section>

    <div id="introduce">
        <h2>ĐẶC SẢN <div class="title"> ĐÀ NẴNG</div>
        </h2>

        <p> Kết thúc chuyến đi Đà Nẵng của mình, bạn đang muốn tìm những món quà nho nhỏ về làm quà? Quả là khó để mang
            về nhà những mì Quảng, bún mắm hay bánh xèo, nhưng hãy yên tâm vì thành phố biển xinh đẹp này vẫn còn rất
            nhiều món đặc sản khô Đà Nẵng mang đầy đủ hương vị đặc trưng nơi đây.
        </p>
    </div>
    <section id="category">
        <?= $html_list_category; ?>
    </section>


    <section id="product">

        <h4>Đặc sản bánh kẹo </h4>
        <hr>
        <div class="pro-container">
            <?= $html_list_product_1; ?>

    
        </div>


        <h4>Đặc sản khô </h4>
        <hr>
        <div class="pro-container">
            <?= $html_list_product_2; ?>

           
        </div>


        <h4>Đặc sản mắm </h4>
        <hr>
        <div class="pro-container">
            <?= $html_list_product_3; ?>

         
        </div>


        <h4>Đặc sản một nắng </h4>
        <hr>
        <div class="pro-container">
            <?= $html_list_product_4; ?>
        </div>
        
    </section>
</div>

<?php include('footer.php') ?>