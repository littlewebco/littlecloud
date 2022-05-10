<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="{$charset}" />
        <meta name="description" content="emyUI Premium UI kit for web services and hosting provides & WHMCS hosting template" />
        <meta property="og:site_name" content="emyUI" />
        <meta property="og:url" content="https://coodiv.net" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="emyUI: Multipurpose UI Kit for Web Hosting providers with WHMCS Template" />
        <meta name="author" content="coodiv.net (nedjai mohamed)" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="{$WEB_ROOT}/templates/{$template}/img/favicon.png" type="image/x-icon" />

        <!-- Theme Head -->
        {include file="$template/includes/head.tpl"}

        <!-- Theme Headoutput -->
        {$headoutput}
    </head>
	
	
	
    <body class="primary-bg-color {if $loginpage eq 0 and $templatefile ne "clientregister"}not-login-page{else}this-is-login-page{/if}" data-phone-cc-input="{$phoneNumberInputStyle}">
        <!-- DELETE THIS IF YOU WANT TO REMOVE PAGELOADER ANIMATION -->
        <div class="preloader">
            <div class="preloader-container">
                <div class="lds-ring">
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                <span class="coodiv-text-10">loading...</span>
            </div>
        </div>
        <!-- DELETE THIS IF YOU WANT TO REMOVE PAGELOADER ANIMATION -->

        {$headeroutput}
        <div class="site-wrapper overflow-hidden">
		{if $loginpage eq 0 and $templatefile ne "clientregister"}
            <header class="site-header header-with-right-menu dark-mode-texts site-header--absolute fixed-header-layout">
                <div class="container-fluid pr-lg-9 pl-lg-9">
                    <nav class="navbar site-navbar offcanvas-active navbar-expand-lg px-0" aria-label="first navigation">
                        <!-- Brand Logo-->
                        <div class="brand-logo mr-lg-8 mr-4">
                            <a href="{$WEB_ROOT}/index.php">
                                <!-- light version logo (logo must be black)-->
                                <img src="{$WEB_ROOT}/templates/{$template}/image/logo-main-black.png" alt="" class="light-version-logo" />
                                <!-- Dark version logo (logo must be White)-->
                                <img src="{$WEB_ROOT}/templates/{$template}/image/logo-main-white.png" alt="" class="dark-version-logo" />
                            </a>
                        </div>
                        <!-- language area header -->
						{if $languagechangeenabled && count($locales) > 1}
                        {include file="$template/includes/language-system.tpl"}
						{/if}
                        <!-- end language area header -->

                        <div class="collapse navbar-collapse" id="mobile-menu">
                            <div class="navbar-nav-wrapper mx-auto">
                                <ul class="navbar-nav main-menu">
                                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                                </ul>
                            </div>
                        </div>
                        <div class="header-btn-whmcs ml-auto ml-lg-10 mr-md-3 mr-5 position-relative d-flex align-items-center">
                            <a class="shoping-cart-btn-header mr-2" href="{$WEB_ROOT}/cart.php?a=view">
                                <i class="feather icon-shopping-cart"></i>
                                <span class="shoping-cart-number">{$cartitemcount}</span>
                            </a>

                            <div class="nav-item dropdown notifications-dropdown">
                                <a class="nav-link notifications-btn-header" id="notificationsDropdown" href="#features" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-bell"></i>
                                    {if count($clientAlerts) > 0}
                                    <span class="notifications-bell green"></span>
                                    {/if}
                                </a>

                                <div class="coodiv-menu-dropdown dropdown-menu left-dropdown light-bg" aria-labelledby="notificationsDropdown">
                                    <div class="dropdown-header border-bottom shadow-2 text-left mb-7 pb-7 d-flex justify-content-between align-items-center">
                                        {lang key='notifications'} <span class="badge badge-warning font-weight-light px-5">{count($clientAlerts)}</span>
                                    </div>
                                    <ul class="client-alerts list-style-check px-8">
                                        {foreach $clientAlerts as $alert}
                                        <li class="drop-menu-item">
                                            <a href="{$alert->getLink()}">
                                                <i
                                                    class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"
                                                ></i>
                                                <div class="message coodiv-text-11 color-blackish-blue">{$alert->getMessage()}</div>
                                            </a>
                                        </li>
                                        {foreachelse}
                                        <li class="none">
                                            <span class="coodiv-text-12 color-blackish-blue">{lang key='notificationsnone'}</span>
                                        </li>
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>

                            <a class="search-btn-header mr-5">
                                <i class="feather icon-search"></i>
                            </a>
							
                            {if $loggedin}
                            <div class="nav-item dropdown user-dropdown-header">
                            {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar leftDrop=true}
                            </div>
							{else}
							
							
							<div class="header-btn mr-5 d-none d-xs-block position-relative">
                            <a class="btn btn-red coodiv-text-9 signup-btn-header" href="{$WEB_ROOT}/login.php">{lang key='remoteAuthn.titleSignUpVerb'}</a>
                            <a href="{$WEB_ROOT}/register.php" class="headerphone-number">{lang key='userLogin.createAccount'}</a>
                            </div>
							
							<a class="signup-btn-header-mobile mr-5" href="{$WEB_ROOT}/login.php">
                            <i class="feather icon-user"></i>
                            </a>
							
							{/if}
                        </div>
                        <!-- Mobile Menu Buttons-->
                        <button class="navbar-toggler btn-close-off-canvas hamburger-icon border-0" type="button" data-toggle="collapse" data-target="#mobile-menu" aria-controls="mobile-menu" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="hamburger hamburger--squeeze js-hamburger">
                                <span class="hamburger-box">
                                    <i class="feather icon-menu"></i>
                                    <i class="feather icon-x"></i>
                                </span>
                            </span>
                        </button>
                        <!--/ END Mobile Menu Buttons -->
                    </nav>
                </div>

                <form method="post" action="{routePath('knowledgebase-search')}" class="emyui-searchbar-header">
                    <input class="searching-input" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                    <button class="searching-btn" type="submit"><i class="feather icon-search"></i></button>
                    <a class="searching-close" type="submit"><i class="feather icon-x"></i></a>
                </form>
            </header>
            
            <div class="hero-area-coodiv position-relative {if $templatefile == 'homepage'} {else}text-page-hero mb-0 overflow-hidden border-0{/if}">
                <!-- START hero area animations -->
				{if $templatefile == 'homepage'}
                <div class="header-hero-backgrounds">
                    <div id="particles-bg"></div>
                    <span class="header-erath"></span>
                    <span class="montains-02"></span>
                    <span class="montains-01"></span>
                    <div class="t-first"><img class="layer layer2" data-depth="-0.20" src="{$WEB_ROOT}/templates/{$template}/image/header/planet.png" alt="" /></div>
                    <div class="t-second"><img class="layer layer2" data-depth="-0.20" src="{$WEB_ROOT}/templates/{$template}/image/header/sat.png" alt="" /></div>
                </div>
                <div class="shape-1 coodiv-abs-tl" data-aos="fade-down-right" data-aos-duration="500" data-aos-once="true"><img src="{$WEB_ROOT}/templates/{$template}/image/header/helf-circle-01.png" alt="" /></div>
                <div class="shape-2 coodiv-abs-tl" data-aos="fade-down-right" data-aos-duration="800" data-aos-delay="300" data-aos-once="true"><img src="{$WEB_ROOT}/templates/{$template}/image/header/helf-circle-02.png" alt="" /></div>
                <div class="shape-3 coodiv-abs-tl" data-aos="fade-down-right" data-aos-duration="1100" data-aos-delay="600" data-aos-once="true"><img src="{$WEB_ROOT}/templates/{$template}/image/header/helf-circle-03.png" alt="" /></div>
                <!-- END hero area animations -->
                
                <div class="container">
                    <!-- END HERO MAIN CONTENTS -->
                    <div class="row justify-content-center">
                        <!-- row -->
                        <div class="col-md-9 col-lg-7 col-xl-9">
                            <!-- column -->
                            <!-- START MAIN CONTENTS -->
                            <div class="hero-content dark-mode-texts mb-15 mb-lg-30 text-center text-md-center">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3">{lang key="orderregisterdomain"}</h4>
                                <h1 class="coodiv-text-4 text-white d-block mb-0">{lang key="findyourdomain"}</h1>
                                <h1 class="coodiv-text-5 position-relative mb-5"><span class="strike-bottom green d-inline-block">{lang key="orderForm.domainOrKeyword"}</span></h1>
                                <p class="coodiv-text-9 px-7 mb-0 coodiv-color-white-opacity-7 mb-10">
                                {lang key="domains.deTermsDescription1"}
                                </p>

                                <form id="frmDomainHomepage" class="domain-header-search-form d-flex flex-wrap bg-white" method="post" action="domainchecker.php">
                                    <div class="single-input w-100 w-sm-50 w-lg-35 py-4 col-md-8 pr-lg-0">
                                        <input type="text" class="inputdomainsearch" name="domain" placeholder="{lang key="exampledomain"}" autocapitalize="none" />
                                    </div>
									{if $registerdomainenabled}
                                    <div class="single-input w-100 w-lg-30 d-flex align-items-center justify-content-center border-0 pb-4 pt-lg-4 pt-0 pl-lg-0 col-md-4">
                                        <button type="submit" class="btn btn-primary search-btn rounded-right-10-0 full-border-radius-10-sm {$captcha->getButtonClass($captchaForm)}" id="btnDomainSearch">{lang key="search"}</button>
                                    </div>
									{/if}
									
									{include file="$template/includes/captcha.tpl"}
                                </form>
								
								{if $featuredTlds}
			                    <div class="row domain-box-sale-header" data-aos="fade-down" data-aos-duration="1100" data-aos-delay="200" data-aos-once="true">
			                        {foreach $featuredTlds as $num => $tldinfo}
			                            {if $num < 5}
			                                <div class="col">
			                                    <img src="{$BASE_PATH_IMG}/tld_logos/{$tldinfo.tldNoDots}.png">
												<h5><span>{lang key="domainCheckerSalesGroup.hot"}</span>{if is_object($tldinfo.register)}{$tldinfo.register->toFull()}{else}{lang key="domainregnotavailable"}{/if}</h5>   
			                                </div>
			                            {/if}
			                        {/foreach}
			                    </div>
			                    {else}
                                <div class="row domain-box-sale-header" data-aos="fade-down" data-aos-duration="1100" data-aos-delay="200" data-aos-once="true">
                                    <div class="col">
                                        <img src="{$BASE_PATH_IMG}/tld_logos/com.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>

                                    <div class="col">
                                        <img src="{$BASE_PATH_IMG}/tld_logos/net.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>

                                    <div class="col">
                                        <img src="{$BASE_PATH_IMG}/tld_logos/shop.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>

                                    <div class="col">
                                        <img src="{$BASE_PATH_IMG}/tld_logos/rocks.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>

                                    <div class="col">
                                        <img src="{$BASE_PATH_IMG}/tld_logos/club.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>
                                </div>
								{/if}
                            </div>
                            <!-- END MAIN CONTENTS -->
                        </div>
                        <!-- END column -->
                    </div>
                    <!-- END row -->
                </div>
                <!-- END hero MAIN CONTENTS -->

                <div class="wave-shape-bottom">
                    <!-- START hero area buttom SVG waves -->
                    <svg class="w-100 light-shape default-shape" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
                        <path
                            fill="#fff"
                            fill-opacity="1"
                            d="M0,32L60,80C120,128,240,224,360,229.3C480,235,600,149,720,138.7C840,128,960,192,1080,197.3C1200,203,1320,149,1380,122.7L1440,96L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"
                        ></path>
                    </svg>
                </div>
                <!-- END hero area buttom SVG waves -->
				{else}
				<div class="header-hero-backgrounds">
                    <div id="particles-bg"></div>
                </div>
				{/if}
            </div>
            <!-- END HERO AREA -->
			{if $templatefile == 'homepage'}
			
			{else}
			
			<div class="nav-scroller-subpages bg-default shadow-2 px-8">
			  <nav class="nav nav-underline align-items-center" aria-label="Secondary navigation">
			     
				 
				{if $templatefile == 'viewticket'}{else}
			    {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
				{if !$inShoppingCart && $secondarySidebar->hasChildren()}
				{include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
				{/if}
				{include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
				{/if}
				{/if}
	

			  </nav>
			</div>
			
			{include file="$template/includes/network-issues-notifications.tpl"}

			{if !$inShoppingCart}
			<div class="breadcrumb-container bg-default-2">
                <div class="container pt-10">
                    <div class="row justify-content-center px-lg-0 px-5">
                        <div class="col-lg-12 px-0">
                            <nav aria-label="breadcrumb">
                                {include file="$template/includes/breadcrumb.tpl"}
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
			{/if}
			
			
			{/if}
			


            

            {include file="$template/includes/validateuser.tpl"}
            {include file="$template/includes/verifyemail.tpl"}


            <section id="main-body" class="{if $templatefile == 'homepage'}bg-default{else}bg-default-2{/if}">
            <div class="{if !$skipMainBodyContainer}container{/if}">
			
			
			
				
				
            <div class="row justify-content-center px-lg-0 px-5">
			
			{if $templatefile == 'viewticket'}
			<div class="col-md-4 col-lg-4 col-12 pl-md-0">
			<div class="white-bg rounded-20 px-8 py-8 shadow-2 border-opacity viewticket-sidebar">
			<div class="">{include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}</div>
			<div class="">{include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}</div>
			</div>
			</div>
			{/if}
			
            <div class="{if $templatefile == 'viewticket'}col-md-8 col-lg-8 col-12{else}col-12{/if} {if !$inShoppingCart}{if $templatefile == 'homepage'}{else} main-page-contents white-bg rounded-20 px-8 py-8 shadow-2 border-opacity{/if}{/if}">
            {/if}
