{include file="orderforms/standard_cart/common.tpl"}

<script>
var _localLang = {
    'addToCart': '{$LANG.orderForm.addToCart|escape}',
    'addedToCartRemove': '{$LANG.orderForm.addedToCartRemove|escape}'
}
</script>

<div id="order-standard_cart">

    <div class="row justify-content-center mb-10 px-5 mt-5">
	<div class="orderform-step-form-wizard-group col-12 d-flex white-bg justify-content-center border-opacity rounded-20 overflow-hidden">
	
	<a href="#" class="orderform-step-form-wizard-item d-flex align-items-center position-relative pl-6 pr-10 py-7 mr-12 active">
	<i class="feather icon-globe"></i>
	<span class="coodiv-text-11 font-weight-bold color-blackish-blue"><small class="d-block font-weight-light mb-n2 color-blackish-blue-opacity">step 1/3</small>{$LANG.cartproductconfig}</span>
	<div class="left-triangle-border"></div>
	</a>
	
	<a href="#" class="orderform-step-form-wizard-item d-flex align-items-center position-relative pl-6 pr-10 py-7 mr-12">
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

    <div  class="white-bg border-opacity rounded-20">
    <div class="row justify-content-center mt-lg-15 mb-lg-10 mt-10 mb-0">
                        <div class="col-md-9 col-lg-9">
                            <div class="hero-content dark-mode-texts mb-15 mb-lg-5 text-center pt-0 position-relative coodiv-z-index-1">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{$LANG.carteditproductconfig}</h4>
                                <h1 class="coodiv-text-6 mb-2 color-blackish-blue">
								{$LANG.orderconfigure}
								</h1>
                                <p class="coodiv-text-9 px-7 mb-0 color-blackish-blue-opacity">
								{$LANG.orderForm.configureDesiredOptions}
                                </p>
                            </div>
                        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-11">

            <form id="frmConfigureProduct">
                <input type="hidden" name="configure" value="true" />
                <input type="hidden" name="i" value="{$i}" />

                <div class="row">
                    <div class="secondary-cart-body">

                        <div class="product-info">
                            <p class="product-title">{$productinfo.name}</p>
                            <p>{$productinfo.description}</p>
                        </div>

                        <div class="alert alert-danger w-hidden" role="alert" id="containerProductValidationErrors">
                            <p class="coodiv-text-9">{$LANG.orderForm.correctErrors}:</p>
                            <ul id="containerProductValidationErrorsList"></ul>
                        </div>

                        {if $pricing.type eq "recurring"}
						<div class="row addon-products">
                            <div class="field-container col-12">
                                <div class="form-group">
                                    <label for="inputBillingcycle">{$LANG.cartchoosecycle}</label>
                                    <br>
                                    <select name="billingcycle" id="inputBillingcycle" class="form-control select-inline custom-select" onchange="{if $configurableoptions}updateConfigurableOptions({$i}, this.value);{else}recalctotals();{/if}">
                                        {if $pricing.monthly}
                                            <option value="monthly"{if $billingcycle eq "monthly"} selected{/if}>
                                                {$pricing.monthly}
                                            </option>
                                        {/if}
                                        {if $pricing.quarterly}
                                            <option value="quarterly"{if $billingcycle eq "quarterly"} selected{/if}>
                                                {$pricing.quarterly}
                                            </option>
                                        {/if}
                                        {if $pricing.semiannually}
                                            <option value="semiannually"{if $billingcycle eq "semiannually"} selected{/if}>
                                                {$pricing.semiannually}
                                            </option>
                                        {/if}
                                        {if $pricing.annually}
                                            <option value="annually"{if $billingcycle eq "annually"} selected{/if}>
                                                {$pricing.annually}
                                            </option>
                                        {/if}
                                        {if $pricing.biennially}
                                            <option value="biennially"{if $billingcycle eq "biennially"} selected{/if}>
                                                {$pricing.biennially}
                                            </option>
                                        {/if}
                                        {if $pricing.triennially}
                                            <option value="triennially"{if $billingcycle eq "triennially"} selected{/if}>
                                                {$pricing.triennially}
                                            </option>
                                        {/if}
                                    </select>
                                </div>
                            </div>
						</div>
                        {/if}

                        {if count($metrics) > 0}
                            <div class="sub-heading">
                                <span class="primary-bg-color">{$LANG.metrics.title}</span>
                            </div>
							
							<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                <span>{$LANG.metrics.title}</span>
                            </div>

                            <p>{$LANG.metrics.explanation}</p>

                            <ul>
                                {foreach $metrics as $metric}
                                    <li>
                                        {$metric.displayName}
                                        -
                                        {if count($metric.pricing) > 1}
                                            {$LANG.metrics.startingFrom} {$metric.lowestPrice} / {if $metric.unitName}{$metric.unitName}{else}{$LANG.metrics.unit}{/if}
                                            <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#modalMetricPricing-{$metric.systemName}">
                                                {$LANG.metrics.viewPricing}
                                            </button>
                                        {elseif count($metric.pricing) == 1}
                                            {$metric.lowestPrice} / {if $metric.unitName}{$metric.unitName}{else}{$LANG.metrics.unit}{/if}
                                            {if $metric.includedQuantity > 0} ({$metric.includedQuantity} {$LANG.metrics.includedNotCounted}){/if}
                                        {/if}
                                        {include file="$template/usagebillingpricing.tpl"}
                                    </li>
                                {/foreach}
                            </ul>

                            <br>
                        {/if}

                        {if $productinfo.type eq "server"}
						
							<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                <span>{$LANG.cartconfigserver}</span>
                            </div>

                            <div class="field-container">

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputHostname">{$LANG.serverhostname}</label>
                                            <input type="text" name="hostname" class="form-control" id="inputHostname" value="{$server.hostname}" placeholder="servername.yourdomain.com">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputRootpw">{$LANG.serverrootpw}</label>
                                            <input type="password" name="rootpw" class="form-control" id="inputRootpw" value="{$server.rootpw}">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputNs1prefix">{$LANG.serverns1prefix}</label>
                                            <input type="text" name="ns1prefix" class="form-control" id="inputNs1prefix" value="{$server.ns1prefix}" placeholder="ns1">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputNs2prefix">{$LANG.serverns2prefix}</label>
                                            <input type="text" name="ns2prefix" class="form-control" id="inputNs2prefix" value="{$server.ns2prefix}" placeholder="ns2">
                                        </div>
                                    </div>
                                </div>

                            </div>
                        {/if}

                        {if $configurableoptions}
                           
							
							<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                <span>{$LANG.orderconfigpackage}</span>
                            </div>
							
                            <div class="product-configurable-options" id="productConfigurableOptions">
                                <div class="row">
                                    {foreach $configurableoptions as $num => $configoption}
                                    {if $configoption.optiontype eq 1}
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label>
                                                <select name="configoption[{$configoption.id}]" id="inputConfigOption{$configoption.id}" class="form-control">
                                                    {foreach key=num2 item=options from=$configoption.options}
                                                        <option value="{$options.id}"{if $configoption.selectedvalue eq $options.id} selected="selected"{/if}>
                                                            {$options.name}
                                                        </option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                    {elseif $configoption.optiontype eq 2}
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label>
                                                {foreach key=num2 item=options from=$configoption.options}
                                                    <br />
                                                    <label>
                                                        <input type="radio" name="configoption[{$configoption.id}]" value="{$options.id}"{if $configoption.selectedvalue eq $options.id} checked="checked"{/if} />
                                                        {if $options.name}
                                                            {$options.name}
                                                        {else}
                                                            {$LANG.enable}
                                                        {/if}
                                                    </label>
                                                {/foreach}
                                            </div>
                                        </div>
                                    {elseif $configoption.optiontype eq 3}
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label>
                                                <br />
                                                <label>
                                                    <input type="checkbox" name="configoption[{$configoption.id}]" id="inputConfigOption{$configoption.id}" value="1"{if $configoption.selectedqty} checked{/if} />
                                                    {if $configoption.options.0.name}
                                                        {$configoption.options.0.name}
                                                    {else}
                                                        {$LANG.enable}
                                                    {/if}
                                                </label>
                                            </div>
                                        </div>
                                    {elseif $configoption.optiontype eq 4}
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label>
                                                {if $configoption.qtymaximum}
                                                {if !$rangesliderincluded}
                                                    <script type="text/javascript" src="{$BASE_PATH_JS}/ion.rangeSlider.min.js"></script>
                                                <link href="{$BASE_PATH_CSS}/ion.rangeSlider.css" rel="stylesheet">
                                                <link href="{$BASE_PATH_CSS}/ion.rangeSlider.skinModern.css" rel="stylesheet">
                                                    {assign var='rangesliderincluded' value=true}
                                                {/if}
                                                    <input type="text" name="configoption[{$configoption.id}]" value="{if $configoption.selectedqty}{$configoption.selectedqty}{else}{$configoption.qtyminimum}{/if}" id="inputConfigOption{$configoption.id}" class="form-control" />
                                                    <script>
                                                        var sliderTimeoutId = null;
                                                        var sliderRangeDifference = {$configoption.qtymaximum} - {$configoption.qtyminimum};
                                                        // The largest size that looks nice on most screens.
                                                        var sliderStepThreshold = 25;
                                                        // Check if there are too many to display individually.
                                                        var setLargerMarkers = sliderRangeDifference > sliderStepThreshold;

                                                        jQuery("#inputConfigOption{$configoption.id}").ionRangeSlider({
                                                            min: {$configoption.qtyminimum},
                                                            max: {$configoption.qtymaximum},
                                                            grid: true,
                                                            grid_snap: setLargerMarkers ? false : true,
                                                            onChange: function() {
                                                                if (sliderTimeoutId) {
                                                                    clearTimeout(sliderTimeoutId);
                                                                }

                                                                sliderTimeoutId = setTimeout(function() {
                                                                    sliderTimeoutId = null;
                                                                    recalctotals();
                                                                }, 250);
                                                            }
                                                        });
                                                    </script>
                                                {else}
                                                    <div>
                                                        <input type="number" name="configoption[{$configoption.id}]" value="{if $configoption.selectedqty}{$configoption.selectedqty}{else}{$configoption.qtyminimum}{/if}" id="inputConfigOption{$configoption.id}" min="{$configoption.qtyminimum}" onchange="recalctotals()" onkeyup="recalctotals()" class="form-control form-control-qty" />
                                                        <span class="form-control-static form-control-static-inline">
                                                                x {$configoption.options.0.name}
                                                            </span>
                                                    </div>
                                                {/if}
                                            </div>
                                        </div>
                                    {/if}
                                    {if $num % 2 != 0}
                                </div>
                                <div class="row">
                                    {/if}
                                    {/foreach}
                                </div>
                            </div>

                        {/if}

                        {if $customfields}
						

							<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                <span>{$LANG.orderadditionalrequiredinfo}<br><i><small>{lang key='orderForm.requiredField'}</small></i></span>
                            </div>

                            <div class="field-container">
                                {foreach $customfields as $customfield}
                                    <div class="form-group">
                                        <label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
                                        {$customfield.input}
                                        {if $customfield.description}
                                            <span class="field-help-text">
                                                {$customfield.description}
                                            </span>
                                        {/if}
                                    </div>
                                {/foreach}
                            </div>

                        {/if}

                        {if $addons || count($addonsPromoOutput) > 0}
						<div class="domains-addons-products-group-box">

              
							 <span class="domains-addons-products-title">{$LANG.cartavailableaddons}</span>

                            {foreach $addonsPromoOutput as $output}
                                <div>
                                    {$output}
                                </div>
                            {/foreach}

                            <div class="row addon-products">
                                {foreach $addons as $addon}
                                    <div class="col-12 mb-5">
                                        <div class="domains-addons-products-box position-relative panel-addon{if $addon.status} panel-addon-selected{/if}">
                                            <div class="panel-body text-left">
                                                <label class="d-flex align-items-center">
                                                <input type="checkbox" name="addons[{$addon.id}]"{if $addon.status} checked{/if} />
                                                    
												<div class="ml-5">
												<h5 class="coodiv-text-10 mb-0">{$addon.name}</h5>
												<span class="coodiv-text-12 d-block font-weight-light"><strong>{$addon.pricing}</strong></span>
												</div>
                                                </label>
												<i data-toggle="tooltip" data-placement="left" title="{$addon.description}" class="feather icon-alert-circle"></i>
                                            </div>
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
							
                        </div>
                        {/if}

                        <div class="alert alert-warning info-text-sm mt-2 d-block">
                            <i class="fas fa-question-circle"></i>
                            {$LANG.orderForm.haveQuestionsContact} <a href="contact.php" target="_blank" class="alert-link">{$LANG.orderForm.haveQuestionsClickHere}</a>
                        </div>

                    </div>
                    <div class="secondary-cart-sidebar" id="scrollingPanelContainer">

                        <div class="bg-default-2 rounded-20 px-8 pb-9 pt-12 ordersummary-coodiv-box position-relative overflow-hidden" id="orderSummary">
                           <h2 class="coodiv-text-7">{$LANG.ordersummary}</h2>
						   <div class="">
                                <div class="loader" id="orderSummaryLoader">
                                    <i class="fas fa-fw fa-sync fa-spin"></i>
                                </div>
                                
                                <div class="" id="producttotal"></div>
                            </div>
							
							
                            <div class="text-center mt-7 position-relative">
                                <button type="submit" id="btnCompleteProductConfig" class="btn btn-primary rounded-20 d-block w-100 coodiv-text-10">
                                    {$LANG.continue}
                                </button>
                            </div>
							
							
                        </div>

                    </div>

                </div>

            </form>
        </div>
    </div>
</div>
</div>

<script>recalctotals();</script>
