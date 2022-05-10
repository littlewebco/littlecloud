<?php
/* Smarty version 3.1.36, created on 2022-02-23 04:12:38
  from '/home/littlecloud/public_html/portal/templates/emyui/login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6215b4365d54b2_53032229',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a9d2f43a45c9b095d4abe2490ae8ba46ed4605a6' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/login.tpl',
      1 => 1636195936,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6215b4365d54b2_53032229 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="container-fluid white-bg">


 
				
				<div class="signup-slider-right-side gradient-animated-bg dark-bg col-lg-5">
                    <div class="brand-logo-signup py-10 px-9">
                        <a href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/index.php"><img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/logo-main-white.png" alt="" /></a>
                    </div>

                    <div class="d-flex align-items-center h-100 justify-content-start mt-10 d-none-mobile">
                        <div class="col-lg-12 pl-10">
                            <h4 class="coodiv-text-5 mb-15">
							<span class="coodiv-text-8 d-block"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'welcomeback'),$_smarty_tpl ) );?>
,</span>
                            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'userLogin.signInToContinue'),$_smarty_tpl ) );?>
<br>
                            </h4>
							<div class="row">
							<div class="col-md-10 col-12">

                            <div class="d-flex sign-up-features-box align-items-start mb-4">
                                <img class="mr-7 mt-3" src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/svg/share.svg" alt="" />
                                <div class="box-text">
                                    <h6 class="coodiv-text-9 mb-0"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'masspaymakepayment'),$_smarty_tpl ) );?>
</h6>
                                    <p class="coodiv-text-11"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'masspaydescription'),$_smarty_tpl ) );?>
</p>
                                </div>
                            </div>

                            <div class="d-flex sign-up-features-box align-items-start mb-4">
                                <img class="mr-7 mt-3" src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/svg/check.svg" alt="" />
                                <div class="box-text">
                                    <h6 class="coodiv-text-9 mb-0"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'getsupport'),$_smarty_tpl ) );?>
</h6>
                                    <p class="coodiv-text-11"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'cloudSlider.feature02DescriptionTwo'),$_smarty_tpl ) );?>
</p>
                                </div>
                            </div>
							</div>
							</div>

                            
                        </div>
                    </div>
                </div>
				
				
				<div class="main-signup-row row justify-content-end">
                    <div class="col-lg-7">
                        <div class="main-signup-block d-flex justify-content-center">
                            <div class="col-lg-9 col-12 px-lg-3 px-0">
                                <div class="form-holder">
                                    <div class="form-items">
                                        <div class="form-title text-left">
                                            <h2 class="title coodiv-text-7 mb-4"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'loginbutton'),$_smarty_tpl ) );?>
</h2>
                                            <p class="sub-title coodiv-text-10 mb-13"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'userLogin.signInToContinue'),$_smarty_tpl ) );?>
</p>
											<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/flashmessage.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
                                        </div>
										<div class="providerLinkingFeedback"></div>

										
										<div class="login-form position-relative">
                                            <form method="post" action="<?php echo routePath('login-validate');?>
" class="login-form" role="form">
											
                                                <div class="social-login-group"><?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/linkedaccounts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('linkContext'=>"login",'customFeedback'=>true), 0, true);
?></div>
								                <?php if (($_smarty_tpl->tpl_vars['linkableProviders']->value || $_smarty_tpl->tpl_vars['hasLinkedProvidersEnabled']->value)) {?>
                                                <div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                                    <span><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'remoteAuthn.titleOr'),$_smarty_tpl ) );?>
 <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'remoteAuthn.titleSignUpVerb'),$_smarty_tpl ) );?>
 with your <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'remoteAuthn.emailAddress'),$_smarty_tpl ) );?>
</span>
                                                </div>
												<?php }?>
												
                                                        <div class="form-group">
                                                            <label for="email" class="coodiv-text-11 font-weight-bold text-blackish-blue"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientareaemail'),$_smarty_tpl ) );?>
</label>
															<input type="email" class="form-control email-input coodiv-text-11 border" name="username" id="inputEmail" placeholder="name@example.com" autofocus>
                                                        </div>
                                                        <div class="forget-block">
                                                            <div class="d-flex justify-content-between">
                                                                <label for="password" class="coodiv-text-11 font-weight-bold text-blackish-blue"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientareapassword'),$_smarty_tpl ) );?>
</label>
                                                                <a class="forget-link d-none-mobile" href="<?php echo routePath('password-reset-begin');?>
"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'forgotpw'),$_smarty_tpl ) );?>
</a>
                                                            </div>
															<input type="password" class="form-control coodiv-text-11 border" name="password" id="inputPassword" placeholder="********" autocomplete="off">
                                                        </div>
		
                                                        <div class="form-group mb-7">
                                                            <label for="terms-check" class="coodiv-check-input mb-7 d-flex">
                                                                <input class="d-none" name="rememberme" type="checkbox" id="terms-check" />
                                                                <span class="checkbox mt-1 mr-2"></span>
                                                                <p class="coodiv-text-11 text-blackish-blue mb-0"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'loginrememberme'),$_smarty_tpl ) );?>
</p>
                                                            </label>
                                                        </div>
														
														<?php if ($_smarty_tpl->tpl_vars['captcha']->value->isEnabled()) {?>
										                <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/captcha.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
										                <?php }?>
			
			
												 <div class="form-group button-block mb-2">
                                                    <button id="login" type="submit" class="form-btn second-step-btn btn btn-primary coodiv-hover-y w-100 btn btn-primary<?php echo $_smarty_tpl->tpl_vars['captcha']->value->getButtonClass($_smarty_tpl->tpl_vars['captchaForm']->value);?>
"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'loginbutton'),$_smarty_tpl ) );?>
</button>
                                                </div>												
											</form>
                                        </div>
                                        <div class="form-bottom excerpt text-center">
                                            <p class="sign-up-text coodiv-text-9 coodiv-text-color"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'userLogin.notRegistered'),$_smarty_tpl ) );?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/register.php" class="text-primary"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'userLogin.createAccount'),$_smarty_tpl ) );?>
</a></p>
                                        </div>
										
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

</div>
<?php }
}
