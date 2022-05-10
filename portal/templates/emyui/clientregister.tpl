{if in_array('state', $optionalFields)}
    <script>
        var statesTab = 10,
            stateNotRequired = true;
    </script>
{/if}

<script src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
<script src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
<script>
    window.langPasswordStrength = "{lang key='pwstrength'}";
    window.langPasswordWeak = "{lang key='pwstrengthweak'}";
    window.langPasswordModerate = "{lang key='pwstrengthmoderate'}";
    window.langPasswordStrong = "{lang key='pwstrengthstrong'}";
    jQuery(document).ready(function() {
        jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);
    });
</script>
{if $registrationDisabled}
    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='registerCreateAccount'}"|cat:' <strong><a href="cart.php" class="alert-link">'|cat:"{lang key='registerCreateAccountOrder'}"|cat:'</a></strong>'}
{/if}


{if !$registrationDisabled}

<div class="container-fluid bg-default-2">
	
	<div class="main-signup-row row justify-content-center">
	
	    <div class="brand-logo col-12 mt-13 d-flex justify-content-center">
        <a href="{$WEB_ROOT}/index.php"><img src="{$WEB_ROOT}/templates/{$template}/image/logo-main-black.png" alt="" /></a>
        </div>
		
		<div class="col-lg-7">
			<div class="main-signup-block d-flex justify-content-center">
				<div class="col-lg-10 col-12 px-lg-3 px-0 white-bg my-11 rounded-20 border-opacity">
					<div class="form-holder pt-10">
						<div class="form-items">
							    <div class="form-title text-center">
								<h2 class="title coodiv-text-7 mb-4">{lang key='signup'}</h2>
								<p class="sub-title coodiv-text-10 mb-13">{lang key='clientareahomelogin'}</p> 
								</div>
								
								{if $errormessage}
								    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
								{/if}

							    <div class="login-form position-relative">
									<form method="post" class="using-password-strength" action="{$smarty.server.PHP_SELF}" role="form" name="orderfrm" id="frmCheckout">
										<input type="hidden" name="register" value="true" />
										<div id="containerNewUserSignup">
										
											<div class="social-login-group">
											{include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}
											</div>
											{if ($linkableProviders || $hasLinkedProvidersEnabled)}
											<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                                <span>{lang key='remoteAuthn.titleOr'} {lang key='remoteAuthn.titleSignUpVerb'} with your {lang key='remoteAuthn.emailAddress'}</span>
                                            </div>
											{/if}
										
											<div class="form-group">
												<input type="text" name="firstname" id="inputFirstName" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.firstName'}" value="{$clientfirstname}" {if !in_array( 'firstname', $optionalFields)}required{/if} autofocus> 
											</div>

											<div class="form-group">
												<input type="text" name="lastname" id="inputLastName" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.lastName'}" value="{$clientlastname}" {if !in_array( 'lastname', $optionalFields)}required{/if}> 
											</div>
												
											<div class="form-group">
												<input type="email" name="email" id="inputEmail" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.emailAddress'}" value="{$clientemail}"> 
											</div>
											
											<div class="form-group">
											<input type="tel" name="phonenumber" id="inputPhone" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.phoneNumber'}" value="{$clientphonenumber}"> 
											</div>
										</div>
										
										
											
											<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                                <span>{lang key='orderForm.billingAddress'}</span>
                                            </div>
											
											<div class="form-group">
												<input type="text" name="companyname" id="inputCompanyName" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.companyName'} ({lang key='orderForm.optional'})" value="{$clientcompanyname}"> 
											</div>
											
											<div class="form-group">
												<input type="text" name="address1" id="inputAddress1" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.streetAddress'}" value="{$clientaddress1}" {if !in_array( 'address1', $optionalFields)}required{/if}> 
											</div>
													
											<div class="form-group">
												<input type="text" name="address2" id="inputAddress2" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.streetAddress2'}" value="{$clientaddress2}"> 
											</div>
											
											<div class="form-group">
												<input type="text" name="city" id="inputCity" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.city'}" value="{$clientcity}" {if !in_array( 'city', $optionalFields)}required{/if}> 
											</div>
											
											<div class="form-group">
												<input type="text" name="state" id="state" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.state'}" value="{$clientstate}" {if !in_array( 'state', $optionalFields)}required{/if}> 
											</div>
													
											<div class="form-group">
												<input type="text" name="postcode" id="inputPostcode" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='orderForm.postcode'}" value="{$clientpostcode}" {if !in_array( 'postcode', $optionalFields)}required{/if}> 
											</div>
											
											<div class="form-group">
												<select name="country" id="inputCountry" class="form-control email-input coodiv-text-11 border"> 
												{foreach $clientcountries as $countryCode => $countryName}
													<option value="{$countryCode}" {if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected" {/if}> {$countryName} </option> 
												{/foreach} 
												</select>
											</div>
											
											{if $showTaxIdField}
											<div class="form-group">
												<input type="text" name="tax_id" id="inputTaxId" class="form-control email-input coodiv-text-11 border" placeholder="{$taxLabel} ({lang key='orderForm.optional'})" value="{$clientTaxId}"> 
											</div>
											{/if} 
												
												
											{if $customfields || $currencies}
											<div class="row justify-content-center">
											
											<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10 col-12">
                                                <span>{lang key='orderadditionalrequiredinfo'}</span>
                                            </div>
											
											
											
											{if $customfields} 
											{foreach $customfields as $customfield}
												<div class="form-group">
													<label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
													<div class="control"> {$customfield.input} {if $customfield.description} <span class="field-help-text">{$customfield.description}</span> {/if} </div>
												</div>
											{/foreach} 
											{/if} 
											
											
											{if $customfields && count($customfields)%2 > 0 }
												<div class="clearfix"></div>
											{/if} 
											
											{if $currencies}
												<div class="col-12">
													<div class="form-group prepend-icon">
														<select id="inputCurrency" name="currency" class="field form-control"> {foreach $currencies as $curr}
															<option value="{$curr.id}" {if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option> {/foreach} </select>
													</div>
												</div>
											{/if} 
											</div>
											{/if}

										<div id="containerNewUserSecurity" {if $remote_auth_prelinked && !$securityquestions } class="w-hidden" {/if}>
											
											<div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                                    <span>{lang key='orderForm.accountSecurity'}</span>
                                                </div>
												
												
											<div id="containerPassword" class="{if $remote_auth_prelinked && $securityquestions} hidden{/if}">
												<div id="passwdFeedback" class="alert alert-info text-center col-sm-12 w-hidden"></div>
												
												<div class="form-group">
													<input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='clientareapassword'}" autocomplete="off" {if $remote_auth_prelinked} value="{$password}" {/if}> 
												</div>
												
												<div class="form-group">
													<input type="password" name="password2" id="inputNewPassword2" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='clientareaconfirmpassword'}" autocomplete="off" {if $remote_auth_prelinked} value="{$password}" {/if}> 
												</div>
													
												<div class="password-strength-meter">
													<div class="progress">
														<div class="progress-bar bg-success bg-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar"> </div>
													</div>
													<p class="text-center small text-muted" id="passwordStrengthTextLabel">{lang key='pwstrength'}: {lang key='pwstrengthenter'}</p>
												</div>
											</div> 
											{if $securityquestions}
												<div class="form-group">
													<select name="securityqid" id="inputSecurityQId" class="form-control email-input coodiv-text-11 border">
														<option value="">{lang key='clientareasecurityquestion'}</option> 
														{foreach $securityquestions as $question}
														<option value="{$question.id}" {if $question.id eq $securityqid} selected{/if}> {$question.question} </option>
														{/foreach} 
													</select>
												</div>
												<div class="form-group">
													<input type="password" name="securityqans" id="inputSecurityQAns" class="form-control email-input coodiv-text-11 border" placeholder="{lang key='clientareasecurityanswer'}" autocomplete="off"> 
												</div>
											{/if} 
											</div>
											{if $showMarketingEmailOptIn}
											<div class="alert alert-primary mt-10 rounded-10">
											<h4 class="alert-heading coodiv-text-8 font-weight-bold">{lang key='emailMarketing.joinOurMailingList'}</h4>
										    <p class="coodiv-text-10">{$marketingEmailOptInMessage}</p>
										    <input type="checkbox" name="marketingoptin" value="1" {if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
											</div>
											{/if}

											{include file="$template/includes/captcha.tpl"} 
											
											{if $accepttos}
										    <p class="text-center">
											<label class="form-check">
												<input type="checkbox" name="accepttos" class="form-check-input accepttos"> {lang key='ordertosagreement'} <a href="{$tosurl}" target="_blank">{lang key='ordertos'}</a> </label>
										    </p> 
											
											{/if}
										    
											
											<div class="form-group button-block mb-2 mt-5">
											<input class="form-btn second-step-btn btn btn-primary coodiv-hover-y w-100 btn btn-primary{$captcha->getButtonClass($captchaForm)}" type="submit" value="{lang key='clientregistertitle'}" /> 
                                            </div>
												
												
									</form>
									
									<div class="form-bottom excerpt text-center">
                                            <p class="sign-up-text coodiv-text-9 coodiv-text-color">{lang key='alreadyregistered'} <a href="{$WEB_ROOT}/login.php" class="text-primary">{lang key='userLogin.signInToContinue'}</a></p>
                                        </div>
										
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> 
{/if}