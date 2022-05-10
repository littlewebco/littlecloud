{include file="orderforms/emyui_cart/common.tpl"}

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
                            <div class="hero-content dark-mode-texts mb-5 px-5 text-center pt-0 position-relative coodiv-z-index-1">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{$LANG.domaincheckerchoosedomain}</h4>
                                <h1 class="coodiv-text-6 mb-8 color-blackish-blue">
								{$LANG.cartproductdomaindesc}
								</h1>
                                <p class="coodiv-text-9 px-7 mb-0 color-blackish-blue-opacity">
								{$LANG.cartdomainsconfigdesc}
                                </p>
                            </div>
                        </div>
    </div>
	
	

    <div class="row justify-content-center">

        <div class="col-12 px-10">
            <form id="frmProductDomain">
                <input type="hidden" id="frmProductDomainPid" value="{$pid}" />
				
				
				
				<div class="row justify-content-center domain-productconfigiration-options-group domain-selection-options">
				
				{if $incartdomains}
				<div class="col-lg-2 option shadow-2 domain-productconfigiration-options-item border-opacity text-center rounded-20 position-relative">
				<label>
                 <input type="radio" name="domainoption" value="incart" id="selincart" />
				<i class="icon feather icon-globe d-block"></i>
				<span class="title coodiv-text-12 d-block color-blackish-blue">{$LANG.cartproductdomainuseincart}</span>
				<p class="coodiv-text-12 sub-title mb-0">{$LANG.cartproductdomainchoose}</p>
				<span class="activation-box"></span>
				<i class="activation-icon feather icon-check"></i>
				</label>
				</div>
				
				{/if}
				
				{if $registerdomainenabled}
				<div class="col-lg-2 option shadow-2 domain-productconfigiration-options-item border-opacity text-center rounded-20 position-relative">
				<label>
                <input type="radio" name="domainoption" value="register" id="selregister"{if $domainoption eq "register"} checked{/if} />
				<i class="icon feather icon-globe d-block"></i>
				<span class="title coodiv-text-12 d-block color-blackish-blue">{$LANG.cartregisterdomainchoice|sprintf2:$companyname}</span>
				<p class="coodiv-text-12 sub-title mb-0">{$LANG.domainbulksearch}</p>
				<span class="activation-box"></span>
				<i class="activation-icon feather icon-check"></i>
				</label>
				</div>
				{/if}
				
				{if $transferdomainenabled}
				<div class="col-lg-2 option shadow-2 domain-productconfigiration-options-item border-opacity text-center rounded-20 position-relative">
				<label>
                <input type="radio" name="domainoption" value="transfer" id="seltransfer"{if $domainoption eq "transfer"} checked{/if} />
				<i class="icon feather icon-repeat d-block"></i>
				<span class="title coodiv-text-12 d-block color-blackish-blue">{$LANG.orderForm.transferToUs}</span>
				<p class="coodiv-text-12 sub-title mb-0">{$LANG.domainbulktransfersearch}</p>
				<span class="activation-box"></span>
				<i class="activation-icon feather icon-check"></i>
				</label>
				</div>
				{/if}
				{if $owndomainenabled}
				<div class="col-lg-2 option shadow-2 domain-productconfigiration-options-item border-opacity text-center rounded-20 position-relative">
				<label>
                <input type="radio" name="domainoption" value="owndomain" id="selowndomain"{if $domainoption eq "owndomain"} checked{/if} />
				<i class="icon feather icon-check-circle d-block"></i>
				<span class="title coodiv-text-12 d-block color-blackish-blue">{$LANG.ordertransferdomain}</span>
				<p class="coodiv-text-12 sub-title mb-0">{$LANG.clientareanavdomains}</p>
				<span class="activation-box"></span>
				<i class="activation-icon feather icon-check"></i>
				</label>
				</div>
				{/if}
				
				{if $subdomains}
				<div class="col-lg-2 option shadow-2 domain-productconfigiration-options-item border-opacity text-center rounded-20 position-relative">
				<label>
                <input type="radio" name="domainoption" value="subdomain" id="selsubdomain"{if $domainoption eq "subdomain"} checked{/if} />
				<i class="icon feather icon-globe d-block"></i>
				<span class="title coodiv-text-12 d-block color-blackish-blue">{$LANG.cartsubdomainchoice|sprintf2:$companyname}</span>
				<p class="coodiv-text-12 sub-title mb-0">{$LANG.cartproductdomainchoose}</p>
				<span class="activation-box"></span>
				<i class="activation-icon feather icon-check"></i>
				</label>
				</div>
				{/if}
		
				
				
				
				</div>
				
				
			
				
                <div class="domain-selection-options domain-slector-inputs">
				{if $incartdomains}
                        <div class="option">
						
				
                            <div class="domain-input-group clearfix" id="domainincart">
							<div class="row justify-content-center mb-10">
                                <div class="col-md-9 col-lg-9 text-center">
							    <h1 class="coodiv-text-8 mb-3 color-blackish-blue">{$LANG.cartproductdomainuseincart}</h1>
                                </div>
							</div>
							
                                <div class="row incartdomains-select">
                                    <div class="col-sm-8 col-sm-offset-1 col-md-6 col-md-offset-2 offset-sm-1 offset-md-2 pr-lg-0">
                                        <div class="domains-row">
                                            <select id="incartsld" name="incartdomain" class="form-control">
                                                {foreach key=num item=incartdomain from=$incartdomains}
                                                    <option value="{$incartdomain}">{$incartdomain}</option>
                                                {/foreach}
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-2 px-lg-0">
                                        <button type="submit" class="btn btn-primary btn-block">
                                            {$LANG.orderForm.use}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
					{/if}
					
                    {if $registerdomainenabled}
                        <div class="option">
						
                            <div class="domain-input-group clearfix" id="domainregister">
							<div class="row justify-content-center mb-10">
                                <div class="col-md-9 col-lg-9 text-center">
							    <h1 class="coodiv-text-8 mb-3 color-blackish-blue">{$LANG.cartregisterdomainchoice|sprintf2:$companyname}</h1>
                                </div>
							</div>
							
							<div class="domain-header-search-form d-flex flex-wrap shadow-0">
                                    <div class="single-input w-100 w-sm-50 w-lg-35 py-4 col-md-8 pr-lg-0 position-relative">
                                    <input id="registersld" value="{$sld}"  data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" class="inputdomainsearch" placeholder="{lang key='orderForm.enterDomain'}" autocapitalize="none">
									<div class="inputdomainselect">
                                    <select name="registertld" id="registertld" class="nice-select gr-text-11 text-blackish-blue rounded-8 h-100 arrow-3">
                                    {foreach from=$registertlds item=listtld}
                                    <option value="{$listtld}"{if $listtld eq $tld} selected="selected"{/if}>{$listtld}</option>
                                    {/foreach}
                                    </select>
									</div>
									</div>
                      
                                    <div class="single-input w-100 w-lg-30 d-flex align-items-center justify-content-center border-0 pb-4 pt-lg-4 pt-0 pl-lg-0 col-md-4">
                                        <button type="submit" class="btn btn-primary search-btn rounded-right-10-0 full-border-radius-10-sm">{$LANG.orderForm.check}</button>
                                    </div>
                            </div>
							
							
                            </div>
                        </div>
                    {/if}
                    {if $transferdomainenabled}
                        <div class="option">
						
                            <div class="domain-input-group clearfix" id="domaintransfer">
							
							<div class="row justify-content-center mb-10">
                                <div class="col-md-9 col-lg-9 text-center">
							    <h1 class="coodiv-text-8 mb-3 color-blackish-blue">{$LANG.orderForm.transferToUs}</h1>
                                </div>
							</div>
							
							<div class="domain-header-search-form d-flex flex-wrap shadow-0">
                                    <div class="single-input w-100 w-sm-50 w-lg-35 py-4 col-md-8 pr-lg-0 position-relative">
                                    <input id="transfersld" value="{$sld}" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" class="inputdomainsearch" placeholder="{lang key='orderForm.enterDomain'}" autocapitalize="none">
									<div class="inputdomainselect">
                                    <select name="transfertld" id="transfertld" class="nice-select gr-text-11 text-blackish-blue rounded-8 h-100 arrow-3">
                                    {foreach from=$transfertlds item=listtld}
                                    <option value="{$listtld}"{if $listtld eq $tld} selected="selected"{/if}>{$listtld}</option>
                                    {/foreach}
                                    </select>
									</div>
									</div>
                      
                                    <div class="single-input w-100 w-lg-30 d-flex align-items-center justify-content-center border-0 pb-4 pt-lg-4 pt-0 pl-lg-0 col-md-4">
                                        <button type="submit" class="btn btn-primary search-btn rounded-right-10-0 full-border-radius-10-sm">{$LANG.orderForm.transfer}</button>
                                    </div>
                            </div>
							
                   
                            </div>
                        </div>
                    {/if}
                    {if $owndomainenabled}
                        <div class="option">
                            <div class="domain-input-group clearfix" id="domainowndomain">
							
							
							<div class="row justify-content-center mb-10">
                                <div class="col-md-9 col-lg-9 text-center">
							    <h1 class="coodiv-text-8 mb-3 color-blackish-blue">{$LANG.ordertransferdomain}</h1>
                                </div>
							</div>
							
							<div class="domain-header-search-form d-flex flex-wrap shadow-0">
                                    <div class="single-input w-100 w-sm-50 w-lg-35 py-4 col-md-8 pr-lg-0 position-relative">
                                    <input id="owndomainsld" value="{$sld}" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" class="inputdomainsearch" placeholder="{$LANG.yourdomainplaceholder}" autocapitalize="none">
									<input type="text" id="owndomaintld" value="{$tld|substr:1}" placeholder="{$LANG.yourtldplaceholder}" class="form-control owndomaintld-input-ab" autocapitalize="none" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.required'}" />

									</div>
                      
                                    <div class="single-input w-100 w-lg-30 d-flex align-items-center justify-content-center border-0 pb-4 pt-lg-4 pt-0 pl-lg-0 col-md-4">
                                        <button type="submit" class="btn btn-primary search-btn rounded-right-10-0 full-border-radius-10-sm">{$LANG.orderForm.use}</button>
                                    </div>
                            </div>
							
			
                            </div>
                        </div>
                    {/if}
                    {if $subdomains}
                        <div class="option">
				
							
                            <div class="domain-input-group clearfix" id="domainsubdomain">
							
							<div class="row justify-content-center mb-10">
                                <div class="col-md-9 col-lg-9 text-center">
							    <h1 class="coodiv-text-8 mb-3 color-blackish-blue">{$LANG.cartsubdomainchoice|sprintf2:$companyname}</h1>
                                </div>
							</div>
							
							<div class="domain-header-search-form d-flex flex-wrap shadow-0">
                                    <div class="single-input w-100 w-sm-50 w-lg-35 py-4 col-md-8 pr-lg-0 position-relative">
                                    <input id="subdomainsld" value="{$sld}" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" class="inputdomainsearch" placeholder="yourname" autocapitalize="none">
									<div class="inputdomainselect">
                                    <select name="subdomaintld" id="subdomaintld" class="nice-select gr-text-11 text-blackish-blue rounded-8 h-100 arrow-3">
                                    {foreach $subdomains as $subid => $subdomain}
                                    <option value="{$subid}">{$subdomain}</option>
                                    {/foreach}
                                    </select>
									</div>
									</div>
                      
                                    <div class="single-input w-100 w-lg-30 d-flex align-items-center justify-content-center border-0 pb-4 pt-lg-4 pt-0 pl-lg-0 col-md-4">
                                        <button type="submit" class="btn btn-primary search-btn rounded-right-10-0 full-border-radius-10-sm">{$LANG.orderForm.check}</button>
                                    </div>
                            </div> 
							
						
                            </div>
                        </div>
					{/if}

                </div>

                {if $freedomaintlds}
                    <p>* <em>{$LANG.orderfreedomainregistration} {$LANG.orderfreedomainappliesto}: {$freedomaintlds}</em></p>
                {/if}
				
				
            
                

            </form>

            <div class="clearfix"></div>
            <form method="post" action="{$WEB_ROOT}/cart.php?a=add&pid={$pid}&domainselect=1" id="frmProductDomainSelections">

                <div id="DomainSearchResults" class="w-hidden">

                    <div id="searchDomainInfo">
                        <p id="primaryLookupSearching" class="domain-lookup-loader domain-lookup-primary-loader domain-searching domain-checker-result-headline">
                            <i class="fas fa-spinner fa-spin"></i>
                            <span class="domain-lookup-register-loader">{lang key='orderForm.checkingAvailability'}...</span>
                            <span class="domain-lookup-transfer-loader">{lang key='orderForm.verifyingTransferEligibility'}...</span>
                            <span class="domain-lookup-other-loader">{lang key='orderForm.verifyingDomain'}...</span>
                        </p>
						
                        <div id="primaryLookupResult" class="domain-lookup-result domain-lookup-primary-results w-hidden">
						
                            <div class="domain-unavailable alert alert-warning text-left rounded-10 headline">
							<h4 class="alert-heading coodiv-text-8 font-weight-bold">{lang key='orderForm.domainIsUnavailable'}</h4>
							<p class="coodiv-text-10">
                                        Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.
                                    </p>
							</div>
							
							<div class="domain-available alert alert-success text-left rounded-10" role="alert">
                                    <h4 class="alert-heading coodiv-text-8 font-weight-bold">{$LANG.domainavailable1} <strong></strong> {$LANG.domainavailable2}</h4>
                                    <p class="coodiv-text-10">
                                        Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.
                                    </p>
                            </div>
							
							
                            <div class="btn btn-primary domain-contact-support headline">{$LANG.domainContactUs}</div>
							
                            <div class="transfer-eligible alert alert-success text-left rounded-10">
                                <h4 class="alert-heading coodiv-text-8 font-weight-bold">{lang key='orderForm.transferEligible'}</h4>
                                <p class="coodiv-text-10 mb-0">{lang key='orderForm.transferUnlockBeforeContinuing'}</p>
                            </div>
							
                            <div class="transfer-not-eligible alert alert-warning text-left rounded-10">
                                <h4 class="alert-heading coodiv-text-8 font-weight-bold">{lang key='orderForm.transferNotEligible'}</h4>
                                <p class="coodiv-text-10">{lang key='orderForm.transferNotRegistered'}</p>
                                <p class="coodiv-text-10">{lang key='orderForm.trasnferRecentlyRegistered'}</p>
                                <p class="coodiv-text-10 mb-0">{lang key='orderForm.transferAlternativelyRegister'}</p>
                            </div>
							
                            <div class="domain-invalid alert alert-warning text-left rounded-10">
                                <h4 class="alert-heading coodiv-text-8 font-weight-bold">{lang key='orderForm.domainInvalid'}</h4>
                                <p class="coodiv-text-10">
                                    {lang key='orderForm.domainLetterOrNumber'}<span class="domain-length-restrictions">{lang key='orderForm.domainLengthRequirements'}</span><br />
                                    {lang key='orderForm.domainInvalidCheckEntry'}
                                </p>
                            </div>
							
                            <div id="idnLanguageSelector" class="margin-10 idn-language-selector idn-language w-hidden">
                                <div class="row">
                                    <div class="col-sm-10 col-sm-offset-1 col-lg-8 col-lg-offset-2 offset-sm-1 offset-lg-2">
                                        <div class="margin-10 text-center">
                                            {lang key='cart.idnLanguageDescription'}
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-8 col-lg-6 col-sm-offset-2 col-lg-offset-3 offset-sm-2 offset-lg-3">
                                        <div class="form-group">
                                            <select name="idnlanguage" class="form-control">
                                                <option value="">{lang key='cart.idnLanguage'}</option>
                                                {foreach $idnLanguages as $idnLanguageKey => $idnLanguage}
                                                    <option value="{$idnLanguageKey}">{lang key='idnLanguage.'|cat:$idnLanguageKey}</option>
                                                {/foreach}
                                            </select>
                                            <div class="field-error-msg">
                                                {lang key='cart.selectIdnLanguageForRegister'}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
							
                            <div class="domain-price coodiv-text-9 mb-15">
                                <span class="register-price-label">{lang key='orderForm.domainPriceRegisterLabel'}</span>
                                <span class="transfer-price-label w-hidden">{lang key='orderForm.domainPriceTransferLabel'}</span>
                                <span class="price"></span>
                            </div>
							
							
                            <p class="domain-error domain-checker-unavailable alert alert-warning text-left  headline"></p>
                            <input type="hidden" id="resultDomainOption" name="domainoption" />
                            <input type="hidden" id="resultDomain" name="domains[]" />
                            <input type="hidden" id="resultDomainPricingTerm" />
                        </div>
                    </div>

                    {if $registerdomainenabled}
                        {if $spotlightTlds}
                            <div id="spotlightTlds" class="spotlight-tlds-group row justify-content-center mx-0 mb-10 px-8">
                            {foreach $spotlightTlds as $key => $data}
                                <div class="spotlight-tld-item col-lg col-6 spotlight-tld-container-{$spotlightTlds|count}">
                                    <div id="spotlight{$data.tldNoDots}" class="spotlight-tld">
                                        {if $data.group}
                                            <div class="spotlight-tld-{$data.group}">{$data.groupDisplayName}</div>
                                        {/if}
                                        <span class="spotlight-tld-name">{$data.tld}</span>
                                        <span class="domain-lookup-loader domain-lookup-spotlight-loader">
                                            <i class="fas fa-spinner fa-spin"></i>
                                        </span>
                                        <div class="domain-lookup-result">
                                            <button type="button" class="btn unavailable w-hidden" disabled="disabled">
                                                {lang key='domainunavailable'}
                                            </button>
                                            <button type="button" class="btn invalid w-hidden" disabled="disabled">
                                                {lang key='domainunavailable'}
                                            </button>
                                            <span class="available price w-hidden">{$data.register}</span>
                                            <button type="button" class="btn btn-add-to-cart w-hidden" data-whois="0" data-domain="">
                                                <span class="to-add">{lang key='orderForm.add'}</span>
                                                <span class="loading">
                                                    <i class="fas fa-spinner fa-spin"></i> {lang key='loading'}
                                                </span>
                                                <span class="added"><i class="far fa-shopping-cart"></i> {lang key='checkout'}</span>
                                                <span class="unavailable">{$LANG.domaincheckertaken}</span>
                                            </button>
                                            <button type="button" class="btn btn-primary domain-contact-support w-hidden">
                                                {lang key='domainChecker.contactSupport'}
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    {/if}

                        <div class="suggested-domains w-hidden px-8">
                    
                    <div id="suggestionsLoader" class="panel-body card-body domain-lookup-loader domain-lookup-suggestions-loader">
                        <i class="fas fa-spinner fa-spin"></i> {lang key='orderForm.generatingSuggestions'}
                    </div>
                    <div id="domainSuggestions" class="domain-lookup-result w-hidden">
                        <div class="domain-suggestion list-group-item w-hidden border-opacity rounded-10 mb-3 px-5 py-5">
                            <span class="domain coodiv-text-8 font-weight-bold"></span><span class="extension coodiv-text-8 font-weight-bold"></span>
                            <div class="actions">
                                <span class="price"></span>
                                <button type="button" class="btn btn-add-to-cart" data-whois="1" data-domain="">
                                    <span class="to-add">{$LANG.addtocart}</span>
                                    <span class="loading">
                                        <i class="fas fa-spinner fa-spin"></i> {lang key='loading'}
                                    </span>
                                    <span class="added"><i class="far fa-shopping-cart"></i> {lang key='checkout'}</span>
                                    <span class="unavailable">{$LANG.domaincheckertaken}</span>
                                </button>
                                <button type="button" class="btn btn-primary domain-contact-support w-hidden">
                                    {lang key='domainChecker.contactSupport'}
                                </button>
                            </div>
                        </div>
                    </div>					
                </div>
                    {/if}
                </div>

                <div class="text-center mt-10">
                    <button id="btnDomainContinue" type="submit" class="btn btn-primary rounded-20 w-hidden coodiv-text-10 mb-10" disabled="disabled">
                        {$LANG.continue}
                    </button>
                </div>
            </form>
			
			
			<div class="row justify-content-center mb-15 domain-lookup-loader domain-lookup-primary-loader">
			<div class="col-md-11 banner-widget-sidebar bg-gradient-primary shadow-2 text-white py-13 px-10 rounded-20 position-relative dark-bg">
                <svg class="banner-widget-sidebar-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 604 178">
                    <path d="M1920,0V146.85c-14.7,5.55-28.79,12.05-49,18.15-9.73,2.94-42.25,12.77-72,13-72.59.56-78.87-56.38-182-90-38.62-12.59-65.18-13.55-99-40a187.6,187.6,0,0,1-43-48Z" transform="translate(-1316)" style="fill: #ffffff; opacity: 0.2;"></path>
                    <path d="M1882,0c9.29,27.61-36.45,83.32-63,79-12.19-2-14.6-15.7-38-25-17.81-7.08-24.76-2.45-37-9-9.63-5.15-21.36-16.58-28-45Z" transform="translate(-1316)" style="fill: #ffffff; opacity: 0.1;"></path>
                </svg>
                    <div class="position-relative">
                        <h3 class="coodiv-text-5 font-weight-light">
                        <span>Unbelievable domain </span><span class="font-weight-bold strike-bottom yellow">deals?</span>
						<span class="d-block">It's crazy, but it's true!</span>
                        </h3>
						<p class="coodiv-text-10 white-text">Your dream domain is out there waiting for you! Check out our complete list of TLDs to see which ones are new, trending, or on sale right now. Enhance your online presence with:</p>
                        <a href="#" class="btn rounded-20 btn-white mt-3 coodiv-text-12">View Promotions</a>
                    </div>
            </div>
			</div>
			
			</div>
			
			
        </div>
    </div>
	</div>
</div>
