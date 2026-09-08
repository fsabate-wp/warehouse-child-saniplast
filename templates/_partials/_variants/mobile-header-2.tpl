{**
 * WAREHOUSE CHILD - SANIPLAST
 * Header mobile - variante 2 (sobreescribe al padre warehouse)
 *
 * Cambios respecto al padre:
 *  - Logo mobile propio: themes/warehouse_child/assets/img/logo-mobile.png
 *    (si el archivo no existe, usa el logo general de la tienda)
 *  - Icono del carrito: fa-shopping-cart (el padre usa fa-shopping-bag)
 *}

{assign var='saniplast_mobile_logo_path' value='themes/warehouse_child/assets/img/logo-mobile.png'}

<div id="mobile-header-sticky">
    <div class="container">
        <div class="mobile-main-bar">
            <div class="row no-gutters align-items-center row-mobile-header">
                <div class="col col-mobile-logo">
                    <a href="{$urls.base_url}">
                        {if file_exists($saniplast_mobile_logo_path)}
                            <img class="logo img-fluid saniplast-mobile-logo"
                                 src="{$urls.theme_assets}img/logo-mobile.png"
                                 alt="{$shop.name}">
                        {else}
                            <img class="logo img-fluid"
                                 src="{$shop.logo}" {if isset($iqitTheme.rm_logo) && $iqitTheme.rm_logo != ''} srcset="{$iqitTheme.rm_logo} 2x"{/if}
                                 alt="{$shop.name}">
                        {/if}
                    </a>
                </div>
                <div id="mobile-btn-search" class="col col-auto col-mobile-btn col-mobile-btn-search">
                    <a  class="m-nav-btn" data-toggle="dropdown"><i class="fa fa-search" aria-hidden="true"></i>
                        <span>{l s='Search' d='Shop.Theme.Global'}</span></a>
                    <div id="search-widget-mobile" class="dropdown-content dropdown-menu dropdown-mobile search-widget">
                        <form method="get" action="{$urls.pages.search}">
                            <input type="hidden" name="controller" value="search">
                            <div class="input-group">
                                <input type="text" name="s" value=""
                                       placeholder="{l s='Search' d='Shop.Theme.Catalog'}" data-all-text="{l s='Show all results' d='Shop.Warehousetheme'}" class="form-control form-search-control">
                                <button type="submit" class="search-btn">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col col-auto col-mobile-btn col-mobile-btn-account">
                    <a href="{$urls.pages.my_account}" class="m-nav-btn"><i class="fa fa-user" aria-hidden="true"></i>
                        <span>{l s='Sign in' d='Shop.Theme.Actions'}</span></a>
                </div>
                {hook h='displayHeaderButtonsMobile'}
                {if !$configuration.is_catalog}
                <div
                     class="col col-auto col-mobile-btn col-mobile-btn-cart ps-shoppingcart {if isset($iqitTheme.cart_style) && $iqitTheme.cart_style == "floating"}dropdown{else}side-cart{/if}">
                    <div id="mobile-cart-wrapper">
                        <a id="mobile-cart-toogle" class="m-nav-btn" data-toggle="dropdown"><i class="fa fa-shopping-cart mobile-cart-icon"
                                                                                           aria-hidden="true"><span id="mobile-cart-products-count" class="cart-products-count cart-products-count-btn">{$cart.products_count}</span></i>
                            <span>{l s='Cart' d='Shop.Theme.Checkout'}</span></a>
                        <div id="_mobile_blockcart-content"></div>
                    </div>
                </div>
                {/if}
                <div class="col col-auto col-mobile-btn col-mobile-btn-menu col-mobile-menu-{$iqitTheme.mm_type}">
                    <a class="m-nav-btn" data-toggle="dropdown"><i class="fa fa-bars" aria-hidden="true"></i>
                        <span>{l s='Menu' d='Shop.Theme.Global'}</span></a>
                    <div id="_mobile_iqitmegamenu-mobile"></div>
                </div>
            </div>
        </div>
    </div>
</div>
