{include file="orderforms/emyui_cart/common.tpl"}

<div class="order-form-menu-scroller white-bg rounded-20 border-opacity mb-7">
  <nav class="nav nav-underline d-flex justify-content-center" aria-label="Secondary navigation">
    {include file="orderforms/emyui_cart/sidebar-categories.tpl"}
  </nav>
</div>

<div id="order-standard_cart">


<div  class="white-bg border-opacity rounded-20">
    <div class="row justify-content-center mt-15 mb-10">
                        <div class="col-md-9 col-lg-9">
                            <div class="hero-content dark-mode-texts mb-15 mb-lg-5 text-center pt-0 position-relative coodiv-z-index-1">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{$LANG.cartaddons}</h4>
                                <h1 class="coodiv-text-6 mb-2 color-blackish-blue">
								{$LANG.cartproductaddons}
								</h1>
                                <p class="coodiv-text-9 px-7 mb-0 color-blackish-blue-opacity">
								{$LANG.cartfollowingaddonsavailable}
                                </p>
                            </div>
                        </div>
    </div>
	
	

    <div class="row justify-content-center">
        <div class="col-10">

            {if count($addons) == 0}
                <div id="noAddons" class="alert alert-warning text-center" role="alert">
                    {$LANG.cartproductaddonsnone}
                </div>
                <p class="text-center">
                    <a href="clientarea.php" class="btn btn-default">
                        {$LANG.orderForm.returnToClientArea}
                    </a>
                </p>
            {/if}

            <div class="products">
                <div class="row row-eq-height">
                    {foreach $addons as $num => $addon}
                    <div class="col-md-6 mb-10">
                        <div class="border rounded-20 text-center px-8 py-8 clearfix" id="product{$num}">
                            <form method="post" action="{$smarty.server.PHP_SELF}?a=add" class="form-inline">
                                <input type="hidden" name="aid" value="{$addon.id}" />
                                <h5 class="coodiv-text-7 text-center d-block w-100">{$addon.name}</h5>
								
								<span class="badge badge-pill badge-primary coodiv-text-12 font-weight-light px-6 mx-auto mb-7">
                                        {if $addon.free}
                                        {$LANG.orderfree}
                                        {else}
                                        {$addon.recurringamount} {$addon.billingcycle}
                                        {if $addon.setupfee}+ {$addon.setupfee} {$LANG.ordersetupfee}{/if}
                                        {/if}
                                </span>
									
                                <p class="coodiv-text-11 text-center">{$addon.description|nl2br}</p>
                                    <div class="input-group mx-auto my-7 w-100">
                                        <select name="productid" id="inputProductId{$num}" class="form-control">
                                            {foreach $addon.productids as $product}
                                                <option value="{$product.id}">
                                                    {$product.product}{if $product.domain} - {$product.domain}{/if}
                                                </option>
                                            {/foreach}
                                        </select>
                                    </div>
                                <div class="clearfix"></div>
                                <footer class="col-12">
                                    
                                    <button type="submit" class="btn btn-primary d-block w-100 rounded-20 mt-10">
                                        {$LANG.ordernowbutton}
                                    </button>
                                </footer>
                            </form>
                        </div>
                    </div>
                    {if $num % 2 != 0}
                </div>
                <div class="row row-eq-height">
                    {/if}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</div>
</div>