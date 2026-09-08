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


<div class="saniplast-main-header">
    <div class="container">
        <div class="row align-items-center saniplast-header-row">
            <div class="col-md-3 col-header-logo">
                <div id="desktop_logo" class="saniplast-logo-wrap">
                    <a href="{$urls.base_url}">
                        <img class="logo img-fluid"
                             src="{$shop.logo}" {if isset($iqitTheme.rm_logo) && $iqitTheme.rm_logo != ''} srcset="{$iqitTheme.rm_logo} 2x"{/if}
                             alt="{$shop.name}">
                    </a>
                    <!--<span class="saniplast-slogan">Especialista en Materiales para<br>instalaciones sanitarias</span>-->
                </div>
            </div>
            <div class="col-md-6 col-header-search">
                {widget name="iqitsearch"}
                {hook h='displayHeaderCenter'}
            </div>
            <div class="col-md-3 col-header-actions">
                <div class="saniplast-header-actions">
                    <div class="saniplast-account">
                        {hook h="litespeedEsiBegin" m="ps_customersignin" field="widget_block" tpl="module:ps_customersignin/ps_customersignin-btn.tpl"}
                        {widget_block name="ps_customersignin"}
                            {include 'module:ps_customersignin/ps_customersignin-btn.tpl'}
                        {/widget_block}
                        {hook h="litespeedEsiEnd"}
                    </div>
                    {if !$configuration.is_catalog}
                        <div class="saniplast-cart">
                            {hook h="litespeedEsiBegin" m="ps_shoppingcart" field="widget_block" tpl="module:ps_shoppingcart/ps_shoppingcart-btn.tpl"}
                            {widget_block name="ps_shoppingcart"}
                                {include 'module:ps_shoppingcart/ps_shoppingcart-btn.tpl'}
                            {/widget_block}
                            {hook h="litespeedEsiEnd"}
                        </div>
                    {/if}
                    <div class="saniplast-whatsapp">
                        <a href="https://wa.me/543511234567" target="_blank" rel="noopener">
                            <i class="fa fa-whatsapp"></i>
                            <span class="whatsapp-info">
                                <span class="whatsapp-label">Consultas <strong>WhatsApp</strong></span>
                                <span class="whatsapp-number">351 123 5678</span>
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="saniplast-menu-bar">
    <div class="container iqit-megamenu-container">{hook h='displayMainMenu'}</div>
</div>
{hook h='displayNavFullWidth'}

