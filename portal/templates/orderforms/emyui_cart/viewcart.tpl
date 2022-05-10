{if $checkout}

    {include file="orderforms/$carttpl/checkout.tpl"}

{else}

    <script>
        // Define state tab index value
        var statesTab = 10;
        var stateNotRequired = true;
    </script>
    {include file="orderforms/standard_cart/common.tpl"}
    <script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>

    <div id="order-standard_cart">
	{if $cartitems > 0}
	<div class="row justify-content-center mb-10 px-5 mt-5">
	<div class="orderform-step-form-wizard-group col-12 d-flex white-bg justify-content-center border-opacity rounded-20 overflow-hidden">
	
	<a href="#" class="orderform-step-form-wizard-item d-flex align-items-center position-relative pl-6 pr-10 py-7 mr-12 active">
	<i class="feather icon-globe"></i>
	<span class="coodiv-text-11 font-weight-bold color-blackish-blue"><small class="d-block font-weight-light mb-n2 color-blackish-blue-opacity">step 1/3</small>{$LANG.cartproductconfig}</span>
	<div class="left-triangle-border"></div>
	</a>
	
	<a href="#" class="orderform-step-form-wizard-item d-flex align-items-center position-relative pl-6 pr-10 py-7 mr-12 active">
	<i class="feather icon-file-text"></i>
	<span class="coodiv-text-11 font-weight-bold color-blackish-blue"><small class="d-block font-weight-light mb-n2 color-blackish-blue-opacity">step 2/3</small>{$LANG.cartreviewcheckout}</span>
	<div class="left-triangle-border"></div>
	</a>
	
	<a href="#" class="orderform-step-form-wizard-item d-flex align-items-center position-relative pl-6 pr-10 py-7">
	<i class="feather icon-check"></i>
	<span class="coodiv-text-11 font-weight-bold color-blackish-blue"><small class="d-block font-weight-light mb-n2 color-blackish-blue-opacity">step 3/3</small>{$LANG.store.addon.wptk.proceedToCheckout}</span>
	<div class="left-triangle-border"></div>
	</a>
	
	</div>
	</div>
	{/if}
	
	<div  class="white-bg border-opacity rounded-20 pb-15">
    <div class="row justify-content-center mt-lg-15 mb-lg-10 mb-0 mt-10">
                        <div class="col-md-9 col-lg-9">
                            <div class="hero-content dark-mode-texts mb-15 mb-lg-5 text-center pt-0 position-relative coodiv-z-index-1">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{$LANG.cartbrowse}</h4>
                                <h1 class="coodiv-text-6 mb-2 color-blackish-blue">
								{$LANG.cartreviewcheckout}
								</h1>
                                
                            </div>
                        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-11">
                <div class="row">
                    <div class="secondary-cart-body">

                        {if $promoerrormessage}
                            <div class="alert alert-warning text-center" role="alert">
                                {$promoerrormessage}
                            </div>
                        {elseif $errormessage}
                            <div class="alert alert-danger" role="alert">
                                <p>{$LANG.orderForm.correctErrors}:</p>
                                <ul>
                                    {$errormessage}
                                </ul>
                            </div>
                        {elseif $promotioncode && $rawdiscount eq "0.00"}
                            <div class="alert alert-info text-center" role="alert">
                                {$LANG.promoappliedbutnodiscount}
                            </div>
                        {elseif $promoaddedsuccess}
                            <div class="alert alert-success text-center" role="alert">
                                {$LANG.orderForm.promotionAccepted}
                            </div>
                        {/if}

                        {if $bundlewarnings}
                            <div class="alert alert-warning" role="alert">
                                <strong>{$LANG.bundlereqsnotmet}</strong><br />
                                <ul>
                                    {foreach from=$bundlewarnings item=warning}
                                        <li>{$warning}</li>
                                    {/foreach}
                                </ul>
                            </div>
                        {/if}

                        <form method="post" action="{$smarty.server.PHP_SELF}?a=view">

                           
                            <div class="view-cart-items-coodiv-cart-group">

                                {foreach $products as $num => $product}
								
                                    <div class="item-in-cart">
                                        <div class="row">
                                            <div class="{if $showqtyoptions}col-sm-5{else}col-sm-7{/if}">
											
											<div class="product-header d-flex align-items-center">
                                                <h5 class="coodiv-text-8 mb-0">{$product.productinfo.name}</h5>
                                                <a href="{$smarty.server.PHP_SELF}?a=confproduct&i={$num}" class="btn btn-primary minimal-button-cart ml-2">{$LANG.orderForm.edit}</a>
											    <button type="button" class="btn btn-link btn-xs btn-remove-from-cart minimal-button-cart visible-xs-inline d-inline d-sm-none ml-1" onclick="removeItem('p','{$num}')">{$LANG.orderForm.remove}</button>
											</div>
                                                <span class="item-group coodiv-text-11">{$product.productinfo.groupname}</span>
                                                {if $product.domain}
                                                <span class="coodiv-text-12 font-weight-light white-text py-0 item-domain badge badge-pill badge-success">{$product.domain}</span>
                                                {/if}
                                                {if $product.configoptions}
                                                    <small>
                                                        {foreach key=confnum item=configoption from=$product.configoptions}
                                                            &nbsp;&raquo; {$configoption.name}: {if $configoption.type eq 1 || $configoption.type eq 2}{$configoption.option}{elseif $configoption.type eq 3}{if $configoption.qty}{$configoption.option}{else}{$LANG.no}{/if}{elseif $configoption.type eq 4}{$configoption.qty} x {$configoption.option}{/if}<br />
                                                        {/foreach}
                                                    </small>
                                                {/if}
                                            </div>
                                            {if $showqtyoptions}
                                                <div class="col-sm-2 item-qty">
                                                    {if $product.allowqty}
                                                        <input type="number" name="qty[{$num}]" value="{$product.qty}" class="form-control text-center" min="0" />
                                                        <button type="submit" class="btn btn-light">
                                                            {$LANG.orderForm.update}
                                                        </button>
                                                    {/if}
                                                </div>
                                            {/if}
                                            <div class="col-sm-4 item-price">
                                                <span class="coodiv-text-8 font-weight-bold color-blackish-blue">{$product.pricing.totalTodayExcludingTaxSetup}</span>
                                                <span class="coodiv-text-12">{$product.billingcyclefriendly}</span>
                                                {if $product.pricing.productonlysetup}
                                                 <span class="coodiv-text-12 font-weight-light">{$product.pricing.productonlysetup->toPrefixed()} {$LANG.ordersetupfee}</span>
                                                {/if}
                                                {if $product.proratadate}
												<span class="coodiv-text-12 font-weight-light d-block">{$LANG.orderprorata} <strong class="color-blackish-blue font-weight-bold">22-22-222</strong></span>
												{/if}
                                            </div>
											
											
											
                                            <div class="col-sm-1 pl-0 hidden-xs d-none d-sm-block">
                                                <button data-toggle="tooltip" data-placement="right" title="{$LANG.paymentMethods.delete}" type="button" class="btn-remove-from-cart" onclick="removeItem('p','{$num}')">
                                                    <i class="feather icon-x"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
									
									
                                    {foreach $product.addons as $addonnum => $addon}
                                        <div class="item-in-cart">
                                            <div class="row">
                                                <div class="{if $showAddonQtyOptions}col-sm-5{else}col-sm-7{/if}">
												<h5 class="coodiv-text-8 mb-0 d-block">{$addon.name}</h5>
                                                <span class="badge badge-pill badge-info font-weight-light">{$LANG.orderaddon}</span>
                                                </div>
                                                {if $showAddonQtyOptions}
                                                    <div class="col-sm-2 item-qty">
                                                        {if $addon.allowqty === 2}
                                                            <input type="number" name="paddonqty[{$num}][{$addonnum}]" value="{$addon.qty}" class="form-control text-center" min="0" />
                                                            <button type="submit" class="btn btn-xs">
                                                                {$LANG.orderForm.update}
                                                            </button>
                                                        {/if}
                                                    </div>
                                                {/if}
                                                <div class="col-sm-4 item-price">
                                                    <span class="coodiv-text-8 font-weight-bold color-blackish-blue">{$addon.totaltoday}</span>
                                                    <span class="coodiv-text-12">{$addon.billingcyclefriendly}</span>
                                                    {if $addon.setup}<span class="coodiv-text-12 font-weight-light d-block">{$addon.setup->toPrefixed()} {$LANG.ordersetupfee}</span>{/if}
                                                    {if $addon.isProrated}(<span class="coodiv-text-12 font-weight-light d-block">{$LANG.orderprorata} {$addon.prorataDate}</span>){/if}
                                                </div>
                                            </div>
                                        </div>
                                    {/foreach}
                                {/foreach}

                                {foreach $addons as $num => $addon}
                                    <div class="item-in-cart">
                                        <div class="row">
                                            <div class="{if $showAddonQtyOptions}col-sm-5{else}col-sm-7{/if}">
											<h5 class="coodiv-text-8 mb-0 d-block"> {$addon.name}</h5>
											{if $addon.domainname}
											<span class="badge badge-pill badge-info font-weight-light">{$addon.domainname}</span>
											{/if}
											<span class="item-group">
                                            {$addon.productname}
                                            </span>
											
                                            <span class="item-title">
                                                    <span class="visible-xs-inline d-inline d-sm-none">
                                                        <button type="button" class="btn btn-link btn-xs btn-remove-from-cart" onclick="removeItem('a','{$num}')">
                                                            {$LANG.orderForm.remove}
                                                        </button>
                                                    </span>
                                            </span>
                                           
                                                
                                            </div>
                                            {if $showAddonQtyOptions}
                                                <div class="col-sm-2 item-qty">
                                                    {if $addon.allowqty === 2}
                                                        <input type="number" name="addonqty[{$num}]" value="{$addon.qty}" class="form-control text-center" min="0" />
                                                        <button type="submit" class="btn btn-xs">
                                                            {$LANG.orderForm.update}
                                                        </button>
                                                    {/if}
                                                </div>
                                            {/if}
                                           
											<div class="col-sm-4 item-price">
                                                    <span class="coodiv-text-8 font-weight-bold color-blackish-blue">{$addon.totaltoday}</span>
                                                    <span class="coodiv-text-12">{$addon.billingcyclefriendly}</span>
                                                    {if $addon.setup}<span class="coodiv-text-12 font-weight-light d-block">{$addon.setup->toPrefixed()} {$LANG.ordersetupfee}</span>{/if}
                                                    {if $addon.isProrated}(<span class="coodiv-text-12 font-weight-light d-block">{$LANG.orderprorata} {$addon.prorataDate}</span>){/if}
                                            </div>
												
												
                                            <div class="col-sm-1 hidden-xs d-none d-sm-block">
                                                <button data-toggle="tooltip" data-placement="right" title="{$LANG.paymentMethods.delete}" type="button" class="btn-remove-from-cart" onclick="removeItem('a','{$num}')">
                                                    <i class="feather icon-x"></i>
                                                </button>
                                            </div>
			
											
											
                                        </div>
                                    </div>
                                {/foreach}

                                {foreach $domains as $num => $domain}
                                    <div class="item-in-cart">
                                        <div class="row">
                                            <div class="col-sm-7">
											<div class="product-header d-flex align-items-center">
                                            <h5 class="coodiv-text-8 mb-0">{if $domain.type eq "register"}{$LANG.orderdomainregistration}{else}{$LANG.orderdomaintransfer}{/if}</h5>
										    <a href="{$smarty.server.PHP_SELF}?a=confdomains" class="btn btn-primary minimal-button-cart ml-2">{$LANG.orderForm.edit}</a>
											<button type="button" class="btn btn-link btn-xs btn-remove-from-cart minimal-button-cart visible-xs-inline d-inline d-sm-none ml-1" onclick="removeItem('d','{$num}')">{$LANG.orderForm.remove}</button>
											</div>
											
		
                                                {if $domain.domain}
                                                    <span style="width: max-content;" class="item-domain d-block coodiv-text-12 font-weight-light white-text py-0 item-domain badge badge-pill badge-success">
                                                        {$domain.domain}
                                                    </span>
                                                {/if}
                                                {if $domain.dnsmanagement}
												<span class="coodiv-text-12 d-block mt-4"><i class="check-icn feather icon-check mr-2"></i>{$LANG.domaindnsmanagement}</span>
												{/if}
												
                                                {if $domain.emailforwarding}
												<span class="coodiv-text-12 d-block"><i class="check-icn feather icon-check mr-2"></i>{$LANG.domainemailforwarding}</span>
												{/if}
												
                                                {if $domain.idprotection}
												<span class="coodiv-text-12 d-block"><i class="check-icn feather icon-check mr-2"></i>{$LANG.domainidprotection}</span>
												{/if}
                                            </div>
                                            <div class="col-sm-4 item-price">
                                                {if count($domain.pricing) == 1 || $domain.type == 'transfer'}
                                                    <span class="coodiv-text-8 font-weight-bold color-blackish-blue" name="{$domain.domain}Price">{$domain.price}</span>
                                                    <span class="coodiv-text-12">{$domain.regperiod} {$domain.yearsLanguage}</span>
                                                    <span class="coodiv-text-12 font-weight-light">
                                                        {if isset($domain.renewprice)}{lang key='domainrenewalprice'} <span class="renewal-price cycle">{$domain.renewprice->toPrefixed()}{$domain.shortRenewalYearsLanguage}{/if}</span>
                                                    </span>
                                                {else}
                                                    <span class="coodiv-text-8 font-weight-bold color-blackish-blue" name="{$domain.domain}Price">{$domain.price}</span>
                                                    <div class="dropdown">
                                                        <button class="btn btn-default btn-default btn-xs dropdown-toggle" type="button" id="{$domain.domain}Pricing" name="{$domain.domain}Pricing" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            {$domain.regperiod} {$domain.yearsLanguage}
                                                            <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu" aria-labelledby="{$domain.domain}Pricing">
                                                            {foreach $domain.pricing as $years => $price}
                                                                <li class="dropdown-item">
                                                                    <a href="#" onclick="selectDomainPeriodInCart('{$domain.domain}', '{$price.register}', {$years}, '{if $years == 1}{lang key='orderForm.year'}{else}{lang key='orderForm.years'}{/if}');return false;">
                                                                        {$years} {if $years == 1}{lang key='orderForm.year'}{else}{lang key='orderForm.years'}{/if} @ {$price.register}
                                                                    </a>
                                                                </li>
                                                            {/foreach}
                                                        </ul>
                                                    </div>
                                                    <span class="coodiv-text-12 font-weight-light">
                                                        {lang key='domainrenewalprice'} <span class="renewal-price cycle">{if isset($domain.renewprice)}{$domain.renewprice->toPrefixed()}{$domain.shortRenewalYearsLanguage}{/if}</span>
                                                    </span>
                                                {/if}
                                            </div>
                                            <div class="col-sm-1 pl-0 hidden-xs d-none d-sm-block">
                                                <button type="button" data-toggle="tooltip" data-placement="right" title="{$LANG.paymentMethods.delete}" class="btn-remove-from-cart" onclick="removeItem('d','{$num}')">
                                                    <i class="feather icon-x"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                {/foreach}

                                {foreach $renewals as $num => $domain}
                                    <div class="item-in-cart">
                                        <div class="row">
                                            <div class="col-sm-7">
											
											<div class="product-header d-flex align-items-center">
                                            <h5 class="coodiv-text-8 mb-0">{$LANG.domainrenewal}</h5>
											</div>
										    <span style="width: max-content;" class="item-domain d-block coodiv-text-12 font-weight-light white-text py-0 item-domain badge badge-pill badge-success">
                                            {$domain.domain}
                                            </span>
											
											
                                                {if $domain.dnsmanagement}
												<span class="coodiv-text-12 d-block mt-4"><i class="check-icn feather icon-check mr-2"></i>{$LANG.domaindnsmanagement}</span>
												{/if}
												
                                                {if $domain.emailforwarding}
												<span class="coodiv-text-12 d-block"><i class="check-icn feather icon-check mr-2"></i>{$LANG.domainemailforwarding}</span>
												{/if}
												
                                                {if $domain.idprotection}
												<span class="coodiv-text-12 d-block"><i class="check-icn feather icon-check mr-2"></i>{$LANG.domainidprotection}</span>
												{/if}
											
                                            </div>
                                            <div class="col-sm-4 item-price">
                                                <span class="coodiv-text-8 font-weight-bold color-blackish-blue">{$domain.price}</span>
                                                <span class="cycle coodiv-text-12">{$domain.regperiod} {$LANG.orderyears}</span>
                                            </div>
                                            <div class="col-sm-1">
                                                <button type="button" data-toggle="tooltip" data-placement="right" title="{$LANG.paymentMethods.delete}" class="btn-remove-from-cart" onclick="removeItem('r','{$num}')">
                                                <i class="feather icon-x"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                {/foreach}

                                {foreach $upgrades as $num => $upgrade}
                                    <div class="item">
                                        <div class="row">
                                            <div class="{if $showUpgradeQtyOptions}col-sm-5{else}col-sm-7{/if}">
                                                <span class="item-title">
                                                    {$LANG.upgrade}
                                                </span>
                                                <span class="item-group">
                                                    {if $upgrade->type == 'service'}
                                                        {$upgrade->originalProduct->productGroup->name}<br>{$upgrade->originalProduct->name} => {$upgrade->newProduct->name}
                                                    {elseif $upgrade->type == 'addon'}
                                                        {$upgrade->originalAddon->name} => {$upgrade->newAddon->name}
                                                    {/if}
                                                </span>
                                                <span class="item-domain">
                                                    {if $upgrade->type == 'service'}
                                                        {$upgrade->service->domain}
                                                    {/if}
                                                </span>
                                            </div>
                                            {if $showUpgradeQtyOptions}
                                                <div class="col-sm-2 item-qty">
                                                    {if $upgrade->allowMultipleQuantities}
                                                        <input type="number" name="upgradeqty[{$num}]" value="{$upgrade->qty}" class="form-control text-center" min="{$upgrade->minimumQuantity}" />
                                                        <button type="submit" class="btn btn-xs">
                                                            {$LANG.orderForm.update}
                                                        </button>
                                                    {/if}
                                                </div>
                                            {/if}
                                            <div class="col-sm-4 item-price">
                                                <span>{$upgrade->newRecurringAmount}</span>
                                                <span class="cycle">{$upgrade->localisedNewCycle}</span>
                                            </div>
                                            <div class="col-sm-1">
                                                <button type="button" class="btn btn-link btn-xs btn-remove-from-cart" onclick="removeItem('u','{$num}')">
                                                    <i class="fas fa-times"></i>
                                                    <span class="visible-xs d-block d-sm-none">{$LANG.orderForm.remove}</span>
                                                </button>
                                            </div>
                                        </div>
                                        {if $upgrade->totalDaysInCycle > 0}
                                            <div class="row row-upgrade-credit">
                                                <div class="col-sm-7">
                                                    <span class="item-group">
                                                        {$LANG.upgradeCredit}
                                                    </span>
                                                    <div class="upgrade-calc-msg">
                                                        {lang key="upgradeCreditDescription" daysRemaining=$upgrade->daysRemaining totalDays=$upgrade->totalDaysInCycle}
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 item-price">
                                                    <span>-{$upgrade->creditAmount}</span>
                                                </div>
                                            </div>
                                        {/if}
                                    </div>
                                {/foreach}

                                {if $cartitems == 0}
									<div class="alert alert-warning rounded-10 mb-10" role="alert">
                                    <h4 class="alert-heading coodiv-text-8 font-weight-bold">{$LANG.emptycart}</h4>
                                    <p class="coodiv-text-10 mb-0">{$LANG.cartempty}</p>
                                    </div>
                                {/if}

                            </div>

                            {if $cartitems > 0}
                                <div class="empty-cart-btn">
                                    <button type="button" class="" id="btnEmptyCart">
                                        <i class="feather icon-trash-2"></i>
                                        <span>{$LANG.emptycart}</span>
                                    </button>
                                </div>
                            {/if}

                        </form>

                        {foreach $hookOutput as $output}
                            <div class="addons-not-showing mb-10">
                                {$output}
                            </div>
                        {/foreach}

                        {foreach $gatewaysoutput as $gatewayoutput}
                            <div class="view-cart-gateway-checkout">
                                {$gatewayoutput}
                            </div>
                        {/foreach}
						
						
						<div class="aply-promo-code mt-4">
                                    {if $promotioncode}
                                        <div class="view-cart-promotion-code rounded-20 position-relative">
                                            {$promotioncode} - {$promotiondescription}
											
											<a href="{$smarty.server.PHP_SELF}?a=removepromo" class="" data-toggle="tooltip" data-placement="right" title=" {$LANG.orderForm.removePromotionCode}">
											<i class="feather icon-x"></i>
                                            </a>
                                        </div>
                                        
                                    {else}
									    <h4 class="coodiv-text-10 pl-4">{$LANG.orderForm.applyPromoCode}<h4>
                                        <form method="post" class="position-relative" action="cart.php?a=view">
                                            <div class="form-group">
                                                <input type="text" name="promocode" id="inputPromotionCode" class="field form-control" placeholder="{lang key="orderPromoCodePlaceholder"}" required="required">
                                            </div>
                                            <button type="submit" name="validatepromo" class="btn btn-primary orderpromovalidatebutton" value="{$LANG.orderpromovalidatebutton}">
                                                {$LANG.orderpromovalidatebutton}
                                            </button>
                                        </form>
                                    {/if}
                        </div>

                        {if $taxenabled && !$loggedin}
						<div class="taxenabled-view-cart position-relative mt-12">
						<h4 class="coodiv-text-10 the-title">{$LANG.orderForm.estimateTaxes}<h4>
						
						
						<form method="post" action="cart.php?a=setstateandcountry">
						
						<div class="row">
						<div class="col-md-6">
                        <div class="form-group mb-7">
                        <label for="inputState" class="coodiv-text-11 text-blackish-blue mb-0">{$LANG.orderForm.state}</label>
                        <input type="text" name="state" id="inputState" value="{$clientsdetails.state}" class="form-control coodiv-text-11 border rounded-20" {if $loggedin}disabled="disabled"{/if}>
                        </div>
                        </div>
						
						<div class="col-md-6">
						<div class="form-group mb-7">
                        <label for="inputCountry" class="coodiv-text-11 text-blackish-blue mb-0">{$LANG.orderForm.country}</label>
						<select name="country" id="inputCountry" class="form-control">
                            {foreach $countries as $countrycode => $countrylabel}
                                <option value="{$countrycode}"{if (!$country && $countrycode == $defaultcountry) || $countrycode eq $country} selected{/if}>
                                    {$countrylabel}
                                </option>
                            {/foreach}
                        </select>
						</div>
						
						</div>
						
						</div>
                                        
            
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-info rounded-20 coodiv-text-12 font-weight-light d-block w-100 py-2">{$LANG.orderForm.updateTotals}</button>
                        </div>
						
						
                        </form>
						
						</div>
						{/if}

                        

                    </div>
                    <div class="secondary-cart-sidebar" id="scrollingPanelContainer">

                        <div class="bg-default-2 rounded-20 px-8 pb-9 pt-12 ordersummary-coodiv-box position-relative overflow-hidden" id="orderSummary">
                            <div class="loader w-hidden" id="orderSummaryLoader">
                                <i class="fas fa-fw fa-sync fa-spin"></i>
                            </div>
                            <h2 class="coodiv-text-7">{$LANG.ordersummary}</h2>
                            <div class="position-relative">

                                <div class="subtotal clearfix">
                                    <span class="pull-left float-left">{$LANG.ordersubtotal}</span>
                                    <span id="subtotal" class="pull-right float-right">{$subtotal}</span>
                                </div>
                                {if $promotioncode || $taxrate || $taxrate2}
                                    <div class="bordered-totals">
                                        {if $promotioncode}
                                            <div class="clearfix">
                                                <span class="pull-left float-left">{$promotiondescription}</span>
                                                <span id="discount" class="pull-right float-right">{$discount}</span>
                                            </div>
                                        {/if}
                                        {if $taxrate}
                                            <div class="clearfix">
                                                <span class="pull-left float-left">{$taxname} @ {$taxrate}%</span>
                                                <span id="taxTotal1" class="pull-right float-right">{$taxtotal}</span>
                                            </div>
                                        {/if}
                                        {if $taxrate2}
                                            <div class="clearfix">
                                                <span class="pull-left float-left">{$taxname2} @ {$taxrate2}%</span>
                                                <span id="taxTotal2" class="pull-right float-right">{$taxtotal2}</span>
                                            </div>
                                        {/if}
                                    </div>
                                {/if}
                                <div class="recurring-totals clearfix">
                                    <span class="pull-left float-left">{$LANG.orderForm.totals}</span>
                                    <span id="recurring" class="pull-right float-right recurring-charges">
                                        <span id="recurringMonthly" {if !$totalrecurringmonthly}style="display:none;"{/if}>
                                            <span class="cost">{$totalrecurringmonthly}</span> {$LANG.orderpaymenttermmonthly}<br />
                                        </span>
                                        <span id="recurringQuarterly" {if !$totalrecurringquarterly}style="display:none;"{/if}>
                                            <span class="cost">{$totalrecurringquarterly}</span> {$LANG.orderpaymenttermquarterly}<br />
                                        </span>
                                        <span id="recurringSemiAnnually" {if !$totalrecurringsemiannually}style="display:none;"{/if}>
                                            <span class="cost">{$totalrecurringsemiannually}</span> {$LANG.orderpaymenttermsemiannually}<br />
                                        </span>
                                        <span id="recurringAnnually" {if !$totalrecurringannually}style="display:none;"{/if}>
                                            <span class="cost">{$totalrecurringannually}</span> {$LANG.orderpaymenttermannually}<br />
                                        </span>
                                        <span id="recurringBiennially" {if !$totalrecurringbiennially}style="display:none;"{/if}>
                                            <span class="cost">{$totalrecurringbiennially}</span> {$LANG.orderpaymenttermbiennially}<br />
                                        </span>
                                        <span id="recurringTriennially" {if !$totalrecurringtriennially}style="display:none;"{/if}>
                                            <span class="cost">{$totalrecurringtriennially}</span> {$LANG.orderpaymenttermtriennially}<br />
                                        </span>
                                    </span>
                                </div>

                                <div class="total-due-today total-due-today-padded">
                                    <span id="totalDueToday" class="amt">{$total}</span>
                                    <span>{$LANG.ordertotalduetoday}</span>
                                </div>

                                <div class="express-checkout-buttons">
                                    {foreach $expressCheckoutButtons as $checkoutButton}
                                        {$checkoutButton}
                                        <div class="separator">
                                            - {$LANG.or|strtoupper} -
                                        </div>
                                    {/foreach}
                                </div>
								
								

                                <div class="text-center mt-7 position-relative">
                                    <a href="cart.php?a=checkout&e=false" class="btn btn-primary rounded-20 d-block w-100 coodiv-text-10 btn-checkout{if $cartitems == 0} disabled{/if}" id="checkout">
                                        {$LANG.orderForm.checkout}
                                    </a>
                                    <a href="cart.php" class="coodiv-text-12 color-blackish-blue-opacity" id="continueShopping">
                                    <span class="d-block mt-2 font-weight-light">or</span>
									{$LANG.orderForm.continueShopping}
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		</div>

        <form method="post" action="cart.php">
            <input type="hidden" name="a" value="remove" />
            <input type="hidden" name="r" value="" id="inputRemoveItemType" />
            <input type="hidden" name="i" value="" id="inputRemoveItemRef" />
            <div class="modal fade modal-remove-item" id="modalRemoveItem" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="float-right">
                                <button type="button" class="close" data-dismiss="modal" aria-label="{lang key='orderForm.close'}">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <h4 class="modal-title margin-bottom mb-3">
                                <i class="fas fa-times fa-3x"></i>
                                <span>{lang key='orderForm.removeItem'}</span>
                            </h4>
                            {lang key='cartremoveitemconfirm'}
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{lang key='no'}</button>
                            <button type="submit" class="btn btn-primary">{lang key='yes'}</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <form method="post" action="cart.php">
            <input type="hidden" name="a" value="empty" />
            <div class="modal fade modal-remove-item" id="modalEmptyCart" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="float-right">
                                <button type="button" class="close" data-dismiss="modal" aria-label="{$LANG.orderForm.close}">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <h4 class="modal-title margin-bottom mb-3">
                                <span>{$LANG.emptycart}</span>
                            </h4>
                            {$LANG.cartemptyconfirm}
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{$LANG.no}</button>
                            <button type="submit" class="btn btn-primary">{$LANG.yes}</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
{/if}
