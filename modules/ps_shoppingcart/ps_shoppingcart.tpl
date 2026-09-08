<div id="blockcart" class="blockcart cart-preview saniplast-cart-btn"
         data-refresh-url="{$refresh_url}">
        <a id="cart-toogle" class="cart-toogle header-btn header-cart-btn" data-toggle="dropdown">
            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
            <span class="cart-products-count-btn">{$cart.products_count}</span>
            <span class="cart-label">Mi<br>Carrito</span>
        </a>
        {include 'module:ps_shoppingcart/ps_shoppingcart-content.tpl' class='dropdown'}
 </div>




