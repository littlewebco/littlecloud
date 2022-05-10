<div class="mc-promo box-viwecart-promo {$promotion->getClass()}" id="promo_{$product->productKey}">
    
	<div class="d-flex align-items-center py-5 px-8 border-bottom">
	<div class="icon mr-5"><img src="{$promotion->getImagePath()}"></div>
    <div class="content">
	<h5 class="coodiv-text-8 mb-0">{$promotion->getHeadline()} </h5>
	<p class="coodiv-text-12 d-block mb-0 mt-n2 mb-3">{$promotion->getTagline()}</p>
	
	{if $product->isFree()}
    <span class="">{lang key="orderfree"}</Span>
    {elseif $product->pricing()->first()}
     <span class="coodiv-text-12 badge badge-pill badge-primary font-weight-light py-0">{$product->pricing()->setQuantity($cartItem.qty)->first()->breakdownPrice()}</Span>
    {/if}
	
	</div>
	<div class="priceandbuy ml-auto text-center">
	<button type="button" class="btn btn-sm btn-add" data-product-key="{$product->productKey}">
    <span class="text">
    {lang key="addtocart"}
    </span>
    </button>		
	</div>
	
	
	</div>


    <div class="header">
        <div class="expander">
            <span>Click to learn more</span>
        </div>
    </div>
	
    <div class="body clearfix">
        {if $promotion->hasFeatures()}
            <ul>
                {assign "promotionFeatures" $promotion->getFeatures()}
                {foreach $promotionFeatures as $key=>$feature}
                    <li class="{if $key < ($promotionFeatures|@count / 2)}left{else}right{/if} coodiv-text-12">
                        <i class="check-icn feather icon-check mr-2"></i> {$feature}
                    </li>
                {/foreach}
            </ul>
        {/if}
    </div>
</div>
