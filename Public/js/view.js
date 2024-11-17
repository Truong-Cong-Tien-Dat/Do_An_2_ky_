// click submenu
document.getElementById("main-menu").addEventListener("click", function(event) {
    event.preventDefault(); 
    const submenu = document.getElementById("sub-menu");
    if (submenu.style.display === "none" || submenu.style.display === "") {
        submenu.style.display = "block";
    } else {
        submenu.style.display = "none";
    }
});
    

//  click xem thêm sản phẩm
        document.addEventListener('DOMContentLoaded', () => {
const products = document.querySelectorAll('.pro');
const loadMoreButton = document.getElementById('load-more');
let visibleProducts = 5;  
function showProducts() {

    products.forEach((product, index) => {
        if (index < visibleProducts) {
            product.style.display = 'block';
        }
    });

    if (visibleProducts >= products.length) {
        loadMoreButton.style.display = 'none';
    }
}


loadMoreButton.addEventListener('click', () => {
    visibleProducts += 5;  
    showProducts();        
});


showProducts();
});

