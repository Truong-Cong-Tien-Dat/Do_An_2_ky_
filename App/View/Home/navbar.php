<?php

$category = new catgoryModel;

$html_list_category = '';
$list_category = $category->get_all_category();

foreach ($list_category as $category) {
    $html_list_category .=
        '
        <li><a href="index.php?action=product&category_id= '.$category['category_id'].'">
        '.$category['category_name'].'
        </a></li>
        <hr>
        ';
}
?>
<section id="nav">
    <a href="#" class="logo">D&D</a>

    <input type="checkbox" id="menu-nav">
    <label class=" " for="menu-nav"><i class="ti-menu"></i></label>
    <nav class="navbar">
        <ul>
            <li> <a href="index.php">Trang Chủ</a></li>
            <li> <a href="#" id="main-menu" >Sản Phẩm</a>
                <ul id="sub-menu"  style="display: none;">
                    <?=$html_list_category?>
                </ul>
            </li>
            <li> <a href="index.php?action=cart"><i class="shop-icon ti-shopping-cart"></i></a></li>
            <li>
                <form action="index.php?action=search" method="post" class="d-flex search">
                    <input class="form-control me-2" name="txt_search" type="search" placeholder="Tìm kiếm" aria-label="Search">
                    <button class="btn btn-outline-success me-2" name="btn_search" type="submit">
                        <i class="ti-search"></i>
                    </button>
                </form>
            </li>
            <li>
                <button onclick="location.href='index.php?action=sign_in';" class="btn btn-primary btn-sign"
                    type="submit">Đăng Nhập</button>
            </li>
        </ul>

    </nav>
</section>
<script >
      document.getElementById("main-menu").addEventListener("click", function(event) {
        event.preventDefault(); 
        const submenu = document.getElementById("sub-menu");
        if (submenu.style.display === "none" || submenu.style.display === "") {
            submenu.style.display = "block";
        } else {
            submenu.style.display = "none";
        }
    });
</script>