    {if $loginpage eq 0 and $templatefile ne "clientregister"}
	                </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-md-none col-md-3 sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
	
	
	
	<div class="dark-mode-texts footer-gradient-default overflow-hidden position-relative">
                <svg class="bg-wave-box-end" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
                    <path
                        fill="#fff"
                        fill-opacity="1"
                        d="M0,64L80,101.3C160,139,320,213,480,213.3C640,213,800,139,960,117.3C1120,96,1280,128,1360,144L1440,160L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"
                    ></path>
                </svg>
                <div class="container">
                    <div class="footer-section dark-mode-texts">
                        <div class="container">
                            <div class="footer-top pt-15 pt-lg-25 pb-lg-19">
                                <div class="row">
                                    <div class="col-6 col-lg-4">
                                        <div class="footer-block mb-13 mb-lg-9">
                                            <div class="brand-logo mb-10">
                                                <a href="#"><img src="{$WEB_ROOT}/templates/{$template}/image/logo-main-white.png" alt="" class="dark-version-logo" /></a>
                                            </div>
                                            <p>Our mission We specialize in coding, designing interfaces, web experiences and meaningful products, we’re pretty good at it.</p>
                                            <ul class="footer-contact-list list-unstyled">
                                                <li>
                                                    <span class="badge coodiv-badge badge-warning rounded-pill coodiv-text-12 position-relative"><i class="far fa-envelope"></i> support@coodiv.net</span>
                                                </li>
                                                <li>
                                                    <span class="badge coodiv-badge badge badge-info rounded-pill coodiv-text-12 position-relative"><i class="fas fa-phone"></i> +123-456-6788-99</span>
                                                </li>
                                            </ul>
											<ul class="footer-social-accounts">
											{include file="$template/includes/social-accounts.tpl"}
											</ul>
                                        </div>
                                    </div>

                                    <div class="col-6 col-lg-2">
                                        <div class="footer-block mb-13 mb-lg-9">
                                            <h4 class="block-title coodiv-text-7 mb-7 position-relative">{lang key="browseProducts"}</h4>
                                            <ul class="footer-list list-unstyled">
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/cart.php">{lang key="navservicesplaceorder"}</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/cart.php">{lang key="affiliateshostingpackage"}</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/cart.php?gid=addons">{lang key="cartproductaddons"}</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/cart.php?a=view">{lang key="viewcart"}</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-6 col-lg-3 pl-lg-15">
                                        <div class="footer-block mb-13 mb-lg-9">
                                            <h4 class="block-title coodiv-text-7 mb-7 position-relative">{lang key="cartproductdomain"}</h4>
                                            <ul class="footer-list list-unstyled">
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/cart.php?a=add&domain=register">{lang key="orderregisterdomain"}</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/cart.php?a=add&domain=transfer">{lang key="transferYourDomain"}</a></li>
												<li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/index.php?rp=/cart/domain/renew">{lang key="domainRenewal.renewingDomains"}</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/clientarea.php?action=domains">{lang key="homepage.manageDomains"}</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-6 col-lg-3 pl-lg-15">
                                        <div class="footer-block mb-13 mb-lg-9">
                                            <h4 class="block-title coodiv-text-7 mb-7 position-relative">{lang key="navsupport"}</h4>
                                            <ul class="footer-list list-unstyled">
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/supporttickets.php">{lang key="navtickets"}</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/downloads.php">{lang key="downloadssearch"}</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/knowledgebase.php">{lang key="knowledgebasetitle"}</a></li>
												<li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/announcements.php">{lang key="announcementstitle"}</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="{$WEB_ROOT}/contact.php">{lang key="contactus"}</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="bottom-footer-area border-top pt-9 pb-8">
                                <div class="row align-items-center">
                                    <div class="col-lg-8">
                                        <p class="copyright-text coodiv-text-11 mb-6 mb-lg-0 coodiv-text-color-opacity text-center text-lg-left">
                                            {lang key="copyrightFooterNotice" year=$date_year company=$companyname}, Made with <i class="coodiv-color-red-opacity-visible feather icon-heart-on mx-1"></i> by <a href="https://coodiv.net/">coodiv</a> with a lots of coffee
                                            <i class="icon icon-heart-2-2 text-sky-blue align-middle ml-2"></i>
                                        </p>
                                    </div>
                                    <div class="col-lg-4 text-center text-lg-right">
                                        {if $languagechangeenabled && count($locales) > 1 || $currencies}
                                        <button type="button" class="btn-lang-footer" data-toggle="modal" data-target="#modalChooseLanguage">
                                            <div class="d-inline-block align-middle">
                                                <div class="iti-flag {if $activeLocale.countryCode === 'GB'}us{else}{$activeLocale.countryCode|lower}{/if}"></div>
                                            </div>
                                            {$activeCurrency.prefix}
                                            {$activeCurrency.code}
                                        </button>
                                        {/if}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	{/if}

 

    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector justify-content-center">
                                <input type="hidden" name="currency" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-3">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
						{else}
						<h5 class="text-center py-5 mb-0">your current currency is {$activeCurrency.prefix}{$activeCurrency.code}</h5>
                        {/if}
                    </div>
					{if !$loggedin && $currencies}
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary mx-auto rounded-20">{lang key='apply'}</button>
                    </div>
					{/if}
                </div>
            </div>
        </div>
    </form>
	
	
	     <!-- START LIVE SUPPORT FIXED HEAD -->
		<a class="live-support-trigger" href="#" data-toggle="modal" data-target="#errormodal">
		<div class="support-agent"><img class="profile-pic" src="{$WEB_ROOT}/templates/{$template}/img/support-agent.jpg" alt="support agent"></div>
		<div class="live-support-welcome coodiv-text-12 font-weight-light shadow">How can i help you?</div>
		</a>
		<!-- END LIVE SUPPORT FIXED HEAD -->
		
		
		<!-- START GDPR BADGE -->
		<div style="visibility:hidden" id="popuppfirsttime" class="gbpr-badge-fixed rounded-20 shadow dark-mode-texts alert alert-dismissible fade show" role="alert">
		<div class="gbpr-badge-cercled-stars">
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		<i class="feather icon-star-on"></i>
		</div>
		<h5 class="coodiv-text-7 font-weight-bold mb-0">GBPR</h5>
		<a class="gbpr-model-button coodiv-text-11 font-weight-light mt-n2 mb-0 white-text text-underline d-block" data-toggle="modal" data-target="#gbprmodal">ready</a>
		<a class="gbpr-badge-close" href="#" type="button" class="close" data-dismiss="alert" aria-label="Close"><i class="feather icon-x"></i></a>
		</div>
		<!-- END GDPR BADGE -->
		
		<!-- START GDPR MODEL -->
		<div class="modal fade bd-example-modal-lg" id="gbprmodal" aria-modal="true">
            <div class="modal-dialog">
                <div class="modal-content rounded-20 border-opacity">
                    <div class="modal-body px-10 py-10">
                        <h3 class="coodiv-text-6">What is GDPR?</h3>
                        <p class="coodiv-text-10 font-weight-light text-muted">The GDPR (General Data Protection Regulation) is the most important development of Data Protection Law for decades. It will strengthen and ultimately replace the existing Data Protection Act (1998) and is designed to protect the personal data and privacy of citizens across Europe. GDPR will not be affected by the UK’s exit from the EU and the Regulation comes fully into effect on 25 May 2018.</p>
						<div class="d-block mt-9 text-center">
                            <button type="button" class="btn btn-primary btn-curved mb-0 w-50 rounded-20">okay</button>
                            <button type="button" class="btn text-primary mb-0 rounded-20" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- END GDPR MODEL -->
		
		<!-- START LIVE SUPPORT MODEL -->
		<div class="modal fade" id="errormodal" aria-modal="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content rounded-20 border-opacity">
                    <div class="modal-body px-10 py-10 text-center">
                        <h3 class="coodiv-text-6">All of our support team are busy right now :(</h3>
                        <p class="coodiv-text-9 font-weight-light text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
                        <div class="d-block mt-13">
                            <button type="button" class="btn btn-primary btn-curved mb-0 w-50 rounded-20">okay</button>
                            <button type="button" class="btn text-primary mb-0 rounded-20" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- END LIVE SUPPORT MODEL -->
	
	

    {if !$loggedin && $adminLoggedIn}
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
        </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}
	
	{if $loggedin}<span id="gravataremail" class="d-none">{$clientsdetails.email}</span><!-- gravatar email -->{/if}
	
	<!-- Activation Script -->
	<script src="{$WEB_ROOT}/templates/{$template}/js/particles-code.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/js/particles.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/nice-select/jquery.nice-select.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/md5/md5.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/flickity/flickity.pkgd.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/aos/aos.min.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/js/custom.js"></script>
	
	
	<script>
	$(document).ready(function(){
    if ($('#gravataremail').length) {
	var email = document.getElementById('gravataremail').innerText;
	if(email != ''){
		var imgUrl = 'https://gravatar.com/avatar/'+MD5(email)+'';
		$.ajax({
		    url:imgUrl,
		    type:"HEAD",
		    crossDomain:true,
		    success:function(){
		        $(".gravatar").attr("src",imgUrl);
		    }
		});
	}
	}
	});
	</script>
	

</body>
</html>
