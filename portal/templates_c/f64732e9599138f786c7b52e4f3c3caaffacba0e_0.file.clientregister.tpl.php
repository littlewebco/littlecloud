<?php
/* Smarty version 3.1.36, created on 2022-02-26 23:04:30
  from '/home/littlecloud/public_html/portal/templates/emyui/clientregister.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_621ab1fe964784_70378140',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f64732e9599138f786c7b52e4f3c3caaffacba0e' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/clientregister.tpl',
      1 => 1637412314,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_621ab1fe964784_70378140 (Smarty_Internal_Template $_smarty_tpl) {
if (in_array('state',$_smarty_tpl->tpl_vars['optionalFields']->value)) {?>
    <?php echo '<script'; ?>
>
        var statesTab = 10,
            stateNotRequired = true;
    <?php echo '</script'; ?>
>
<?php }?>

<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_JS']->value;?>
/StatesDropdown.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_JS']->value;?>
/PasswordStrength.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
>
    window.langPasswordStrength = "<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'pwstrength'),$_smarty_tpl ) );?>
";
    window.langPasswordWeak = "<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'pwstrengthweak'),$_smarty_tpl ) );?>
";
    window.langPasswordModerate = "<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'pwstrengthmoderate'),$_smarty_tpl ) );?>
";
    window.langPasswordStrong = "<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'pwstrengthstrong'),$_smarty_tpl ) );?>
";
    jQuery(document).ready(function() {
        jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);
    });
<?php echo '</script'; ?>
>
<?php if ($_smarty_tpl->tpl_vars['registrationDisabled']->value) {?>
    <?php ob_start();
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'registerCreateAccount'),$_smarty_tpl ) );
$_prefixVariable1=ob_get_clean();
ob_start();
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'registerCreateAccountOrder'),$_smarty_tpl ) );
$_prefixVariable2=ob_get_clean();
$_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/alert.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('type'=>"error",'msg'=>((($_prefixVariable1).(' <strong><a href="cart.php" class="alert-link">')).($_prefixVariable2)).('</a></strong>')), 0, true);
}?>


<?php if (!$_smarty_tpl->tpl_vars['registrationDisabled']->value) {?>

<div class="container-fluid bg-default-2">
	
	<div class="main-signup-row row justify-content-center">
	
	    <div class="brand-logo col-12 mt-13 d-flex justify-content-center">
        <a href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/index.php"><img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/image/logo-main-black.png" alt="" /></a>
        </div>
		
		<div class="col-lg-7">
			<div class="main-signup-block d-flex justify-content-center">
				<div class="col-lg-10 col-12 px-lg-3 px-0 white-bg my-11 rounded-20 border-opacity">
					<div class="form-holder pt-10">
						<div class="form-items">
							    <div class="form-title text-center">
								<h2 class="title coodiv-text-7 mb-4"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'signup'),$_smarty_tpl ) );?>
</h2>
								<p class="sub-title coodiv-text-10 mb-13"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientareahomelogin'),$_smarty_tpl ) );?>
</p> 
								</div>
								
								<?php if ($_smarty_tpl->tpl_vars['errormessage']->value) {?>
								    <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/alert.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('type'=>"error",'errorshtml'=>$_smarty_tpl->tpl_vars['errormessage']->value), 0, true);
?>
								<?php }?>

							    <div class="login-form position-relative">
									<form method="post" class="using-password-strength" action="<?php echo $_SERVER['PHP_SELF'];?>
" role="form" name="orderfrm" id="frmCheckout">
										<input type="hidden" name="register" value="true" />
										<div id="containerNewUserSignup">
										
											<div class="social-login-group">
											<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/linkedaccounts.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('linkContext'=>"registration"), 0, true);
?>
											</div>
											<?php if (($_smarty_tpl->tpl_vars['linkableProviders']->value || $_smarty_tpl->tpl_vars['hasLinkedProvidersEnabled']->value)) {?>
											<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                                <span><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'remoteAuthn.titleOr'),$_smarty_tpl ) );?>
 <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'remoteAuthn.titleSignUpVerb'),$_smarty_tpl ) );?>
 with your <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'remoteAuthn.emailAddress'),$_smarty_tpl ) );?>
</span>
                                            </div>
											<?php }?>
										
											<div class="form-group">
												<input type="text" name="firstname" id="inputFirstName" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.firstName'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientfirstname']->value;?>
" <?php if (!in_array('firstname',$_smarty_tpl->tpl_vars['optionalFields']->value)) {?>required<?php }?> autofocus> 
											</div>

											<div class="form-group">
												<input type="text" name="lastname" id="inputLastName" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.lastName'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientlastname']->value;?>
" <?php if (!in_array('lastname',$_smarty_tpl->tpl_vars['optionalFields']->value)) {?>required<?php }?>> 
											</div>
												
											<div class="form-group">
												<input type="email" name="email" id="inputEmail" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.emailAddress'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientemail']->value;?>
"> 
											</div>
											
											<div class="form-group">
											<input type="tel" name="phonenumber" id="inputPhone" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.phoneNumber'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientphonenumber']->value;?>
"> 
											</div>
										</div>
										
										
											
											<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                                <span><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.billingAddress'),$_smarty_tpl ) );?>
</span>
                                            </div>
											
											<div class="form-group">
												<input type="text" name="companyname" id="inputCompanyName" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.companyName'),$_smarty_tpl ) );?>
 (<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.optional'),$_smarty_tpl ) );?>
)" value="<?php echo $_smarty_tpl->tpl_vars['clientcompanyname']->value;?>
"> 
											</div>
											
											<div class="form-group">
												<input type="text" name="address1" id="inputAddress1" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.streetAddress'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientaddress1']->value;?>
" <?php if (!in_array('address1',$_smarty_tpl->tpl_vars['optionalFields']->value)) {?>required<?php }?>> 
											</div>
													
											<div class="form-group">
												<input type="text" name="address2" id="inputAddress2" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.streetAddress2'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientaddress2']->value;?>
"> 
											</div>
											
											<div class="form-group">
												<input type="text" name="city" id="inputCity" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.city'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientcity']->value;?>
" <?php if (!in_array('city',$_smarty_tpl->tpl_vars['optionalFields']->value)) {?>required<?php }?>> 
											</div>
											
											<div class="form-group">
												<input type="text" name="state" id="state" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.state'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientstate']->value;?>
" <?php if (!in_array('state',$_smarty_tpl->tpl_vars['optionalFields']->value)) {?>required<?php }?>> 
											</div>
													
											<div class="form-group">
												<input type="text" name="postcode" id="inputPostcode" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.postcode'),$_smarty_tpl ) );?>
" value="<?php echo $_smarty_tpl->tpl_vars['clientpostcode']->value;?>
" <?php if (!in_array('postcode',$_smarty_tpl->tpl_vars['optionalFields']->value)) {?>required<?php }?>> 
											</div>
											
											<div class="form-group">
												<select name="country" id="inputCountry" class="form-control email-input coodiv-text-11 border"> 
												<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['clientcountries']->value, 'countryName', false, 'countryCode');
$_smarty_tpl->tpl_vars['countryName']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['countryCode']->value => $_smarty_tpl->tpl_vars['countryName']->value) {
$_smarty_tpl->tpl_vars['countryName']->do_else = false;
?>
													<option value="<?php echo $_smarty_tpl->tpl_vars['countryCode']->value;?>
" <?php if ((!$_smarty_tpl->tpl_vars['clientcountry']->value && $_smarty_tpl->tpl_vars['countryCode']->value == $_smarty_tpl->tpl_vars['defaultCountry']->value) || ($_smarty_tpl->tpl_vars['countryCode']->value == $_smarty_tpl->tpl_vars['clientcountry']->value)) {?> selected="selected" <?php }?>> <?php echo $_smarty_tpl->tpl_vars['countryName']->value;?>
 </option> 
												<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?> 
												</select>
											</div>
											
											<?php if ($_smarty_tpl->tpl_vars['showTaxIdField']->value) {?>
											<div class="form-group">
												<input type="text" name="tax_id" id="inputTaxId" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo $_smarty_tpl->tpl_vars['taxLabel']->value;?>
 (<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.optional'),$_smarty_tpl ) );?>
)" value="<?php echo $_smarty_tpl->tpl_vars['clientTaxId']->value;?>
"> 
											</div>
											<?php }?> 
												
												
											<?php if ($_smarty_tpl->tpl_vars['customfields']->value || $_smarty_tpl->tpl_vars['currencies']->value) {?>
											<div class="row justify-content-center">
											
											<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10 col-12">
                                                <span><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderadditionalrequiredinfo'),$_smarty_tpl ) );?>
</span>
                                            </div>
											
											
											
											<?php if ($_smarty_tpl->tpl_vars['customfields']->value) {?> 
											<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['customfields']->value, 'customfield');
$_smarty_tpl->tpl_vars['customfield']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['customfield']->value) {
$_smarty_tpl->tpl_vars['customfield']->do_else = false;
?>
												<div class="form-group">
													<label for="customfield<?php echo $_smarty_tpl->tpl_vars['customfield']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['customfield']->value['name'];?>
 <?php echo $_smarty_tpl->tpl_vars['customfield']->value['required'];?>
</label>
													<div class="control"> <?php echo $_smarty_tpl->tpl_vars['customfield']->value['input'];?>
 <?php if ($_smarty_tpl->tpl_vars['customfield']->value['description']) {?> <span class="field-help-text"><?php echo $_smarty_tpl->tpl_vars['customfield']->value['description'];?>
</span> <?php }?> </div>
												</div>
											<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?> 
											<?php }?> 
											
											
											<?php if ($_smarty_tpl->tpl_vars['customfields']->value && count($_smarty_tpl->tpl_vars['customfields']->value)%2 > 0) {?>
												<div class="clearfix"></div>
											<?php }?> 
											
											<?php if ($_smarty_tpl->tpl_vars['currencies']->value) {?>
												<div class="col-12">
													<div class="form-group prepend-icon">
														<select id="inputCurrency" name="currency" class="field form-control"> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['currencies']->value, 'curr');
$_smarty_tpl->tpl_vars['curr']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['curr']->value) {
$_smarty_tpl->tpl_vars['curr']->do_else = false;
?>
															<option value="<?php echo $_smarty_tpl->tpl_vars['curr']->value['id'];?>
" <?php if (!$_POST['currency'] && $_smarty_tpl->tpl_vars['curr']->value['default'] || $_POST['currency'] == $_smarty_tpl->tpl_vars['curr']->value['id']) {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['curr']->value['code'];?>
</option> <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?> </select>
													</div>
												</div>
											<?php }?> 
											</div>
											<?php }?>

										<div id="containerNewUserSecurity" <?php if ($_smarty_tpl->tpl_vars['remote_auth_prelinked']->value && !$_smarty_tpl->tpl_vars['securityquestions']->value) {?> class="w-hidden" <?php }?>>
											
											<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                                    <span><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'orderForm.accountSecurity'),$_smarty_tpl ) );?>
</span>
                                                </div>
												
												
											<div id="containerPassword" class="<?php if ($_smarty_tpl->tpl_vars['remote_auth_prelinked']->value && $_smarty_tpl->tpl_vars['securityquestions']->value) {?> hidden<?php }?>">
												<div id="passwdFeedback" class="alert alert-info text-center col-sm-12 w-hidden"></div>
												
												<div class="form-group">
													<input type="password" name="password" id="inputNewPassword1" data-error-threshold="<?php echo $_smarty_tpl->tpl_vars['pwStrengthErrorThreshold']->value;?>
" data-warning-threshold="<?php echo $_smarty_tpl->tpl_vars['pwStrengthWarningThreshold']->value;?>
" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientareapassword'),$_smarty_tpl ) );?>
" autocomplete="off" <?php if ($_smarty_tpl->tpl_vars['remote_auth_prelinked']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['password']->value;?>
" <?php }?>> 
												</div>
												
												<div class="form-group">
													<input type="password" name="password2" id="inputNewPassword2" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientareaconfirmpassword'),$_smarty_tpl ) );?>
" autocomplete="off" <?php if ($_smarty_tpl->tpl_vars['remote_auth_prelinked']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['password']->value;?>
" <?php }?>> 
												</div>
													
												<div class="password-strength-meter">
													<div class="progress">
														<div class="progress-bar bg-success bg-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar"> </div>
													</div>
													<p class="text-center small text-muted" id="passwordStrengthTextLabel"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'pwstrength'),$_smarty_tpl ) );?>
: <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'pwstrengthenter'),$_smarty_tpl ) );?>
</p>
												</div>
											</div> 
											<?php if ($_smarty_tpl->tpl_vars['securityquestions']->value) {?>
												<div class="form-group">
													<select name="securityqid" id="inputSecurityQId" class="form-control email-input coodiv-text-11 border">
														<option value=""><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientareasecurityquestion'),$_smarty_tpl ) );?>
</option> 
														<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['securityquestions']->value, 'question');
$_smarty_tpl->tpl_vars['question']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['question']->value) {
$_smarty_tpl->tpl_vars['question']->do_else = false;
?>
														<option value="<?php echo $_smarty_tpl->tpl_vars['question']->value['id'];?>
" <?php if ($_smarty_tpl->tpl_vars['question']->value['id'] == $_smarty_tpl->tpl_vars['securityqid']->value) {?> selected<?php }?>> <?php echo $_smarty_tpl->tpl_vars['question']->value['question'];?>
 </option>
														<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?> 
													</select>
												</div>
												<div class="form-group">
													<input type="password" name="securityqans" id="inputSecurityQAns" class="form-control email-input coodiv-text-11 border" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientareasecurityanswer'),$_smarty_tpl ) );?>
" autocomplete="off"> 
												</div>
											<?php }?> 
											</div>
											<?php if ($_smarty_tpl->tpl_vars['showMarketingEmailOptIn']->value) {?>
											<div class="alert alert-primary mt-10 rounded-10">
											<h4 class="alert-heading coodiv-text-8 font-weight-bold"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'emailMarketing.joinOurMailingList'),$_smarty_tpl ) );?>
</h4>
										    <p class="coodiv-text-10"><?php echo $_smarty_tpl->tpl_vars['marketingEmailOptInMessage']->value;?>
</p>
										    <input type="checkbox" name="marketingoptin" value="1" <?php if ($_smarty_tpl->tpl_vars['marketingEmailOptIn']->value) {?> checked<?php }?> class="no-icheck toggle-switch-success" data-size="small" data-on-text="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'yes'),$_smarty_tpl ) );?>
" data-off-text="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'no'),$_smarty_tpl ) );?>
">
											</div>
											<?php }?>

											<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/captcha.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?> 
											
											<?php if ($_smarty_tpl->tpl_vars['accepttos']->value) {?>
										    <p class="text-center">
											<label class="form-check">
												<input type="checkbox" name="accepttos" class="form-check-input accepttos"> <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'ordertosagreement'),$_smarty_tpl ) );?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['tosurl']->value;?>
" target="_blank"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'ordertos'),$_smarty_tpl ) );?>
</a> </label>
										    </p> 
											
											<?php }?>
										    
											
											<div class="form-group button-block mb-2 mt-5">
											<input class="form-btn second-step-btn btn btn-primary coodiv-hover-y w-100 btn btn-primary<?php echo $_smarty_tpl->tpl_vars['captcha']->value->getButtonClass($_smarty_tpl->tpl_vars['captchaForm']->value);?>
" type="submit" value="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientregistertitle'),$_smarty_tpl ) );?>
" /> 
                                            </div>
												
												
									</form>
									
									<div class="form-bottom excerpt text-center">
                                            <p class="sign-up-text coodiv-text-9 coodiv-text-color"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'alreadyregistered'),$_smarty_tpl ) );?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/login.php" class="text-primary"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'userLogin.signInToContinue'),$_smarty_tpl ) );?>
</a></p>
                                        </div>
										
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
}
