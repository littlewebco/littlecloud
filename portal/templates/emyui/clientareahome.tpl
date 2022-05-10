{include file="$template/includes/flashmessage.tpl"}


<div class="row justify-content-start mb-10">
<div class="col-md-8">
<div class="container-clientarea dark-bg gradient-animated-bg gradient-blue-bg rounded-20 position-relative px-7 py-7 px-lg-10 py-lg-10 mb-lg-0 mb-10">
<div class="clientarea-new-header d-flex justify-content-start">
<div class="profile-photo position-relative mr-8">
<img class="gravatar" src="{$WEB_ROOT}/templates/{$template}/img/user-avatar.png" alt="Avatar" title="Avatar for {$loggedinuser.firstname}"/>
<a class="edit-photo" target="_blank" href="https://gravatar.com/">{$LANG.orderForm.edit}</a>
</div>
<div class="header-accout-details white-text">
<h5 class="d-block coodiv-text-5">{lang key="welcomeback"}</h5>
 <span class="username coodiv-text-7 mr-4">{$clientsdetails.firstname} {$clientsdetails.lastname} !</span>
<a class="edit coodiv-text-12 badge badge-primary" href="clientarea.php?action=details">{$LANG.orderForm.update}</a>
<a class="balance coodiv-text-12 badge badge-warning" href="clientarea.php?action=addfunds">{$clientsstats.creditbalance}</a>

<span class="adress d-block coodiv-text-12 font-weight-light mt-2">{$clientsdetails.address1},<br>{$clientsdetails.city} <b>{$clientsdetails.country}</b></span>
<span class="d-block coodiv-text-11">{$clientsdetails.phonenumber}</span>

</div>
</div>


</div>
</div>
<div class="col-md-4">
<div class="banner-widget-sidebar bg-gradient-info shadow-2 text-white py-13 px-10 rounded-20 position-relative dark-bg">
                                    <svg class="banner-widget-sidebar-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 604 178">
                                        <path d="M1920,0V146.85c-14.7,5.55-28.79,12.05-49,18.15-9.73,2.94-42.25,12.77-72,13-72.59.56-78.87-56.38-182-90-38.62-12.59-65.18-13.55-99-40a187.6,187.6,0,0,1-43-48Z" transform="translate(-1316)" style="fill: #ffffff; opacity: 0.2;"></path>
                                        <path d="M1882,0c9.29,27.61-36.45,83.32-63,79-12.19-2-14.6-15.7-38-25-17.81-7.08-24.76-2.45-37-9-9.63-5.15-21.36-16.58-28-45Z" transform="translate(-1316)" style="fill: #ffffff; opacity: 0.1;"></path>
                                    </svg>

                                    <div class="d-block">
                                        <div class="position-relative">
                                            <h3 class="coodiv-text-7 font-weight-light">
                                                <span class="d-block">Special Offer for You,</span> <span class="font-weight-light strike-bottom yellow">30% Off</span>
                                            </h3>
                                            <a href="{$WEB_ROOT}/cart.php" class="btn rounded-20 btn-white mt-3 coodiv-text-12">Get Started</a>
                                        </div>
                                    </div>
                                </div>
								
</div>								
</div>
{if $registerdomainenabled}
<div class="row justify-content-center align-items-center pt-3 pb-15 position-relative coodiv-z-index-2 mb-lg-15">
                        <div class="col-12" data-aos="fade-right" data-aos-duration="500" data-aos-once="true">
                            <div class="hero-content mt-7 mt-lg-0 px-8 py-9">
                                <h1 class="title coodiv-text-7 mb-2 text-center">{lang key="orderregisterdomain"}</h1>
                                <p class="coodiv-text-9 mb-11 text-center">{lang key="orderForm.findNewDomain"}</p>

                                <form class="domain-search-form" method="post" action="domainchecker.php">
                                    <div class="domain-search position-relative">
                                        <input class="domain-search-input-header pl-6" type="text" name="domain" placeholder="{lang key="exampledomain"}" autocapitalize="none" />
                                        <button type="submit" class="btn btn-primary domain-search-button-header position-absolute" role="button" aria-label="Search Domain Name">{lang key="search"}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
</div>
{/if}				
				
