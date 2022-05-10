{include file="orderforms/emyui_cart/common.tpl"}

<div class="order-form-menu-scroller white-bg rounded-20 border-opacity mb-7">
  <nav class="nav nav-underline d-flex justify-content-center" aria-label="second navigation">
    {include file="orderforms/emyui_cart/sidebar-categories.tpl"}
  </nav>
</div>


<div id="order-standard_cart">
<div class="white-bg border-opacity rounded-20 pb-15 px-9">
<div class="row justify-content-center  mt-15 mb-10">
                        <div class="col-md-9 col-lg-9">
                            <div class="hero-content dark-mode-texts mb-15 mb-lg-5 text-center pt-0 position-relative coodiv-z-index-1">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{lang key='yourdomains'}</h4>
                                <h1 class="coodiv-text-4 mb-8 color-blackish-blue">
								{if $totalResults > 1}{lang key='domainrenewals'}{else}{lang key='domainrenewal'}{/if}
								</h1>
								{if $totalResults > 5}
                                <input id="domainRenewalFilter" type="search" class="domain-renewals-filter form-control input-inline-100" placeholder="{lang key='searchenterdomain'}">
                                {/if}
                                <p class="coodiv-text-9 pr-md-11 mb-0 color-blackish-blue-opacity">
                                A domain name is simply a human readable form of an IP address. In other words, it's the destination you type into a web browser — such as www.google.com. Similar to how you would scroll to a contact in your phone rather than manually dialing a phone number, domain names make it easier for us to navigate the online world and avoid having to memorize long IP addresses.
                                </p>
                            </div>
                        </div>
                    </div>
					
    <div class="row justify-content-center">
	
	

        <div class="col-12">


            {if $totalDomainCount == 0}
                <div id="no-domains" class="alert alert-warning text-center" role="alert">
                    {$LANG.domainRenewal.noDomains}
                </div>
                <p class="text-center">
                    <a href="clientarea.php" class="btn btn-default">
                        {$LANG.orderForm.returnToClientArea}
                    </a>
                </p>
            {else}
                <div class="row">

                    <div class="secondary-cart-body">
                        {if $totalResults < $totalDomainCount}
                            <div class="text-center">
                                {lang key='domainRenewal.showingDomains' showing=$totalResults totalCount=$totalDomainCount}
                                <a id="linkShowAll" href="{routePath('cart-domain-renewals')}">{lang key='domainRenewal.showAll'}</a>
                            </div>
                        {/if}

                        <div id="domainRenewals" class="domain-renewals">
                            {foreach $renewalsData as $renewalData}
                                <div class="domain-renewal" data-domain="{$renewalData.domain}">
                                    <div class="pull-right float-right">
                                        {if !$renewalData.eligibleForRenewal}
                                            <span class="label label-info">
                                                {if $renewalData.freeDomainRenewal}
                                                    {lang key='domainRenewal.freeWithService'}
                                                {else}
                                                    {lang key='domainRenewal.unavailable'}
                                                {/if}
                                            </span>
                                        {elseif ($renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod)}
                                            <span class="label label-info">
                                                {lang key='domainrenewalspastgraceperiod'}
                                            </span>
                                        {elseif !$renewalData.beforeRenewLimit && $renewalData.daysUntilExpiry > 0}
                                            <span class="label label-{if $renewalData.daysUntilExpiry > 30}success{else}warning{/if}">
                                                {lang key='domainRenewal.expiringIn' days=$renewalData.daysUntilExpiry}
                                            </span>
                                        {elseif $renewalData.daysUntilExpiry === 0}
                                            <span class="label label-grey">
                                                {lang key='expiresToday'}
                                            </span>
                                        {elseif $renewalData.beforeRenewLimit}
                                            <span class="label label-info">
                                                {lang key='domainRenewal.maximumAdvanceRenewal' days=$renewalData.beforeRenewLimitDays}
                                            </span>
                                        {else}
                                            <span class="label label-danger">
                                                {lang key='domainRenewal.expiredDaysAgo' days=$renewalData.daysUntilExpiry*-1}
                                            </span>
                                        {/if}
                                    </div>

                                    <h3 class="font-size-24">{$renewalData.domain}</h3>

                                    <p>{lang key='clientareadomainexpirydate'}: {$renewalData.expiryDate->format('j M Y')} ({$renewalData.expiryDate->diffForHumans()})</p>
                                    {if $renewalData.freeDomainRenewal}
                                        <p class="domain-renewal-desc">{lang key='domainRenewal.freeWithServiceDesc'}</p>
                                    {/if}

                                    {if ($renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod) || !count($renewalData.renewalOptions)}
                                    {else}
                                        <form class="form-horizontal">
                                            <div class="form-group row">
                                                <label for="renewalPricing{$renewalData.id}" class="control-label col-md-5">
                                                    {lang key='domainRenewal.availablePeriods'}
                                                    {if $renewalData.inGracePeriod || $renewalData.inRedemptionGracePeriod}
                                                        *
                                                    {/if}
                                                </label>
                                                <div class="col-sm-6">
                                                    <select class="form-control select-renewal-pricing" id="renewalPricing{$renewalData.id}" data-domain-id="{$renewalData.id}">
                                                        {foreach $renewalData.renewalOptions as $renewalOption}
                                                            <option value="{$renewalOption.period}">
                                                                {$renewalOption.period} {lang key='orderyears'} @ {$renewalOption.rawRenewalPrice}
                                                                {if $renewalOption.gracePeriodFee && $renewalOption.gracePeriodFee->toNumeric() != 0.00}
                                                                    + {$renewalOption.gracePeriodFee} {lang key='domainRenewal.graceFee'}
                                                                {/if}
                                                                {if $renewalOption.redemptionGracePeriodFee && $renewalOption.redemptionGracePeriodFee->toNumeric() != 0.00}
                                                                    + {$renewalOption.redemptionGracePeriodFee} {lang key='domainRenewal.redemptionFee'}
                                                                {/if}
                                                            </option>
                                                        {/foreach}
                                                    </select>
                                                </div>
                                            </div>
                                        </form>
                                    {/if}

                                    <div class="text-right">
                                        {if !$renewalData.eligibleForRenewal || $renewalData.beforeRenewLimit || ($renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod)}
                                        {else}
                                            <button id="renewDomain{$renewalData.id}" class="btn btn-default btn-sm btn-add-renewal-to-cart" data-domain-id="{$renewalData.id}">
                                                <span class="to-add">
                                                    <i class="fas fa-fw fa-spinner fa-spin"></i>
                                                    {lang key='addtocart'}
                                                </span>
                                                <span class="added">{lang key='domaincheckeradded'}</span>
                                            </button>
                                        {/if}
                                    </div>
                                </div>
                            {/foreach}
                        </div>

                        <div class="text-center">
                            <small>
                                {if $hasDomainsInGracePeriod}
                                    * {lang key='domainRenewal.graceRenewalPeriodDescription'}
                                {/if}
                            </small>
                        </div>
                    </div>

                    <div class="secondary-cart-sidebar" id="scrollingPanelContainer">

                        <div class="bg-default-2 rounded-20 px-8 pb-9 pt-12 ordersummary-coodiv-box position-relative overflow-hidden" id="orderSummary">
                                <div class="loader" id="orderSummaryLoader">
                                    <i class="fas fa-fw fa-sync fa-spin"></i>
                                </div>
								
                                <h2 class="coodiv-text-7">{lang key='ordersummary'}</h2>
                                <div  id="producttotal"></div>
								
                            <div class="text-center mt-7 position-relative">
                                <a id="btnGoToCart" class="btn btn-primary rounded-20 d-block w-100 coodiv-text-10" href="{$WEB_ROOT}/cart.php?a=view">
                                    {lang key='viewcart'}
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            {/if}
        </div>
    </div>
	
    <form id="removeRenewalForm" method="post" action="{$WEB_ROOT}/cart.php">
        <input type="hidden" name="a" value="remove" />
        <input type="hidden" name="r" value="" id="inputRemoveItemType" />
        <input type="hidden" name="i" value="" id="inputRemoveItemRef" />
        <div class="modal fade modal-remove-item" id="modalRemoveItem" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header d-block">
                        <h4 class="modal-title">
                            <button type="button" class="close" data-dismiss="modal" aria-label="{lang key='orderForm.close'}">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <i class="fas fa-times fa-3x"></i>
                            <span>{lang key='orderForm.removeItem'}</span>
                        </h4>
                    </div>
                    <div class="modal-body">
                        {lang key='cartremoveitemconfirm'}
                    </div>
                    <div class="modal-footer d-block">
                        <button type="button" class="btn btn-default" data-dismiss="modal">{lang key='no'}</button>
                        <button type="submit" class="btn btn-primary">{lang key='yes'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
	</div>
</div>

<script>recalculateRenewalTotals();</script>
