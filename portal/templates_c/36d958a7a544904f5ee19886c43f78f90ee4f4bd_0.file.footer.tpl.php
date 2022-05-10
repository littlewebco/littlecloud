<?php
/* Smarty version 3.1.36, created on 2022-02-23 04:12:38
  from '/home/littlecloud/public_html/portal/templates/emyui/footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6215b4365c0602_25189759',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '36d958a7a544904f5ee19886c43f78f90ee4f4bd' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/footer.tpl',
      1 => 1637413278,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6215b4365c0602_25189759 (Smarty_Internal_Template $_smarty_tpl) {
?>    <?php if ($_smarty_tpl->tpl_vars['loginpage']->value == 0 && $_smarty_tpl->tpl_vars['templatefile']->value != "clientregister") {?>
	                </div>

                    </div>
                    <?php if (!$_smarty_tpl->tpl_vars['inShoppingCart']->value && $_smarty_tpl->tpl_vars['secondarySidebar']->value->hasChildren()) {?>
                        <div class="d-md-none col-md-3 sidebar sidebar-secondary">
                            <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('sidebar'=>$_smarty_tpl->tpl_vars['secondarySidebar']->value), 0, true);
?>
                        </div>
                    <?php }?>
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
                                                <a href="#"><img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/logo-main-white.png" alt="" class="dark-version-logo" /></a>
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
											<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/social-accounts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
											</ul>
                                        </div>
                                    </div>

                                    <div class="col-6 col-lg-2">
                                        <div class="footer-block mb-13 mb-lg-9">
                                            <h4 class="block-title coodiv-text-7 mb-7 position-relative"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"browseProducts"),$_smarty_tpl ) );?>
</h4>
                                            <ul class="footer-list list-unstyled">
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/cart.php"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"navservicesplaceorder"),$_smarty_tpl ) );?>
</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/cart.php"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"affiliateshostingpackage"),$_smarty_tpl ) );?>
</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/cart.php?gid=addons"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"cartproductaddons"),$_smarty_tpl ) );?>
</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/cart.php?a=view"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"viewcart"),$_smarty_tpl ) );?>
</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-6 col-lg-3 pl-lg-15">
                                        <div class="footer-block mb-13 mb-lg-9">
                                            <h4 class="block-title coodiv-text-7 mb-7 position-relative"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"cartproductdomain"),$_smarty_tpl ) );?>
</h4>
                                            <ul class="footer-list list-unstyled">
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/cart.php?a=add&domain=register"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"orderregisterdomain"),$_smarty_tpl ) );?>
</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/cart.php?a=add&domain=transfer"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"transferYourDomain"),$_smarty_tpl ) );?>
</a></li>
												<li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/index.php?rp=/cart/domain/renew"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"domainRenewal.renewingDomains"),$_smarty_tpl ) );?>
</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/clientarea.php?action=domains"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"homepage.manageDomains"),$_smarty_tpl ) );?>
</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-6 col-lg-3 pl-lg-15">
                                        <div class="footer-block mb-13 mb-lg-9">
                                            <h4 class="block-title coodiv-text-7 mb-7 position-relative"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"navsupport"),$_smarty_tpl ) );?>
</h4>
                                            <ul class="footer-list list-unstyled">
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/supporttickets.php"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"navtickets"),$_smarty_tpl ) );?>
</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/downloads.php"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"downloadssearch"),$_smarty_tpl ) );?>
</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/knowledgebase.php"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"knowledgebasetitle"),$_smarty_tpl ) );?>
</a></li>
												<li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/announcements.php"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"announcementstitle"),$_smarty_tpl ) );?>
</a></li>
                                                <li class="py-2"><a class="footer-list-link" href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/contact.php"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"contactus"),$_smarty_tpl ) );?>
</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="bottom-footer-area border-top pt-9 pb-8">
                                <div class="row align-items-center">
                                    <div class="col-lg-8">
                                        <p class="copyright-text coodiv-text-11 mb-6 mb-lg-0 coodiv-text-color-opacity text-center text-lg-left">
                                            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"copyrightFooterNotice",'year'=>$_smarty_tpl->tpl_vars['date_year']->value,'company'=>$_smarty_tpl->tpl_vars['companyname']->value),$_smarty_tpl ) );?>
, Made with <i class="coodiv-color-red-opacity-visible feather icon-heart-on mx-1"></i> by <a href="https://coodiv.net/">coodiv</a> with a lots of coffee
                                            <i class="icon icon-heart-2-2 text-sky-blue align-middle ml-2"></i>
                                        </p>
                                    </div>
                                    <div class="col-lg-4 text-center text-lg-right">
                                        <?php if ($_smarty_tpl->tpl_vars['languagechangeenabled']->value && count($_smarty_tpl->tpl_vars['locales']->value) > 1 || $_smarty_tpl->tpl_vars['currencies']->value) {?>
                                        <button type="button" class="btn-lang-footer" data-toggle="modal" data-target="#modalChooseLanguage">
                                            <div class="d-inline-block align-middle">
                                                <div class="iti-flag <?php if ($_smarty_tpl->tpl_vars['activeLocale']->value['countryCode'] === 'GB') {?>us<?php } else {
echo mb_strtolower($_smarty_tpl->tpl_vars['activeLocale']->value['countryCode'], 'UTF-8');
}?>"></div>
                                            </div>
                                            <?php echo $_smarty_tpl->tpl_vars['activeCurrency']->value['prefix'];?>

                                            <?php echo $_smarty_tpl->tpl_vars['activeCurrency']->value['code'];?>

                                        </button>
                                        <?php }?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	<?php }?>

 

    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/assets/img/overlay-spinner.svg" alt="">
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
                        <span class="sr-only"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'close'),$_smarty_tpl ) );?>
</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'loading'),$_smarty_tpl ) );?>

                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'loading'),$_smarty_tpl ) );?>

                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'close'),$_smarty_tpl ) );?>

                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'submit'),$_smarty_tpl ) );?>

                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="<?php echo $_smarty_tpl->tpl_vars['currentpagelinkback']->value;?>
">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <?php if (!$_smarty_tpl->tpl_vars['loggedin']->value && $_smarty_tpl->tpl_vars['currencies']->value) {?>
                            <p class="h5 pt-5 pb-3"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'choosecurrency'),$_smarty_tpl ) );?>
</p>
                            <div class="row item-selector justify-content-center">
                                <input type="hidden" name="currency" value="">
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['currencies']->value, 'selectCurrency');
$_smarty_tpl->tpl_vars['selectCurrency']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['selectCurrency']->value) {
$_smarty_tpl->tpl_vars['selectCurrency']->do_else = false;
?>
                                    <div class="col-3">
                                        <a href="#" class="item<?php if ($_smarty_tpl->tpl_vars['activeCurrency']->value['id'] == $_smarty_tpl->tpl_vars['selectCurrency']->value['id']) {?> active<?php }?>" data-value="<?php echo $_smarty_tpl->tpl_vars['selectCurrency']->value['id'];?>
">
                                            <?php echo $_smarty_tpl->tpl_vars['selectCurrency']->value['prefix'];?>
 <?php echo $_smarty_tpl->tpl_vars['selectCurrency']->value['code'];?>

                                        </a>
                                    </div>
                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                            </div>
						<?php } else { ?>
						<h5 class="text-center py-5 mb-0">your current currency is <?php echo $_smarty_tpl->tpl_vars['activeCurrency']->value['prefix'];
echo $_smarty_tpl->tpl_vars['activeCurrency']->value['code'];?>
</h5>
                        <?php }?>
                    </div>
					<?php if (!$_smarty_tpl->tpl_vars['loggedin']->value && $_smarty_tpl->tpl_vars['currencies']->value) {?>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary mx-auto rounded-20"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'apply'),$_smarty_tpl ) );?>
</button>
                    </div>
					<?php }?>
                </div>
            </div>
        </div>
    </form>
	
	
	     <!-- START LIVE SUPPORT FIXED HEAD -->
		<a class="live-support-trigger" href="#" data-toggle="modal" data-target="#errormodal">
		<div class="support-agent"><img class="profile-pic" src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/img/support-agent.jpg" alt="support agent"></div>
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
	
	

    <?php if (!$_smarty_tpl->tpl_vars['loggedin']->value && $_smarty_tpl->tpl_vars['adminLoggedIn']->value) {?>
        <a href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="<?php if ($_smarty_tpl->tpl_vars['adminMasqueradingAsClient']->value) {
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'adminmasqueradingasclient'),$_smarty_tpl ) );?>
 <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'logoutandreturntoadminarea'),$_smarty_tpl ) );
} else {
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'adminloggedin'),$_smarty_tpl ) );?>
 <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'returntoadminarea'),$_smarty_tpl ) );
}?>">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"admin.returnToAdmin"),$_smarty_tpl ) );?>
</span>
        </a>
    <?php }?>

    <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/generate-password.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

    <?php echo $_smarty_tpl->tpl_vars['footeroutput']->value;?>

	
	<?php if ($_smarty_tpl->tpl_vars['loggedin']->value) {?><span id="gravataremail" class="d-none"><?php echo $_smarty_tpl->tpl_vars['clientsdetails']->value['email'];?>
</span><!-- gravatar email --><?php }?>
	
	<!-- Activation Script -->
	<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/js/particles-code.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/js/particles.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/plugins/nice-select/jquery.nice-select.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/plugins/md5/md5.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/plugins/flickity/flickity.pkgd.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/plugins/aos/aos.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/js/custom.js"><?php echo '</script'; ?>
>
	
	
	<?php echo '<script'; ?>
>
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
	<?php echo '</script'; ?>
>
	

</body>
</html>
<?php }
}
