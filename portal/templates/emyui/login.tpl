<div class="container-fluid white-bg">


 
				
				<div class="signup-slider-right-side gradient-animated-bg dark-bg col-lg-5">
                    <div class="brand-logo-signup py-10 px-9">
                        <a href="{$WEB_ROOT}/index.php"><img src="{$WEB_ROOT}/templates/{$template}/image/logo-main-white.png" alt="" /></a>
                    </div>

                    <div class="d-flex align-items-center h-100 justify-content-start mt-10 d-none-mobile">
                        <div class="col-lg-12 pl-10">
                            <h4 class="coodiv-text-5 mb-15">
							<span class="coodiv-text-8 d-block">{lang key='welcomeback'},</span>
                            {lang key='userLogin.signInToContinue'}<br>
                            </h4>
							<div class="row">
							<div class="col-md-10 col-12">

                            <div class="d-flex sign-up-features-box align-items-start mb-4">
                                <img class="mr-7 mt-3" src="{$WEB_ROOT}/templates/{$template}/image/svg/share.svg" alt="" />
                                <div class="box-text">
                                    <h6 class="coodiv-text-9 mb-0">{lang key='masspaymakepayment'}</h6>
                                    <p class="coodiv-text-11">{lang key='masspaydescription'}</p>
                                </div>
                            </div>

                            <div class="d-flex sign-up-features-box align-items-start mb-4">
                                <img class="mr-7 mt-3" src="{$WEB_ROOT}/templates/{$template}/image/svg/check.svg" alt="" />
                                <div class="box-text">
                                    <h6 class="coodiv-text-9 mb-0">{lang key='getsupport'}</h6>
                                    <p class="coodiv-text-11">{lang key='cloudSlider.feature02DescriptionTwo'}</p>
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
                                            <h2 class="title coodiv-text-7 mb-4">{lang key='loginbutton'}</h2>
                                            <p class="sub-title coodiv-text-10 mb-13">{lang key='userLogin.signInToContinue'}</p>
											{include file="$template/includes/flashmessage.tpl"}
                                        </div>
										<div class="providerLinkingFeedback"></div>

										
										<div class="login-form position-relative">
                                            <form method="post" action="{routePath('login-validate')}" class="login-form" role="form">
											
                                                <div class="social-login-group">{include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}</div>
								                {if ($linkableProviders || $hasLinkedProvidersEnabled)}
                                                <div class="separte-or position-relative text-center pb-0 pt-0 white-bg mt-15 mb-10">
                                                    <span>{lang key='remoteAuthn.titleOr'} {lang key='remoteAuthn.titleSignUpVerb'} with your {lang key='remoteAuthn.emailAddress'}</span>
                                                </div>
												{/if}
												
                                                        <div class="form-group">
                                                            <label for="email" class="coodiv-text-11 font-weight-bold text-blackish-blue">{lang key='clientareaemail'}</label>
															<input type="email" class="form-control email-input coodiv-text-11 border" name="username" id="inputEmail" placeholder="name@example.com" autofocus>
                                                        </div>
                                                        <div class="forget-block">
                                                            <div class="d-flex justify-content-between">
                                                                <label for="password" class="coodiv-text-11 font-weight-bold text-blackish-blue">{lang key='clientareapassword'}</label>
                                                                <a class="forget-link d-none-mobile" href="{routePath('password-reset-begin')}">{lang key='forgotpw'}</a>
                                                            </div>
															<input type="password" class="form-control coodiv-text-11 border" name="password" id="inputPassword" placeholder="********" autocomplete="off">
                                                        </div>
		
                                                        <div class="form-group mb-7">
                                                            <label for="terms-check" class="coodiv-check-input mb-7 d-flex">
                                                                <input class="d-none" name="rememberme" type="checkbox" id="terms-check" />
                                                                <span class="checkbox mt-1 mr-2"></span>
                                                                <p class="coodiv-text-11 text-blackish-blue mb-0">{lang key='loginrememberme'}</p>
                                                            </label>
                                                        </div>
														
														{if $captcha->isEnabled()}
										                {include file="$template/includes/captcha.tpl"}
										                {/if}
			
			
												 <div class="form-group button-block mb-2">
                                                    <button id="login" type="submit" class="form-btn second-step-btn btn btn-primary coodiv-hover-y w-100 btn btn-primary{$captcha->getButtonClass($captchaForm)}">{lang key='loginbutton'}</button>
                                                </div>												
											</form>
                                        </div>
                                        <div class="form-bottom excerpt text-center">
                                            <p class="sign-up-text coodiv-text-9 coodiv-text-color">{lang key='userLogin.notRegistered'} <a href="{$WEB_ROOT}/register.php" class="text-primary">{lang key='userLogin.createAccount'}</a></p>
                                        </div>
										
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

</div>
