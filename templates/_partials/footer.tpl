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
{if !$customer.is_logged}
    <style>
        .mto-precios {
            display: none !important;
        }
    </style>
{/if}

<div class="saniplast-footer">
    <div class="container">
        <div class="footer-top">

            <div class="footer-col">
                <h5>{l s='Enlaces Útiles'}</h5>
                <ul class="footer-links">
                    <li><a href="{$urls.base_url}"><i class="fa fa-angle-right"></i> {l s='Inicio'}</a></li>
                    <li><a href="{$urls.base_url}content/3-terminos-y-condiciones-de-uso"><i class="fa fa-angle-right"></i> {l s='Términos y condiciones'}</a></li>
                    <li><a href="{$urls.base_url}content/16-formas-de-envio"><i class="fa fa-angle-right"></i> {l s='Formas de envío'}</a></li>
                    <li><a href="{$urls.base_url}content/17-medios-de-pago"><i class="fa fa-angle-right"></i> {l s='Medios de pago'}</a></li>
                    <li><a href="{$urls.base_url}content/13-preguntas-frecuentes"><i class="fa fa-angle-right"></i> {l s='Preguntas frecuentes'}</a></li>
                    <li><a href="{$urls.base_url}content/12-politica-y-devoluciones"><i class="fa fa-angle-right"></i> {l s='Política de devoluciones'}</a></li>
                    <li><a href="https://forms.gle/QfY9hXoY8prYCC1BA" target="_blank" rel="noopener"><i class="fa fa-angle-right"></i> {l s='Botón de arrepentimiento'}</a></li>
                    <li><a href="{$urls.base_url}contactenos"><i class="fa fa-angle-right"></i> {l s='Contacto'}</a></li>
                </ul>
            </div>

            <div class="footer-col">
                <h5>{l s='Contacto'}</h5>

                <div class="footer-branch">
                    <div class="footer-branch-name"><i class="fa fa-map-marker"></i> {l s='Casa Central'}</div>
                    <p>A. Magariños Cervantes 911, Bº Gral. Bustos, X5001AGH — Córdoba<br>
                        <a href="mailto:ventas@saniplast.com.ar">ventas@saniplast.com.ar</a><br>
                        Tel: <a href="tel:+5493517386414">+54 9 3517 386414</a></p>
                </div>

                <div class="footer-branch">
                    <div class="footer-branch-name"><i class="fa fa-map-marker"></i> {l s='Sucursal Zona Sur'}</div>
                    <p>Av. Armada Argentina 772, Bº Parque Latina, X5016DFU — Córdoba<br>
                        <a href="mailto:ventasarmada@saniplast.com.ar">ventasarmada@saniplast.com.ar</a><br>
                        Tel: <a href="tel:+5493512007301">+54 9 3512 007301</a></p>
                </div>

                <div class="footer-branch">
                    <div class="footer-branch-name"><i class="fa fa-map-marker"></i> {l s='Sucursal Zona Norte'}</div>
                    <p>Recta Martinolli 8163, Bº Villa Belgrano, X5001AGH — Córdoba<br>
                        <a href="mailto:ventasmartinolli@saniplast.com.ar">ventasmartinolli@saniplast.com.ar</a><br>
                        Tel: <a href="tel:+5493513196414">+54 9 3513 196414</a></p>
                </div>
            </div>

            <div class="footer-col">
                <h5>{l s='Data Fiscal'}</h5>
                <div class="footer-fiscal">
                    <a class="footer-fiscal-badge" href="http://qr.afip.gob.ar/?qr=SQyjMsbs48oHa6uMZquTfw,," target="_blank" rel="noopener">
                        <img src="http://www.afip.gob.ar/images/f960/DATAWEB.jpg" alt="DATAWEB.jpg">
                        <span>{l s='DATA FISCAL'}</span>
                    </a>
                    <small>{l s='Constatá nuestra situación fiscal ante AFIP.'}</small>
                </div>
            </div>

            <div class="footer-col">
                <h5>{l s='Newsletter'}</h5>
                <p class="footer-news-intro">{l s='Enterate primero de ofertas y novedades.'}</p>
                {widget name="ps_emailsubscription" hook='displayFooter'}
                <div class="footer-social">
                    <a href="https://www.instagram.com/saniplastcba/" target="_blank" rel="noopener" aria-label="Instagram"><i class="fa fa-instagram"></i></a>
                    <a href="https://www.facebook.com/saniplastcba" target="_blank" rel="noopener" aria-label="Facebook"><i class="fa fa-facebook"></i></a>
                </div>
            </div>

        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <span>&copy; {$smarty.now|date_format:'%Y'} SaniPlast &mdash; {l s='Todos los derechos reservados.'}</span>
            <span>{l s='Córdoba, Argentina'}</span>
        </div>
    </div>
</div>