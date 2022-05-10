{include file="orderforms/emyui_cart/common.tpl"}

<div class="order-form-menu-scroller white-bg rounded-20 border-opacity mb-7">
  <nav class="nav nav-underline d-flex justify-content-center" aria-label="second navigation">
    {include file="orderforms/emyui_cart/sidebar-categories.tpl"}
  </nav>
</div>

<div id="order-standard_cart">

<div class="row justify-content-center  mt-15 mb-10">
                        <div class="col-md-9 col-lg-9">
                            <div class="hero-content dark-mode-texts mb-0 mb-lg-5 text-center pt-0 position-relative coodiv-z-index-1">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{lang key='orderForm.transferExtend'}</h4>
                                <h1 class="coodiv-text-4 mb-8 color-blackish-blue">
								{lang key='orderForm.transferToUs'}
								</h1>
                                <p class="coodiv-text-9 pr-md-11 mb-0 color-blackish-blue-opacity">
                                {lang key='domainbulktransferdescription'}
                                </p>
                            </div>
                        </div>
                    </div>

    <div class="row justify-content-center">
	
	

        <div class="col-12">


            <form method="post" action="{$WEB_ROOT}/cart.php" id="frmDomainTransfer">
                <input type="hidden" name="a" value="addDomainTransfer">

                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 offset-sm-2">
                        <div class="white-bg rounded-20 px-9 pt-10 pb-10 mt-10">
							
							<div class="section-title text-center mb-7">
                                <h2 class="title coodiv-text-6">{lang key='orderForm.singleTransfer'}</h2>
                            </div>
							
							
                            <div class="">
                                <div class="form-group">
                                    <label for="inputTransferDomain">{lang key='domainname'}</label>
                                    <input type="text" class="form-control" name="domain" id="inputTransferDomain" value="{$lookupTerm}" placeholder="{lang key='yourdomainplaceholder'}.{lang key='yourtldplaceholder'}" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" />
                                </div>
                                <div class="form-group">
                                    <label for="inputAuthCode" style="width:100%;">
                                        {lang key='orderForm.authCode'}
                                        <a href="" data-toggle="tooltip" data-placement="left" title="{lang key='orderForm.authCodeTooltip'}" class="pull-right float-right"><i class="fas fa-question-circle"></i> {lang key='orderForm.help'}</a>
                                    </label>
                                    <input type="text" class="form-control" name="epp" id="inputAuthCode" placeholder="{lang key='orderForm.authCodePlaceholder'}" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}" />
                                </div>
                                <div id="transferUnavailable" class="alert alert-warning slim-alert text-center w-hidden"></div>
                                {if $captcha->isEnabled() && !$captcha->recaptcha->isEnabled()}
                                    <div class="captcha-container" id="captchaContainer">
                                        <div class="default-captcha">
                                            <p>{lang key="cartSimpleCaptcha"}</p>
                                            <div>
                                                <img id="inputCaptchaImage" src="{$systemurl}includes/verifyimage.php" />
                                                <input id="inputCaptcha" type="text" name="code" maxlength="6" class="form-control input-sm" data-toggle="tooltip" data-placement="right" data-trigger="manual" title="{lang key='orderForm.required'}" />
                                            </div>
                                        </div>
                                    </div>
                                {elseif $captcha->isEnabled() && $captcha->recaptcha->isEnabled() && !$captcha->recaptcha->isInvisible()}
                                    <div class="text-center">
                                        <div class="form-group recaptcha-container" id="captchaContainer"></div>
                                    </div>
                                {/if}
								
								
                            </div>

                            <div class="text-center">
                                <button type="submit" id="btnTransferDomain" class="btn btn-primary btn-transfer{$captcha->getButtonClass($captchaForm)}">
                                    <span class="loader w-hidden" id="addTransferLoader">
                                        <i class="fas fa-fw fa-spinner fa-spin"></i>
                                    </span>
                                    <span id="addToCart">{lang key="orderForm.addToCart"}</span>
                                </button>
								<p class="text-center small mt-3">* {lang key='orderForm.extendExclusions'}</p>
                            </div>
                        </div>
                    </div>
                </div>

            </form>

            
        </div>
    </div>


</div>
