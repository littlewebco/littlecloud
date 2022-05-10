<?php
/* Smarty version 3.1.36, created on 2022-02-23 05:01:15
  from '/home/littlecloud/public_html/portal/templates/emyui/includes/sidebar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6215bf9b0d2583_51329115',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ef9fe91a5cf1be5aecea5b5ee41a370a810ad5c9' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/includes/sidebar.tpl',
      1 => 1632140744,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6215bf9b0d2583_51329115 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['sidebar']->value, 'item');
$_smarty_tpl->tpl_vars['item']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->do_else = false;
?>
            <div menuItemName="<?php echo $_smarty_tpl->tpl_vars['item']->value->getName();?>
" class="nav-elements-box <?php if ($_smarty_tpl->tpl_vars['templatefile']->value == 'viewticket') {
} else { ?>d-flex align-items-center<?php }?> <?php if ($_smarty_tpl->tpl_vars['item']->value->getClass()) {?> <?php echo $_smarty_tpl->tpl_vars['item']->value->getClass();
}?>" <?php if ($_smarty_tpl->tpl_vars['item']->value->getAttribute('id')) {?> id="<?php echo $_smarty_tpl->tpl_vars['item']->value->getAttribute('id');?>
"<?php }?>>

            <h3 class="coodiv-text-12 nav-title mb-0 pr-4 pl-2">
                <?php if ($_smarty_tpl->tpl_vars['item']->value->hasIcon()) {?><i class="<?php echo $_smarty_tpl->tpl_vars['item']->value->getIcon();?>
"></i>&nbsp;<?php }?>
                <?php echo $_smarty_tpl->tpl_vars['item']->value->getLabel();?>

                <?php if ($_smarty_tpl->tpl_vars['item']->value->hasBadge()) {?>&nbsp;<span class="badge float-right"><?php echo $_smarty_tpl->tpl_vars['item']->value->getBadge();?>
</span><?php }?>
            </h3>
			
			


            <?php if ($_smarty_tpl->tpl_vars['item']->value->hasChildren()) {?>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['item']->value->getChildren(), 'childItem');
$_smarty_tpl->tpl_vars['childItem']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['childItem']->value) {
$_smarty_tpl->tpl_vars['childItem']->do_else = false;
?>
                        <?php if ($_smarty_tpl->tpl_vars['childItem']->value->getUri()) {?>
                            <a menuItemName="<?php echo $_smarty_tpl->tpl_vars['childItem']->value->getName();?>
" href="<?php echo $_smarty_tpl->tpl_vars['childItem']->value->getUri();?>
" class="nav-link list-group-item <?php if ($_smarty_tpl->tpl_vars['childItem']->value->isDisabled()) {?> disabled<?php }
if ($_smarty_tpl->tpl_vars['childItem']->value->getClass()) {?> <?php echo $_smarty_tpl->tpl_vars['childItem']->value->getClass();
}
if ($_smarty_tpl->tpl_vars['childItem']->value->isCurrent()) {?> active<?php }?>" <?php if ($_smarty_tpl->tpl_vars['childItem']->value->getAttribute('dataToggleTab')) {?> data-toggle="list" role="tab"<?php }
if ($_smarty_tpl->tpl_vars['childItem']->value->getAttribute('target')) {?> target="<?php echo $_smarty_tpl->tpl_vars['childItem']->value->getAttribute('target');?>
"<?php }?> id="<?php echo $_smarty_tpl->tpl_vars['childItem']->value->getId();?>
">
                                <?php if ($_smarty_tpl->tpl_vars['childItem']->value->hasBadge()) {?><span class="badge badge-warning mr-2"><?php echo $_smarty_tpl->tpl_vars['childItem']->value->getBadge();?>
</span><?php }?>
                                <?php if ($_smarty_tpl->tpl_vars['childItem']->value->hasIcon()) {?><i class="<?php echo $_smarty_tpl->tpl_vars['childItem']->value->getIcon();?>
"></i><?php }?>
                                <?php echo $_smarty_tpl->tpl_vars['childItem']->value->getLabel();?>

                            </a>
                        <?php } else { ?>
                            <div menuItemName="<?php echo $_smarty_tpl->tpl_vars['childItem']->value->getName();?>
" class="html-box-headernav <?php if ($_smarty_tpl->tpl_vars['childItem']->value->getClass()) {?> <?php echo $_smarty_tpl->tpl_vars['childItem']->value->getClass();
}?>" id="<?php echo $_smarty_tpl->tpl_vars['childItem']->value->getId();?>
">
                                <?php if ($_smarty_tpl->tpl_vars['childItem']->value->hasBadge()) {?><span class="badge float-right"><?php echo $_smarty_tpl->tpl_vars['childItem']->value->getBadge();?>
</span><?php }?>
                                <?php if ($_smarty_tpl->tpl_vars['childItem']->value->hasIcon()) {?><i class="<?php echo $_smarty_tpl->tpl_vars['childItem']->value->getIcon();?>
"></i><?php }?>
                                <?php echo $_smarty_tpl->tpl_vars['childItem']->value->getLabel();?>

                            </div>
                        <?php }?>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            <?php }?>
		
		<?php if ($_smarty_tpl->tpl_vars['item']->value->hasFooterHtml()) {?>
            <div class="panel-footer clearfix mr-8">
                <?php echo $_smarty_tpl->tpl_vars['item']->value->getFooterHtml();?>

            </div>
        <?php }?>
		</div>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
