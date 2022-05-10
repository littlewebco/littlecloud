<?php
/* Smarty version 3.1.36, created on 2022-02-23 17:54:02
  from '/home/littlecloud/public_html/portal/templates/emyui/supportticketsubmit-stepone.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_621674ba5f2790_79322046',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd0906e7b1208ba81ddbe30aba69a8adf0cd2d2a4' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/supportticketsubmit-stepone.tpl',
      1 => 1632398024,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_621674ba5f2790_79322046 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="card">
    <div class="card-body extra-padding">

        <div class="mb-4 text-center">
            <h3 class="card-title"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"createNewSupportRequest"),$_smarty_tpl ) );?>
</h3>
            <p class="text-muted mb-0"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'supportticketsheader'),$_smarty_tpl ) );?>
</p>
        </div>

        <div class="row mt-10 justify-content-start">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['departments']->value, 'department', false, 'num');
$_smarty_tpl->tpl_vars['department']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['num']->value => $_smarty_tpl->tpl_vars['department']->value) {
$_smarty_tpl->tpl_vars['department']->do_else = false;
?>
				<div class="col-md-4 col-sm-12">
				<div class="border rounded-10 px-7 pt-6 pb-8 mb-5">
                        <a class="coodiv-text-8 color-blackish-blue mt-0" href="<?php echo $_SERVER['PHP_SELF'];?>
?step=2&amp;deptid=<?php echo $_smarty_tpl->tpl_vars['department']->value['id'];?>
">
                        <?php echo $_smarty_tpl->tpl_vars['department']->value['name'];?>

                        </a>
                    <?php if ($_smarty_tpl->tpl_vars['department']->value['description']) {?>
                        <p class="coodiv-text-11 color-blackish-blue-opacity mb-0"><?php echo $_smarty_tpl->tpl_vars['department']->value['description'];?>
</p>
                    <?php }?>
				</div>
				</div>
                <?php
}
if ($_smarty_tpl->tpl_vars['department']->do_else) {
?>
                    <?php ob_start();
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'nosupportdepartments'),$_smarty_tpl ) );
$_prefixVariable1=ob_get_clean();
$_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/alert.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('type'=>"info",'msg'=>$_prefixVariable1,'textcenter'=>true), 0, true);
?>
                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </div>

    </div>
</div>
<?php }
}
