<?php
/* Smarty version 3.1.36, created on 2022-02-23 04:12:38
  from '/home/littlecloud/public_html/portal/templates/emyui/header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6215b436583be9_06450741',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3c1f8b23cafd0f8b527abe1ffe4d7b4a49a5a795' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/header.tpl',
      1 => 1643545089,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6215b436583be9_06450741 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="<?php echo $_smarty_tpl->tpl_vars['charset']->value;?>
" />
        <meta name="description" content="emyUI Premium UI kit for web services and hosting provides & WHMCS hosting template" />
        <meta property="og:site_name" content="emyUI" />
        <meta property="og:url" content="https://coodiv.net" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="emyUI: Multipurpose UI Kit for Web Hosting providers with WHMCS Template" />
        <meta name="author" content="coodiv.net (nedjai mohamed)" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title><?php if ($_smarty_tpl->tpl_vars['kbarticle']->value['title']) {
echo $_smarty_tpl->tpl_vars['kbarticle']->value['title'];?>
 - <?php }
echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
 - <?php echo $_smarty_tpl->tpl_vars['companyname']->value;?>
</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/img/favicon.png" type="image/x-icon" />

        <!-- Theme Head -->
        <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

        <!-- Theme Headoutput -->
        <?php echo $_smarty_tpl->tpl_vars['headoutput']->value;?>

    </head>
	
	
	
    <body class="primary-bg-color <?php if ($_smarty_tpl->tpl_vars['loginpage']->value == 0 && $_smarty_tpl->tpl_vars['templatefile']->value != "clientregister") {?>not-login-page<?php } else { ?>this-is-login-page<?php }?>" data-phone-cc-input="<?php echo $_smarty_tpl->tpl_vars['phoneNumberInputStyle']->value;?>
">
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

        <?php echo $_smarty_tpl->tpl_vars['headeroutput']->value;?>

        <div class="site-wrapper overflow-hidden">
		<?php if ($_smarty_tpl->tpl_vars['loginpage']->value == 0 && $_smarty_tpl->tpl_vars['templatefile']->value != "clientregister") {?>
            <header class="site-header header-with-right-menu dark-mode-texts site-header--absolute fixed-header-layout">
                <div class="container-fluid pr-lg-9 pl-lg-9">
                    <nav class="navbar site-navbar offcanvas-active navbar-expand-lg px-0" aria-label="first navigation">
                        <!-- Brand Logo-->
                        <div class="brand-logo mr-lg-8 mr-4">
                            <a href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/index.php">
                                <!-- light version logo (logo must be black)-->
                                <img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/logo-main-black.png" alt="" class="light-version-logo" />
                                <!-- Dark version logo (logo must be White)-->
                                <img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/logo-main-white.png" alt="" class="dark-version-logo" />
                            </a>
                        </div>
                        <!-- language area header -->
						<?php if ($_smarty_tpl->tpl_vars['languagechangeenabled']->value && count($_smarty_tpl->tpl_vars['locales']->value) > 1) {?>
                        <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/language-system.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
						<?php }?>
                        <!-- end language area header -->

                        <div class="collapse navbar-collapse" id="mobile-menu">
                            <div class="navbar-nav-wrapper mx-auto">
                                <ul class="navbar-nav main-menu">
                                    <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('navbar'=>$_smarty_tpl->tpl_vars['primaryNavbar']->value), 0, true);
?>
                                </ul>
                            </div>
                        </div>
                        <div class="header-btn-whmcs ml-auto ml-lg-10 mr-md-3 mr-5 position-relative d-flex align-items-center">
                            <a class="shoping-cart-btn-header mr-2" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/cart.php?a=view">
                                <i class="feather icon-shopping-cart"></i>
                                <span class="shoping-cart-number"><?php echo $_smarty_tpl->tpl_vars['cartitemcount']->value;?>
</span>
                            </a>

                            <div class="nav-item dropdown notifications-dropdown">
                                <a class="nav-link notifications-btn-header" id="notificationsDropdown" href="#features" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-bell"></i>
                                    <?php if (count($_smarty_tpl->tpl_vars['clientAlerts']->value) > 0) {?>
                                    <span class="notifications-bell green"></span>
                                    <?php }?>
                                </a>

                                <div class="coodiv-menu-dropdown dropdown-menu left-dropdown light-bg" aria-labelledby="notificationsDropdown">
                                    <div class="dropdown-header border-bottom shadow-2 text-left mb-7 pb-7 d-flex justify-content-between align-items-center">
                                        <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'notifications'),$_smarty_tpl ) );?>
 <span class="badge badge-warning font-weight-light px-5"><?php echo count($_smarty_tpl->tpl_vars['clientAlerts']->value);?>
</span>
                                    </div>
                                    <ul class="client-alerts list-style-check px-8">
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['clientAlerts']->value, 'alert');
$_smarty_tpl->tpl_vars['alert']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['alert']->value) {
$_smarty_tpl->tpl_vars['alert']->do_else = false;
?>
                                        <li class="drop-menu-item">
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['alert']->value->getLink();?>
">
                                                <i
                                                    class="fas fa-fw fa-<?php if ($_smarty_tpl->tpl_vars['alert']->value->getSeverity() == 'danger') {?>exclamation-circle<?php } elseif ($_smarty_tpl->tpl_vars['alert']->value->getSeverity() == 'warning') {?>exclamation-triangle<?php } elseif ($_smarty_tpl->tpl_vars['alert']->value->getSeverity() == 'info') {?>info-circle<?php } else { ?>check-circle<?php }?>"
                                                ></i>
                                                <div class="message coodiv-text-11 color-blackish-blue"><?php echo $_smarty_tpl->tpl_vars['alert']->value->getMessage();?>
</div>
                                            </a>
                                        </li>
                                        <?php
}
if ($_smarty_tpl->tpl_vars['alert']->do_else) {
?>
                                        <li class="none">
                                            <span class="coodiv-text-12 color-blackish-blue"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'notificationsnone'),$_smarty_tpl ) );?>
</span>
                                        </li>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </ul>
                                </div>
                            </div>

                            <a class="search-btn-header mr-5">
                                <i class="feather icon-search"></i>
                            </a>
							
                            <?php if ($_smarty_tpl->tpl_vars['loggedin']->value) {?>
                            <div class="nav-item dropdown user-dropdown-header">
                            <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('navbar'=>$_smarty_tpl->tpl_vars['secondaryNavbar']->value,'leftDrop'=>true), 0, true);
?>
                            </div>
							<?php } else { ?>
							
							
							<div class="header-btn mr-5 d-none d-xs-block position-relative">
                            <a class="btn btn-red coodiv-text-9 signup-btn-header" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/login.php"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'remoteAuthn.titleSignUpVerb'),$_smarty_tpl ) );?>
</a>
                            <a href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/register.php" class="headerphone-number"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'userLogin.createAccount'),$_smarty_tpl ) );?>
</a>
                            </div>
							
							<a class="signup-btn-header-mobile mr-5" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/login.php">
                            <i class="feather icon-user"></i>
                            </a>
							
							<?php }?>
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

                <form method="post" action="<?php echo routePath('knowledgebase-search');?>
" class="emyui-searchbar-header">
                    <input class="searching-input" type="text" name="search" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"searchOurKnowledgebase"),$_smarty_tpl ) );?>
...">
                    <button class="searching-btn" type="submit"><i class="feather icon-search"></i></button>
                    <a class="searching-close" type="submit"><i class="feather icon-x"></i></a>
                </form>
            </header>
            
            <div class="hero-area-coodiv position-relative <?php if ($_smarty_tpl->tpl_vars['templatefile']->value == 'homepage') {?> <?php } else { ?>text-page-hero mb-0 overflow-hidden border-0<?php }?>">
                <!-- START hero area animations -->
				<?php if ($_smarty_tpl->tpl_vars['templatefile']->value == 'homepage') {?>
                <div class="header-hero-backgrounds">
                    <div id="particles-bg"></div>
                    <span class="header-erath"></span>
                    <span class="montains-02"></span>
                    <span class="montains-01"></span>
                    <div class="t-first"><img class="layer layer2" data-depth="-0.20" src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/header/planet.png" alt="" /></div>
                    <div class="t-second"><img class="layer layer2" data-depth="-0.20" src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/header/sat.png" alt="" /></div>
                </div>
                <div class="shape-1 coodiv-abs-tl" data-aos="fade-down-right" data-aos-duration="500" data-aos-once="true"><img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/header/helf-circle-01.png" alt="" /></div>
                <div class="shape-2 coodiv-abs-tl" data-aos="fade-down-right" data-aos-duration="800" data-aos-delay="300" data-aos-once="true"><img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/header/helf-circle-02.png" alt="" /></div>
                <div class="shape-3 coodiv-abs-tl" data-aos="fade-down-right" data-aos-duration="1100" data-aos-delay="600" data-aos-once="true"><img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/header/helf-circle-03.png" alt="" /></div>
                <!-- END hero area animations -->
                
                <div class="container">
                    <!-- END HERO MAIN CONTENTS -->
                    <div class="row justify-content-center">
                        <!-- row -->
                        <div class="col-md-9 col-lg-7 col-xl-9">
                            <!-- column -->
                            <!-- START MAIN CONTENTS -->
                            <div class="hero-content dark-mode-texts mb-15 mb-lg-30 text-center text-md-center">
                                <h4 class="pre-title text-green coodiv-text-12 text-uppercase mb-3"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"orderregisterdomain"),$_smarty_tpl ) );?>
</h4>
                                <h1 class="coodiv-text-4 text-white d-block mb-0"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"findyourdomain"),$_smarty_tpl ) );?>
</h1>
                                <h1 class="coodiv-text-5 position-relative mb-5"><span class="strike-bottom green d-inline-block"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"orderForm.domainOrKeyword"),$_smarty_tpl ) );?>
</span></h1>
                                <p class="coodiv-text-9 px-7 mb-0 coodiv-color-white-opacity-7 mb-10">
                                <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"domains.deTermsDescription1"),$_smarty_tpl ) );?>

                                </p>

                                <form id="frmDomainHomepage" class="domain-header-search-form d-flex flex-wrap bg-white" method="post" action="domainchecker.php">
                                    <div class="single-input w-100 w-sm-50 w-lg-35 py-4 col-md-8 pr-lg-0">
                                        <input type="text" class="inputdomainsearch" name="domain" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"exampledomain"),$_smarty_tpl ) );?>
" autocapitalize="none" />
                                    </div>
									<?php if ($_smarty_tpl->tpl_vars['registerdomainenabled']->value) {?>
                                    <div class="single-input w-100 w-lg-30 d-flex align-items-center justify-content-center border-0 pb-4 pt-lg-4 pt-0 pl-lg-0 col-md-4">
                                        <button type="submit" class="btn btn-primary search-btn rounded-right-10-0 full-border-radius-10-sm <?php echo $_smarty_tpl->tpl_vars['captcha']->value->getButtonClass($_smarty_tpl->tpl_vars['captchaForm']->value);?>
" id="btnDomainSearch"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search"),$_smarty_tpl ) );?>
</button>
                                    </div>
									<?php }?>
									
									<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/captcha.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
                                </form>
								
								<?php if ($_smarty_tpl->tpl_vars['featuredTlds']->value) {?>
			                    <div class="row domain-box-sale-header" data-aos="fade-down" data-aos-duration="1100" data-aos-delay="200" data-aos-once="true">
			                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['featuredTlds']->value, 'tldinfo', false, 'num');
$_smarty_tpl->tpl_vars['tldinfo']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['num']->value => $_smarty_tpl->tpl_vars['tldinfo']->value) {
$_smarty_tpl->tpl_vars['tldinfo']->do_else = false;
?>
			                            <?php if ($_smarty_tpl->tpl_vars['num']->value < 5) {?>
			                                <div class="col">
			                                    <img src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_IMG']->value;?>
/tld_logos/<?php echo $_smarty_tpl->tpl_vars['tldinfo']->value['tldNoDots'];?>
.png">
												<h5><span><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"domainCheckerSalesGroup.hot"),$_smarty_tpl ) );?>
</span><?php if (is_object($_smarty_tpl->tpl_vars['tldinfo']->value['register'])) {
echo $_smarty_tpl->tpl_vars['tldinfo']->value['register']->toFull();
} else {
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"domainregnotavailable"),$_smarty_tpl ) );
}?></h5>   
			                                </div>
			                            <?php }?>
			                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			                    </div>
			                    <?php } else { ?>
                                <div class="row domain-box-sale-header" data-aos="fade-down" data-aos-duration="1100" data-aos-delay="200" data-aos-once="true">
                                    <div class="col">
                                        <img src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_IMG']->value;?>
/tld_logos/com.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>

                                    <div class="col">
                                        <img src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_IMG']->value;?>
/tld_logos/net.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>

                                    <div class="col">
                                        <img src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_IMG']->value;?>
/tld_logos/shop.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>

                                    <div class="col">
                                        <img src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_IMG']->value;?>
/tld_logos/rocks.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>

                                    <div class="col">
                                        <img src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_IMG']->value;?>
/tld_logos/club.png" alt="com" />
                                        <h5><span>sale</span>$6.99</h5>
                                    </div>
                                </div>
								<?php }?>
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
				<?php } else { ?>
				<div class="header-hero-backgrounds">
                    <div id="particles-bg"></div>
                </div>
				<?php }?>
            </div>
            <!-- END HERO AREA -->
			<?php if ($_smarty_tpl->tpl_vars['templatefile']->value == 'homepage') {?>
			
			<?php } else { ?>
			
			<div class="nav-scroller-subpages bg-default shadow-2 px-8">
			  <nav class="nav nav-underline align-items-center" aria-label="Secondary navigation">
			     
				 
				<?php if ($_smarty_tpl->tpl_vars['templatefile']->value == 'viewticket') {
} else { ?>
			    <?php if (!$_smarty_tpl->tpl_vars['inShoppingCart']->value && ($_smarty_tpl->tpl_vars['primarySidebar']->value->hasChildren() || $_smarty_tpl->tpl_vars['secondarySidebar']->value->hasChildren())) {?>
				<?php if (!$_smarty_tpl->tpl_vars['inShoppingCart']->value && $_smarty_tpl->tpl_vars['secondarySidebar']->value->hasChildren()) {?>
				<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('sidebar'=>$_smarty_tpl->tpl_vars['secondarySidebar']->value), 0, true);
?>
				<?php }?>
				<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('sidebar'=>$_smarty_tpl->tpl_vars['primarySidebar']->value), 0, true);
?>
				<?php }?>
				<?php }?>
	

			  </nav>
			</div>
			
			<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/network-issues-notifications.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

			<?php if (!$_smarty_tpl->tpl_vars['inShoppingCart']->value) {?>
			<div class="breadcrumb-container bg-default-2">
                <div class="container pt-10">
                    <div class="row justify-content-center px-lg-0 px-5">
                        <div class="col-lg-12 px-0">
                            <nav aria-label="breadcrumb">
                                <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/breadcrumb.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
			<?php }?>
			
			
			<?php }?>
			


            

            <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/validateuser.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
            <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/verifyemail.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>


            <section id="main-body" class="<?php if ($_smarty_tpl->tpl_vars['templatefile']->value == 'homepage') {?>bg-default<?php } else { ?>bg-default-2<?php }?>">
            <div class="<?php if (!$_smarty_tpl->tpl_vars['skipMainBodyContainer']->value) {?>container<?php }?>">
			
			
			
				
				
            <div class="row justify-content-center px-lg-0 px-5">
			
			<?php if ($_smarty_tpl->tpl_vars['templatefile']->value == 'viewticket') {?>
			<div class="col-md-4 col-lg-4 col-12 pl-md-0">
			<div class="white-bg rounded-20 px-8 py-8 shadow-2 border-opacity viewticket-sidebar">
			<div class=""><?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('sidebar'=>$_smarty_tpl->tpl_vars['secondarySidebar']->value), 0, true);
?></div>
			<div class=""><?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('sidebar'=>$_smarty_tpl->tpl_vars['primarySidebar']->value), 0, true);
?></div>
			</div>
			</div>
			<?php }?>
			
            <div class="<?php if ($_smarty_tpl->tpl_vars['templatefile']->value == 'viewticket') {?>col-md-8 col-lg-8 col-12<?php } else { ?>col-12<?php }?> <?php if (!$_smarty_tpl->tpl_vars['inShoppingCart']->value) {
if ($_smarty_tpl->tpl_vars['templatefile']->value == 'homepage') {
} else { ?> main-page-contents white-bg rounded-20 px-8 py-8 shadow-2 border-opacity<?php }
}?>">
            <?php }
}
}
