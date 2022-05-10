<?php
/* Smarty version 3.1.36, created on 2022-02-23 04:54:17
  from '/home/littlecloud/public_html/portal/templates/emyui/includes/language-system.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6215bdf98247c6_85014631',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a395cc48db57d308ac3c0fbfa60b9c02fd56c2bb' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/includes/language-system.tpl',
      1 => 1639823676,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6215bdf98247c6_85014631 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="header-lang dropdown show position-static coodiv-z-index-1">
    <a class="coodiv-text-11 btn-header-lang position-relative" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	<i class="feather icon-globe mr-1"></i>
	<span class="text-uppercase"><?php if ($_smarty_tpl->tpl_vars['activeLocale']->value['countryCode'] === 'GB') {?>us<?php } else {
echo mb_strtolower($_smarty_tpl->tpl_vars['activeLocale']->value['countryCode'], 'UTF-8');
}?><small class="header-lang-currency"> - <?php echo $_smarty_tpl->tpl_vars['activeCurrency']->value['code'];?>
</small></span> 
	</a>

    <div class="header-lang-container dropdown-menu px-lg-15 py-lg-15 py-8 px-8 overflow-scroll-y" aria-labelledby="dropdownMenuLink">
        <div class="row justify-content-between align-items-center mb-5">
            <div class="col-lg-4 col-md-8">
                <form action="">
                    <div class="form-group position-relative mb-0">
                        <input class="form-control coodiv-text-9 border min-height-px-64 rounded-20" type="text" onkeyup="FilterLanguageHeader()" id="lang-search-input" placeholder="Please entree your language" />
                        <button class="btn btn-warning mr-2 coodiv-abs-cr min-height-px-50 w-100 w-md-auto rounded-20 icon-btn btn-auto-min-width"><i class="feather icon-search"></i></button>
                    </div>
                </form>
            </div>
			
            <div class="col-lg-4 text-right">
                <a href="#" class="activecurrency-header-btn btn btn-info white-text coodiv-text-12 font-weight-light rounded-20 btn-auto-min-width mt-md-0 mt-5" data-toggle="modal" data-target="#modalChooseLanguage">
				<?php echo $_smarty_tpl->tpl_vars['activeCurrency']->value['prefix'];?>
 <?php echo $_smarty_tpl->tpl_vars['activeCurrency']->value['code'];?>

				</a>
            </div>
			
        </div>
        <div class="white-bg border rounded-20 px-10 py-10 lang-box-container">
		
		
            <div class="lang-box-title position-relative coodiv-text-9 d-block color-blackish-blue font-weight-bold mb-7"><span><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"chooselanguage"),$_smarty_tpl ) );?>
</span></div>
            <div id="lang-box-ul" class="row justify-content-start mb-10">
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['locales']->value, 'locale');
$_smarty_tpl->tpl_vars['locale']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['locale']->value) {
$_smarty_tpl->tpl_vars['locale']->do_else = false;
?>
			<li class="col-md-4 col-lg-3">
                <a href="<?php echo $_smarty_tpl->tpl_vars['currentpagelinkback']->value;?>
language=<?php echo $_smarty_tpl->tpl_vars['locale']->value['language'];?>
" class="item lang-box-item coodiv-text-9 font-weight-bold d-flex align-items-center <?php if ($_smarty_tpl->tpl_vars['language']->value == $_smarty_tpl->tpl_vars['locale']->value['language']) {?> active<?php }?>" data-value="<?php echo $_smarty_tpl->tpl_vars['locale']->value['language'];?>
">
				<img src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/img/flags/<?php echo $_smarty_tpl->tpl_vars['locale']->value['language'];?>
.svg" class="headerflags" alt="<?php echo $_smarty_tpl->tpl_vars['locale']->value['localisedName'];?>
">
				<?php echo $_smarty_tpl->tpl_vars['locale']->value['localisedName'];?>
 <small><?php echo $_smarty_tpl->tpl_vars['locale']->value['language'];?>
</small>
                </a>
			</li>
            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>

        </div>
    </div>
</div>
<?php }
}
