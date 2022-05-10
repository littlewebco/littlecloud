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
    <div class="row justify-content-center mt-15 mb-10">
                        <div class="col-md-9 col-lg-9">
                            <div class="hero-content dark-mode-texts mb-15 mb-lg-5 text-center pt-0 position-relative coodiv-z-index-1">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{$LANG.cartproductdomain}</h4>
                                <h1 class="coodiv-text-6 mb-2 color-blackish-blue">
								{$LANG.cartdomainsconfig}
								</h1>
                                <p class="coodiv-text-9 px-7 mb-0 color-blackish-blue-opacity">
								{$LANG.cartdomainsconfigdesc}
                                </p>
                            </div>
                        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-10">


            <form method="post" action="{$smarty.server.PHP_SELF}?a=confdomains" id="frmConfigureDomains">
                <input type="hidden" name="update" value="true" />


                {if $errormessage}
                    <div class="alert alert-danger mb-10" role="alert">
                        <p>{$LANG.orderForm.correctErrors}:</p>
                        <ul>
                            {$errormessage}
                        </ul>
                    </div>
                {/if}

                {foreach $domains as $num => $domain}
				<div class="domains-addons-products-group-box">
                    <span class="domains-addons-products-title">{$domain.domain}</span>
                    <div class="row justify-content-start align-items-center mb-2">
                        <div class="col-md-8 col-12">
                            <div class="form-group">
                                <h5 class="coodiv-text-9 mb-0">{$LANG.orderregperiod}</h5>
                                <span class="badge badge-pill badge-primary font-weight-light px-6 mr-2">{$domain.regperiod} {$LANG.orderyears}</span>
								{if $domain.hosting}
								<span class="badge badge-pill badge-success font-weight-light px-6 white-text">{$LANG.cartdomainshashosting}</span>
								{else}
								<a href="cart.php" class="badge badge-pill badge-warning font-weight-light">{$LANG.cartdomainsnohosting}</a>
								{/if}

                            </div>
                        </div>
                        
                        {if $domain.eppenabled} 
                            <div class="col-md-4 col-12">
                                <div class="form-group position-relative mb-0 epp-domain-name-input">
                                    <input data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{$LANG.domaineppcodedesc}" type="text" name="epp[{$num}]" id="inputEppcode{$num}" value="{$domain.eppvalue}" placeholder="{$LANG.domaineppcode}" />
                                    <i class="feather icon-lock"></i>
                                </div>
                            </div>
                        {/if}
                    </div>

                    {if $domain.dnsmanagement || $domain.emailforwarding || $domain.idprotection}
                        <div class="row addon-products">

                            {if $domain.dnsmanagement}
                                <div class="col-sm-{math equation="12 / numAddons" numAddons=$domain.addonsCount} mb-3">
                                    <div class="domains-addons-products-box position-relative panel-addon {if $domain.dnsmanagementselected} panel-addon-selected{/if}">
                                        <div class="panel-body text-left">
                                            <label class="d-flex align-items-center">
                                                <input type="checkbox" name="dnsmanagement[{$num}]"{if $domain.dnsmanagementselected} checked{/if} />
                                                <div class="ml-5">
												<h5 class="coodiv-text-10 mb-0">{$LANG.domaindnsmanagement}</h5>
												<span class="coodiv-text-12 d-block font-weight-light"><strong>{$domain.dnsmanagementprice}</strong> {$domain.regperiod} {$LANG.orderyears}</span>
												</div>
                                            </label>
											<i data-toggle="tooltip" data-placement="left" title="{$LANG.domainaddonsdnsmanagementinfo}" class="feather icon-alert-circle"></i>
                                        </div>
                                    </div>
                                </div>
                            {/if}

                            {if $domain.idprotection}
                                <div class="col-sm-{math equation="12 / numAddons" numAddons=$domain.addonsCount} mb-3">
                                    <div class="domains-addons-products-box position-relative panel-addon{if $domain.idprotectionselected} panel-addon-selected{/if}">
                                        <div class="panel-body text-left">
                                            <label class="d-flex align-items-center">
                                                <input type="checkbox" name="idprotection[{$num}]"{if $domain.idprotectionselected} checked{/if} />
												<div class="ml-5">
                                                <h5 class="coodiv-text-10 mb-0">{$LANG.domainidprotection}</h5>
												<span class="coodiv-text-12 d-block font-weight-light"><strong>{$domain.idprotectionprice}</strong> {$domain.regperiod} {$LANG.orderyears}</span>
												</div>
                                            </label>
											<i data-toggle="tooltip" data-placement="left" title="{$LANG.domainaddonsidprotectioninfo}" class="feather icon-alert-circle"></i>
                                        </div>
                                    </div>
                                </div>
                            {/if}

                            {if $domain.emailforwarding}
                                <div class="col-sm-{math equation="12 / numAddons" numAddons=$domain.addonsCount} mb-3">
                                    <div class="domains-addons-products-box position-relative panel-addon{if $domain.emailforwardingselected} panel-addon-selected{/if}">
                                        <div class="panel-body text-left">
                                            <label class="d-flex align-items-center">
                                                <input type="checkbox" name="emailforwarding[{$num}]"{if $domain.emailforwardingselected} checked{/if} />
												<div class="ml-5">
                                                <h5 class="coodiv-text-10 mb-0">{$LANG.domainemailforwarding}</h5>
												<span class="coodiv-text-12 d-block font-weight-light"><strong>{$domain.emailforwardingprice}</strong> {$domain.regperiod} {$LANG.orderyears}</span>
												</div>
                                            </label>
											<i data-toggle="tooltip" data-placement="left" title="{$LANG.domainaddonsemailforwardinginfo}" class="feather icon-alert-circle"></i>
                                        </div>
                                    </div>
                                </div>
                            {/if}

                        </div>
                    {/if}
                    {foreach from=$domain.fields key=domainfieldname item=domainfield}
                        <div class="form-group row">
                            <div class="col-sm-4 text-sm-right"">{$domainfieldname}:</div>
                            <div class="col-sm-8">{$domainfield}</div>
                        </div>
                    {/foreach}
				</div>
                {/foreach}

                {if $atleastonenohosting}
				<div class="domains-addons-products-group-box">
                    <span class="domains-addons-products-title">{$LANG.domainnameservers}</span>

                    <p class="coodiv-text-11 text-center">{$LANG.cartnameserversdesc}</p>

                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="inputNs1">{$LANG.domainnameserver1}</label>
                                <input type="text" class="form-control" id="inputNs1" name="domainns1" value="{$domainns1}" />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="inputNs2">{$LANG.domainnameserver2}</label>
                                <input type="text" class="form-control" id="inputNs2" name="domainns2" value="{$domainns2}" />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="inputNs3">{$LANG.domainnameserver3}</label>
                                <input type="text" class="form-control" id="inputNs3" name="domainns3" value="{$domainns3}" />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="inputNs1">{$LANG.domainnameserver4}</label>
                                <input type="text" class="form-control" id="inputNs4" name="domainns4" value="{$domainns4}" />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="inputNs5">{$LANG.domainnameserver5}</label>
                                <input type="text" class="form-control" id="inputNs5" name="domainns5" value="{$domainns5}" />
                            </div>
                        </div>
                    </div>
				</div>
                {/if}

     
				
				<div class="text-center mt-10 mb-15 d-block position-relative">
                    <button type="submit" class="btn btn-primary rounded-20 coodiv-text-10">
                        {$LANG.continue}
                    </button>
                </div>

            </form>
        </div>
    </div>
	</div>
</div>