<div class="mb-4">
    <div class="row clientareahome-features-boxes justify-content-center">
	
	
        <div class="col-6 col-xl-3">
            <a href="clientarea.php?action=services" class="tile">
			    <span class="shape-hexagon position-absolute"></span>
                <i class="feather icon-package"></i>
				<div class="title coodiv-text-10 color-blackish-blue font-weight-bold mt-2">{lang key='navservices'}</div>
                <div class="stat coodiv-text-11 color-blackish-blue-opacity">{$clientsstats.productsnumactive}</div>
                
            </a>
        </div>
		
		
        {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
            <div class="col-6 col-xl-3">
                <a href="clientarea.php?action=domains" class="tile">
				    <span class="shape-hexagon position-absolute"></span>
                    <i class="feather icon-globe"></i>
                    
                    <div class="title coodiv-text-10 color-blackish-blue font-weight-bold mt-2">{lang key='navdomains'}</div>
					<div class="stat coodiv-text-11 color-blackish-blue-opacity">{$clientsstats.numactivedomains}</div>
                </a>
            </div>
        {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
            <div class="col-6 col-xl-3">
                <a href="affiliates.php" class="tile">
				    <span class="shape-hexagon position-absolute"></span>
                    <i class="feather icon-shopping-cart"></i>
                    <div class="stat coodiv-text-11 color-blackish-blue-opacity">{$clientsstats.numaffiliatesignups}</div>
                    <div class="title coodiv-text-10 color-blackish-blue font-weight-bold mt-2">{lang key='affiliatessignups'}</div>
                </a>
            </div>
        {else}
            <div class="col-6 col-xl-3">
                <a href="clientarea.php?action=quotes" class="tile">
				    <span class="shape-hexagon position-absolute"></span>
                    <i class="feather icon-file"></i>
                    <div class="stat coodiv-text-11 color-blackish-blue-opacity">{$clientsstats.numquotes}</div>
                    <div class="title coodiv-text-10 color-blackish-blue font-weight-bold mt-2">{lang key='quotes'}</div>
                </a>
            </div>
        {/if}
        <div class="col-6 col-xl-3">
            <a href="supporttickets.php" class="tile">
			    <span class="shape-hexagon position-absolute"></span>
                <i class="feather icon-message-circle"></i>
                <div class="stat coodiv-text-11 color-blackish-blue-opacity">{$clientsstats.numactivetickets}</div>
                <div class="title coodiv-text-10 color-blackish-blue font-weight-bold mt-2">{lang key='navtickets'}</div>
            </a>
        </div>
        <div class="col-6 col-xl-3">
            <a href="clientarea.php?action=invoices" class="tile">
			    <span class="shape-hexagon position-absolute"></span>
                <i class="feather icon-credit-card"></i>
                <div class="stat coodiv-text-11 color-blackish-blue-opacity">{$clientsstats.numunpaidinvoices}</div>
                <div class="title coodiv-text-10 color-blackish-blue font-weight-bold mt-2">{lang key='navinvoices'}</div>
            </a>
        </div>
    </div>
</div>

{foreach $addons_html as $addon_html}
    <div class="row justify-content-center">
    <div class="col-md-11 col-lg-11">
    <div class="html-addons-clientareahome">
        {$addon_html}
    </div>
	</div>
	</div>
{/foreach}

<div class="client-home-cards mt-15">
    <div class="row justify-content-center">
        <div class="col-md-11 col-lg-11">

            {function name=outputHomePanels}
                <div menuItemName="{$item->getName()}" class="coodiv-clientarea-boxes overflow-hidden mb-10 border rounded-10 {if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
                        <div class="coodiv-clientarea-box-header border-bottom align-items-center rounded-top-10 px-lg-10 px-6 py-5 d-flex justify-content-between m-0">
						       <h3 class="coodiv-text-8 mb-0">{$item->getLabel()}
                               {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
							   </h3>
							
							
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <div>
                                    <a href="{$item->getExtra('btn-link')}" class="btn btn-warning">
                                        {$item->getExtra('btn-text')}
                                    </a>
                                </div>
                            {/if}
                        </div>
                    {if $item->hasBodyHtml()}
                        <div class="coodiv-clientarea-boxes-body px-10 py-7">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="coodiv-clientarea-boxes-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
            {/function}

            {foreach $panels as $item}
                {if $item@iteration is odd}
                    {outputHomePanels}
                {/if}
            {/foreach}

        </div>
        <div class="col-md-11 col-lg-11">

            {foreach $panels as $item}
                {if $item@iteration is even}
                    {outputHomePanels}
                {/if}
            {/foreach}

        </div>
    </div>
</div>

<svg style="visibility: hidden; position: absolute;" width="0" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
        <filter id="roundedsvg">
            <feGaussianBlur in="SourceGraphic" stdDeviation="5" result="blur" />
            <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo" />
            <feComposite in="SourceGraphic" in2="goo" operator="atop" />
        </filter>
    </defs>
</svg>
