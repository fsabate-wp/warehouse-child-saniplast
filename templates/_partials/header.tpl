{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}


{block name='header_nav'}
    <div class="saniplast-top-bar">
        <div class="container saniplast-top-bar-inner">
            <ul class="top-bar-links">
                <li><i class="fa fa-truck"></i> Envíos a todo el país</li>
                <li><i class="fa fa-credit-card"></i> Hasta 12 cuotas sin interés</li>
                <li><i class="fa fa-cube"></i> Seguimiento de pedidos</li>
            </ul>
            <ul class="top-bar-links top-bar-pages">
                <li><a href="https://www.saniplast.com.ar/content/4-la-empresa" class="saniplast-top-link">Quiénes Somos</a></li>
                <li><a href="{$link->getPageLink('sucursales')}" class="saniplast-top-link">Sucursales</a></li>
                <li><a href="https://www.saniplast.com.ar/mas-vendidos" class="saniplast-top-link">Novedades</a></li>
            </ul>
        </div>
    </div>
{/block}


{block name='header_desktop'}
<div id="desktop-header" class="desktop-header-style-{$iqitTheme.h_layout}">
    {if $iqitTheme.h_layout == 1}
        {include file='_partials/_variants/header-1.tpl'}
    {elseif $iqitTheme.h_layout == 2}
        {include file='_partials/_variants/header-2.tpl'}
    {elseif $iqitTheme.h_layout == 3}
        {include file='_partials/_variants/header-3.tpl'}
    {elseif $iqitTheme.h_layout == 4}
        {include file='_partials/_variants/header-4.tpl'}
    {elseif $iqitTheme.h_layout == 5}
        {include file='_partials/_variants/header-5.tpl'}
    {elseif $iqitTheme.h_layout == 6}
        {include file='_partials/_variants/header-6.tpl'}
    {elseif $iqitTheme.h_layout == 7}
        {include file='_partials/_variants/header-7.tpl'}
    {/if}
</div>
{/block}

{block name='header_mobile'}
    <div id="mobile-header" class="mobile-header-style-{$iqitTheme.rm_header}">
        {if $iqitTheme.rm_header == 1}
            {include file='_partials/_variants/mobile-header-1.tpl'}
        {elseif $iqitTheme.rm_header == 2}
            {include file='_partials/_variants/mobile-header-2.tpl'}
        {elseif $iqitTheme.rm_header == 3}
            {include file='_partials/_variants/mobile-header-3.tpl'}
        {/if}
    </div>
{/block}

<!-- esto hace que si estás en AUTORICAMBI y NO estás logueado,
oculta precios // si no iniciás sesión el $customer.id_shop !=1 es null -->
{if $smarty.server.HTTP_HOST == "autoricambi.com.ar" && $customer.id_shop !=1}
        {literal}
            <style>
                .product-price {
                    visibility: hidden!important;
                    display: none!important;
                }
                div.product-prices {
    				visibility: hidden;
				}
                div.product-reference {
    				visibility: visible;
				}
            </style>
        {/literal}
{/if}
<!-- se modifica x tpl en el header -->
