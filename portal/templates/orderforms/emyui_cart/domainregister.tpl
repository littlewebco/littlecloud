{include file="orderforms/emyui_cart/common.tpl"}

<div class="order-form-menu-scroller white-bg rounded-20 border-opacity mb-7">
    <nav class="nav nav-underline d-flex justify-content-center" aria-label="Secondary navigation">
        {include file="orderforms/emyui_cart/sidebar-categories.tpl"}
    </nav>
</div>

<div id="order-standard_cart">
    <div class="row justify-content-center mt-15 mb-lg-10 mb-0">
        <div class="col-md-9 col-lg-9">
            <div class="hero-content dark-mode-texts mb-15 mb-lg-5 text-center pt-0 position-relative coodiv-z-index-1">
                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{$LANG.orderForm.findNewDomain}</h4>
                <h1 class="coodiv-text-4 mb-8 color-blackish-blue">
                    {$LANG.registerdomain}
                </h1>
                <p class="coodiv-text-9 pr-md-11 mb-0 color-blackish-blue-opacity">
                    {$LANG.domainintrotext}
                </p>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-12">
            <div class="row justify-content-center">
                <div class="col-md-9 col-12">
                    <form class="domain-search-form whmcs-domain-searching-page mb-4" method="post" action="cart.php" id="frmDomainChecker">
                        <input type="hidden" name="a" value="checkDomain" />
                        <div class="domain-search position-relative white-bg rounded-15">
                            <input
                                class="domain-search-input-header pl-6"
                                type="text"
                                name="domain"
                                placeholder="{$LANG.findyourdomain}"
                                value="{$lookupTerm}"
                                id="inputDomain"
                                data-toggle="tooltip"
                                data-placement="left"
                                data-trigger="manual"
                                title="{lang key='orderForm.domainOrKeyword'}"
                            />
                            <button type="submit" class="btn btn-warning domain-search-button-header position-absolute domain-check-availability{$captcha->getButtonClass($captchaForm)}" id="btnCheckAvailability">{$LANG.search}</button>
                        </div>

                        {if $captcha->isEnabled() && $captcha->isEnabledForForm($captchaForm) && !$captcha->recaptcha->isInvisible()}
                        <div class="row justify-content-center">
                            <div class="col-md-6 col-12">
                                <div class="captcha-container white-bg rounded-15 mt-6 text-center py-5" id="captchaContainer">
                                    {if $captcha == "recaptcha"}
                                    <br />
                                    <div class="text-center">
                                        <div class="form-group recaptcha-container"></div>
                                    </div>
                                    {elseif $captcha != "recaptcha"}
                                    <div class="default-captchaimage">
                                        <p class="coodiv-text-10">{lang key="cartSimpleCaptcha"}</p>
                                        <div>
                                            <img id="inputCaptchaImage" src="{$systemurl}includes/verifyimage.php" align="middle" />
                                            <input
                                                id="inputCaptcha"
                                                type="text"
                                                name="code"
                                                maxlength="6"
                                                class="form-control input-sm"
                                                data-toggle="tooltip"
                                                data-placement="right"
                                                data-trigger="manual"
                                                title="{lang key='orderForm.required'}"
                                            />
                                        </div>
                                    </div>
                                    {/if}
                                </div>
                            </div>
                        </div>
                        {/if}
                    </form>
                </div>
            </div>

            <div id="DomainSearchResults" class="w-hidden">
                <div class="row justify-content-center">
                    <div class="col-md-9 col-12">
                        <p id="primaryLookupSearching" class="domain-lookup-loader domain-lookup-primary-loader domain-searching"><i class="fas fa-spinner fa-spin"></i> {lang key='orderForm.searching'}...</p>
                        <div id="primaryLookupResult" class="domain-lookup-result w-hidden">
                            <div class="alert alert-warning rounded-10 domain-unavailable domain-checker-unavailable" role="alert">
                                <h4 class="alert-heading coodiv-text-8 font-weight-bold">{lang key='orderForm.domainIsUnavailable'}</h4>
                                <p class="coodiv-text-10 mb-0">
                                    Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.
                                </p>
                            </div>

                            <div class="alert alert-warning rounded-10 domain-invalid domain-checker-invalid" role="alert">
                                <h4 class="alert-heading coodiv-text-8 font-weight-bold">{lang key='orderForm.domainLetterOrNumber'}</h4>
                                <p class="coodiv-text-10 mb-0">
                                    {lang key='orderForm.domainLengthRequirements'}
                                </p>
                            </div>

                            <div class="alert alert-success rounded-10 domain-available domain-checker-available text-center" role="alert">
                                <h4 class="alert-heading coodiv-text-8 font-weight-bold">{$LANG.domainavailable1} {$LANG.domainavailable2}</h4>
                                <p class="coodiv-text-10">
                                    {lang key='domainavailableexplanation'}
                                </p>

                                <div id="idnLanguageSelector" class="form-group idn-language-selector w-hidden mb-5">
                                    <p class="coodiv-text-10">
                                        {lang key='cart.idnLanguageDescription'}
                                    </p>
                                    <select name="idnlanguage" class="form-control">
                                        <option value="">{lang key='cart.idnLanguage'}</option>
                                        {foreach $idnLanguages as $idnLanguageKey => $idnLanguage}
                                        <option value="{$idnLanguageKey}">{lang key='idnLanguage.'|cat:$idnLanguageKey}</option>
                                        {/foreach}
                                    </select>
                                    <div class="field-error-msg coodiv-text-10">
                                        {lang key='cart.selectIdnLanguageForRegister'}
                                    </div>
                                </div>
                                <hr />

                                <div class="domain-price box-checkout-domain">
                                    <span class="price"></span>

                                    <button class="btn btn-success coodiv-text-9 d-block w-100 btn-add-to-cart" data-whois="0" data-domain="">
                                        <span class="to-add">{$LANG.addtocart}</span>
                                        <span class="loading"> <i class="fas fa-spinner fa-spin"></i> {lang key='loading'} </span>
                                        <span class="added"><i class="far fa-shopping-cart"></i> {lang key='checkout'}</span>
                                        <span class="unavailable">{$LANG.domaincheckertaken}</span>
                                    </button>
                                </div>
                            </div>

                            <a class="domain-contact-support btn btn-primary">{$LANG.domainContactUs}</a>

                            <p class="domain-error domain-checker-unavailable"></p>
                        </div>
                    </div>
                </div>

                <div class="white-bg rounded-20 px-7 pt-15 pb-15 mt-10">
                    <div class="row justify-content-center">
                        <div class="col-xl-6 col-lg-7 col-md-8">
                            <div class="section-title text-center mb-7">
                                <h4 class="pre-title coodiv-text-12 text-red text-uppercase mb-3">{lang key='orderForm.suggestedDomains'}</h4>
                                <h2 class="title coodiv-text-6">{lang key='orderForm.generatingSuggestions'}</h2>
                            </div>
                        </div>
                    </div>

                    {if $spotlightTlds}
                    <div id="spotlightTlds" class="spotlight-tlds-group row justify-content-center mx-0 mb-10">
                        {foreach $spotlightTlds as $key => $data}
                        <div class="spotlight-tld-item col-6 col-lg spotlight-tld-container-{$spotlightTlds|count}">
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
                                        <span class="loading"> <i class="fas fa-spinner fa-spin"></i> {lang key='loading'} </span>
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

                    <div class="suggested-domains{if !$showSuggestionsContainer} w-hidden{/if}">
                        <div id="suggestionsLoader" class="panel-body card-body domain-lookup-loader domain-lookup-suggestions-loader"><i class="fas fa-spinner fa-spin"></i> {lang key='orderForm.generatingSuggestions'}</div>
                        <div id="domainSuggestions" class="domain-lookup-result w-hidden">
                            <div class="domain-suggestion list-group-item w-hidden border-opacity rounded-10 mb-3 px-5 py-5">
                                <span class="domain coodiv-text-8 font-weight-bold"></span><span class="extension coodiv-text-8 font-weight-bold"></span>
                                <span class="promo w-hidden">
                                    <span class="sales-group-hot w-hidden">{lang key='domainCheckerSalesGroup.hot'}</span>
                                    <span class="sales-group-new w-hidden">{lang key='domainCheckerSalesGroup.new'}</span>
                                    <span class="sales-group-sale w-hidden">{lang key='domainCheckerSalesGroup.sale'}</span>
                                </span>
                                <div class="actions">
                                    <span class="price"></span>
                                    <button type="button" class="btn btn-add-to-cart" data-whois="1" data-domain="">
                                        <span class="to-add">{$LANG.addtocart}</span>
                                        <span class="loading"> <i class="fas fa-spinner fa-spin"></i> {lang key='loading'} </span>
                                        <span class="added"><i class="far fa-shopping-cart"></i> {lang key='checkout'}</span>
                                        <span class="unavailable">{$LANG.domaincheckertaken}</span>
                                    </button>
                                    <button type="button" class="btn btn-primary domain-contact-support w-hidden">
                                        {lang key='domainChecker.contactSupport'}
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="more-suggestions w-hidden text-center">
                            <a class="btn btn-primary rounded-20 coodiv-text-10 btn-moresuggestion" id="moreSuggestions" href="#" onclick="loadMoreSuggestions();return false;">{lang key='domainsmoresuggestions'}</a>
                            <span id="noMoreSuggestions" class="no-more small w-hidden">{lang key='domaincheckernomoresuggestions'}</span>
                        </div>

                        <p class="text-center coodiv-text-10 mt-5">{lang key='domainssuggestionswarnings'}</p>
                    </div>
                </div>
            </div>

            <div class="domain-pricing">
                {if $featuredTlds}
                <div class="featured-tlds-container mt-15">
                    <div class="row">
                        {foreach $featuredTlds as $num => $tldinfo}
                        <div class="col-lg-2 col-sm-4 col-6 domains-featured-tlds-boxes number-{$num}">
                            <div class="featured-tld position-relative white-bg overflow-hidden rounded-20">
                                <div class="img-container">
                                    <img src="{$BASE_PATH_IMG}/tld_logos/{$tldinfo.tldNoDots}.png" />
                                </div>
                                <div class="price {$tldinfo.tldNoDots} coodiv-text-11 font-weight-bold">
                                    {if is_object($tldinfo.register)} {$tldinfo.register->toPrefixed()}{if $tldinfo.period > 1}{lang key="orderForm.shortPerYears" years={$tldinfo.period}}{else}{lang key="orderForm.shortPerYear"
                                    years=''}{/if} {else} {lang key="domainregnotavailable"} {/if}
                                </div>
                            </div>
                        </div>
                        {/foreach}
                    </div>
                </div>
                {/if}

                <div class="row tld-filters-container white-bg rounded-20 px-7 pt-15 pb-15 mt-lg-25 mt-15">
                    <h5 class="text-center mb-10 col-12">
                        {lang key='pricing.browseExtByCategory'} <span class="d-block font-weight-light coodiv-text-10 color-blackish-blue-opacity">as low as <b class="font-weight-bold badge badge-pill badge-info">$0.99/year</b></span>
                    </h5>

                    <div class="pb-5 tld-filters-filter-buttons position-relative col-12">
                        <div class="d-lg-flex tld-filters justify-content-center text-center">
                            {foreach $categoriesWithCounts as $category => $count}
                            <a href="#" data-category="{$category}" class="coodiv-text-9 text-center white-bg color-blackish-blue">
                                {lang key="domainTldCategory.$category" defaultValue=$category}
                                <span class="font-weight-bold badge badge-pill badge-warning coodiv-text-12 py-0 px-5">{$count}</span>
                            </a>
                            {/foreach}
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

                    <div class="row px-10">
                        {foreach $pricing['pricing'] as $tld => $price}
                        <div class="col-md-3 px-lg-3 col-12 mb-5 tld-row white-bg" data-category="{foreach $price.categories as $category}|{$category}|{/foreach}">
                            <div class="tld-box border shadow-2 rounded-20 py-7 px-5 align-items-center mb-3">
                                <div class="domain-name-container transfer-wp-box position-relative d-block mx-auto mb-5">
                                    <span class="shape-hexagon position-absolute"></span>
                                    <span class="domain-name-hexagon">.{$tld}</span>
                                </div>

                                <div class="col text-center px-0">
                                    {if $price.group}
                                    <h5 class="d-block tld-sale-group tld-sale-group-{$price.group}">{lang key='domainCheckerSalesGroup.'|cat:$price.group}</h5>
                                    {/if}

                                    <span class="font-weight-light coodiv-text-11 color-blackish-blue-opacity mb-5">
                                        {lang key='pricing.register'}
                                        <b class="font-weight-bold badge badge-pill badge-primary">
                                            {if isset($price.register) && current($price.register) > 0} {current($price.register)}/ {key($price.register)} {if key($price.register) > 1}{lang key="orderForm.years"}{else}{lang
                                            key="orderForm.year"}{/if} {elseif isset($price.register) && current($price.register) == 0} {lang key='orderfree'} {else} {lang key='na'} {/if}
                                        </b>
                                    </span>

                                    <span class="font-weight-light coodiv-text-11 color-blackish-blue-opacity mb-5">
                                        {lang key='pricing.transfer'}
                                        <b class="font-weight-bold badge badge-pill badge-info">
                                            {if isset($price.transfer) && current($price.transfer) > 0} {current($price.transfer)}/ {key($price.transfer)} {if key($price.register) > 1}{lang key="orderForm.years"}{else}{lang
                                            key="orderForm.year"}{/if} {elseif isset($price.transfer) && current($price.transfer) == 0} {lang key='orderfree'} {else} {lang key='na'} {/if}
                                        </b>
                                    </span>

                                    <span class="font-weight-light coodiv-text-11 color-blackish-blue-opacity mb-5">
                                        {lang key='pricing.renewal'}
                                        <b class="font-weight-bold badge badge-pill badge-warning">
                                            {if isset($price.renew) && current($price.renew) > 0} {current($price.renew)}/ {key($price.renew)} {if key($price.register) > 1}{lang key="orderForm.years"}{else}{lang key="orderForm.year"}{/if}
                                            {elseif isset($price.renew) && current($price.renew) == 0} {lang key='orderfree'} {else} {lang key='na'} {/if}
                                        </b>
                                    </span>
                                </div>
                            </div>
                        </div>
                        {/foreach}
                    </div>
                </div>

                <div class="row justify-content-center mt-20">
                    <div class="col-xl-6 col-lg-7 col-md-8">
                        <div class="section-title text-center mb-13 mb-lg-15">
                            <h4 class="pre-title coodiv-text-12 text-red text-uppercase mb-7">Why choose us</h4>
                            <h2 class="title coodiv-text-4">People choose us because we serve the best for everyone</h2>
                        </div>
                    </div>
                </div>

                <div class="row justify-content-center features-box-container border-0 white-bg shadow-2 rounded-20">
                    <div class="col-lg-6 col-md-10 features-box-sub aos-init aos-animate" data-aos="fade-left" data-aos-duration="800" data-aos-delay="100" data-aos-once="true">
                        <div class="features-box media text-center">
                            <div class="features-box-icon coodiv-bg-blue-opacity-1">
                                <i class="feather icon-life-buoy"></i>
                            </div>
                            <div class="features-box-text">
                                <h3 class="title">{lang key='orderForm.addHosting'}</h3>
                                <p>{lang key='orderForm.packagesForBudget'}</p>

                                <a href="cart.php" class="btn btn-warning">
                                    {lang key='orderForm.exploreNow'}
                                </a>
                            </div>
                        </div>
                    </div>
                    {if $domainTransferEnabled}
                    <div class="col-lg-6 col-md-10 features-box-sub aos-init aos-animate" data-aos="fade-left" data-aos-duration="800" data-aos-delay="200" data-aos-once="true">
                        <div class="features-box media">
                            <div class="features-box-icon coodiv-bg-red-opacity-1">
                                <i class="feather icon-cpu"></i>
                            </div>
                            <div class="features-box-text text-center">
                                <h3 class="title">{lang key='orderForm.transferToUs'}</h3>
                                <p>{lang key='orderForm.transferExtend'}</p>
                                <a href="cart.php?a=add&domain=transfer" class="btn btn-primary">
                                    {lang key='orderForm.transferDomain'}
                                </a>
                            </div>
                        </div>
                    </div>
                    {/if}
                </div>
            </div>
        </div>
    </div>

    <script>
        jQuery(document).ready(function() {
            jQuery('.tld-filters a:first-child').click();
        {if $lookupTerm && !$captchaError && !$invalid}
            jQuery('#btnCheckAvailability').click();
        {/if}
        {if $invalid}
            jQuery('#primaryLookupSearching').toggle();
            jQuery('#primaryLookupResult').children().toggle();
            jQuery('#primaryLookupResult').toggle();
            jQuery('#DomainSearchResults').toggle();
            jQuery('.domain-invalid').toggle();
        {/if}
        });
    </script>
</div>
