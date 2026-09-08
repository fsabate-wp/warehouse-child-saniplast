<div id="header-user-btn" class="saniplast-user-btn">
    {if $logged}
        <a href="{$my_account_url}"
           title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}"
           rel="nofollow" class="header-btn header-user-btn">
            <i class="fa fa-user fa-fw icon" aria-hidden="true"></i>
            <span class="title">{$customer.firstname|truncate:15:'...'}</span>
        </a>
    {else}
        <a href="{$my_account_url}"
           title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
           rel="nofollow" class="header-btn header-user-btn">
            <i class="fa fa-user-o" aria-hidden="true"></i>
            <span class="user-label">Mi Cuenta</span>
            <span class="user-action">Ingresar / Registrarme</span>
        </a>
    {/if}
</div>
