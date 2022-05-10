{include file="orderforms/emyui_cart/common.tpl"}


<div class="order-form-menu-scroller white-bg rounded-20 border-opacity mb-7">
  <nav class="nav nav-underline d-flex justify-content-center" aria-label="Secondary navigation">
    {include file="orderforms/emyui_cart/sidebar-categories.tpl"}
  </nav>
</div>

            

<div id="order-standard_cart">



<div class="row justify-content-center  mt-15 mb-10">
                        <div class="col-md-9 col-lg-9">
                            <div class="hero-content dark-mode-texts mb-0 mb-lg-5 text-center pt-0 position-relative coodiv-z-index-1">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{lang key='cartbrowse'}</h4>
                                <h1 class="coodiv-text-4 mb-8 color-blackish-blue">
								{if $productGroup.headline}
                                {$productGroup.headline}
                                {else}
                                {$productGroup.name}
                                {/if}
								</h1>
								{if $productGroup.tagline}
                                <p class="coodiv-text-9 pr-md-11 mb-0 color-blackish-blue-opacity">
                                {$productGroup.tagline}
                                </p>
								{/if}
                            </div>
                        </div>
                    </div>


					
					
    <div class="row justify-content-center">

        <div class="col-12">
		
		{if $errormessage}
                <div class="alert alert-danger">
                    {$errormessage}
                </div>
            {elseif !$productGroup}
                <div class="alert alert-info">
                    {lang key='orderForm.selectCategory'}
                </div>
            {/if}

            {include file="orderforms/emyui_cart/sidebar-categories-collapsed.tpl"}
			
			
		   <div id="products" class="products mb-5 text-center position-relative mt-9 coodiv-z-index-1 row mx-lg-0 mx-1">
                               
                            {foreach $products as $key => $product}
							   <div id="product{$product@iteration}" class="products-item col-md-4 border-right py-10 border-lg-bottom-0 border-bottom white-bg shadow-2">
                                    <h5 id="product{$product@iteration}-name" class="coodiv-text-6">{$product.name}</h5>
									{if $product.stockControlEnabled}<span class="qty">{$product.qty} {$LANG.orderavailable}</span>{/if}
                    
									
									<div class="price" id="product{$product@iteration}-price">
                                    {if $product.bid}
                                        <span class="d-block">{$LANG.bundledeal}</Span>
                                        {if $product.displayprice}<span class="value coodiv-text-3 font-weight-light text-blue">{$product.displayprice}</span>{/if}
									{else}
                                        {if $product.pricing.hasconfigoptions}<span class="d-block">{$LANG.startingfrom}</span>{/if}
                                        <span class="price value coodiv-text-5 font-weight-light text-blue">{$product.pricing.minprice.price}</span>
                                        <br />
										<div class="clarifications coodiv-text-10 color-blackish-blue-opacity">
                                        {if $product.pricing.minprice.cycle eq "monthly"}
                                            {$LANG.orderpaymenttermmonthly}
                                        {elseif $product.pricing.minprice.cycle eq "quarterly"}
                                            {$LANG.orderpaymenttermquarterly}
                                        {elseif $product.pricing.minprice.cycle eq "semiannually"}
                                            {$LANG.orderpaymenttermsemiannually}
                                        {elseif $product.pricing.minprice.cycle eq "annually"}
                                            {$LANG.orderpaymenttermannually}
                                        {elseif $product.pricing.minprice.cycle eq "biennially"}
                                            {$LANG.orderpaymenttermbiennially}
                                        {elseif $product.pricing.minprice.cycle eq "triennially"}
                                            {$LANG.orderpaymenttermtriennially}
                                        {/if}
										</div>
                                    {/if}
                                </div>

                                    <div class="action mt-5">
                                        <a href="{$WEB_ROOT}/cart.php?a=add&{if $product.bid}bid={$product.bid}{else}pid={$product.pid}{/if}" id="product{$product@iteration}-order-button" class="btn btn-warning coodiv-text-11 font-weight-light rounded-20 px-2 py-3" href="#">{$LANG.ordernowbutton}</a>
                                    </div>
									
									{if $product.pricing.minprice.setupFee}
                                    <span class="coodiv-text-12">{$product.pricing.minprice.setupFee->toPrefixed()} {$LANG.ordersetupfee}</span>
                                    {/if}

                                    <div class="separte-or position-relative text-center pb-0 pt-0 white-bg my-7">
                                        <span>Plan features</span>
                                    </div>
									
									<div class="features px-0 mx-auto mb-0 card-list list-style-check text-center justify-content-center-li" id="product{$product@iteration}-description">
                                    {if $product.featuresdesc}
                                    {$product.featuresdesc}
                                    {/if}
                                    
									
									<ul>
                                    {foreach $product.features as $feature => $value}
                                        <li id="product{$product@iteration}-feature{$value@iteration}">
                                            <span class="feature-value">{$value}</span>
                                            {$feature}
                                        </li>
                                    {/foreach}
                                    </ul>
                                    </div>

									
                                </div>
								{if $product@iteration % 3 == 0}
								</div>
								<div id="products" class="products mb-15 mb-lg-5 text-center position-relative mt-9 coodiv-z-index-1 row mx-lg-0 mx-1">
								{/if}
								{/foreach}

                              
                            </div>
							

			
        </div>
    </div>
	
	
	<div class="reviews-overview text-center mt-20 mb-10">
    <p class="color-blackish-blue-opacity coodiv-text-10 d-lg-flex align-items-center justify-content-center">
        <img class="website-logo" src="{$WEB_ROOT}/templates/{$template}/image/logo-main-black.png" alt="main logo" /> is rated <strong>Excellent</strong>
        <span class="reviews-stars ml-5"> <i class="feather icon-star-on"></i> <i class="feather icon-star-on"></i> <i class="feather icon-star-on"></i> <i class="feather icon-star-on"></i> <i class="feather icon-star-on"></i> </span>
        <strong>4.89</strong>&nbsp;out of 5 based on <strong>3,432 reviews</strong>
    </p>
    </div>
	
	
	
</div>
