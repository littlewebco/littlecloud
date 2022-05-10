<?php
/* Smarty version 3.1.36, created on 2022-02-23 09:52:30
  from '/home/littlecloud/public_html/portal/templates/emyui/knowledgebase.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_621603de4a1fd0_75428837',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cd04ee9b53f4dfec4072cd50d4378aefaa99ee2a' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/knowledgebase.tpl',
      1 => 1632313092,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_621603de4a1fd0_75428837 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h5 class="coodiv-text-6 text-center d-block mb-10 mt-5"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'knowledgebase'),$_smarty_tpl ) );?>
</h5>

<form role="form" method="post" action="<?php echo routePath('knowledgebase-search');?>
" class="mb-10">
    <div class="input-group input-group-lg kb-search">
        <input type="text" id="inputKnowledgebaseSearch" name="search" class="form-control font-weight-light kb-searchinput" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientHomeSearchKb'),$_smarty_tpl ) );?>
" />
        <div class="input-group-append">
            <button type="submit" id="btnKnowledgebaseSearch" class="btn btn-primary btn-input-padded-responsive kb-searchbutton">
                <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'search'),$_smarty_tpl ) );?>

            </button>
        </div>
    </div>
</form>

<?php if ($_smarty_tpl->tpl_vars['kbcats']->value) {?>
    <div class="row justify-content-center">
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['kbcats']->value, 'category');
$_smarty_tpl->tpl_vars['category']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['category']->value) {
$_smarty_tpl->tpl_vars['category']->do_else = false;
?>
            <div class="col-md-4 col-12">
                <div class="mb-4 border rounded-10 px-8 py-8">
				<div class="kb-box-header d-flex justify-content-center mb-8">
                    <a class="coodiv-text-9 font-weight-bold" href="<?php ob_start();
echo $_smarty_tpl->tpl_vars['category']->value['id'];
$_prefixVariable1 = ob_get_clean();
ob_start();
echo $_smarty_tpl->tpl_vars['category']->value['urlfriendlyname'];
$_prefixVariable2 = ob_get_clean();
echo routePath('knowledgebase-category-view',$_prefixVariable1,$_prefixVariable2);?>
" data-id="<?php echo $_smarty_tpl->tpl_vars['category']->value['id'];?>
">
                    <?php echo $_smarty_tpl->tpl_vars['category']->value['name'];?>

					<span class="badge badge-warning coodiv-text-12 font-weight-light rounded-20 px-7 d-block">
                    <?php ob_start();
if ($_smarty_tpl->tpl_vars['category']->value['numarticles'] != 1) {
echo "s";
}
$_prefixVariable3=ob_get_clean();
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"knowledgebase.numArticle".$_prefixVariable3,'num'=>$_smarty_tpl->tpl_vars['category']->value['numarticles']),$_smarty_tpl ) );?>

                    </span>
					</a>
				</div>
                <p class="m-0 coodiv-text-10 text-center"><?php echo $_smarty_tpl->tpl_vars['category']->value['description'];?>
</p>
                
                    <?php if ($_smarty_tpl->tpl_vars['category']->value['editLink']) {?>
                    <button class="btn-sm btn btn-primary coodiv-text-11 d-block w-100 rounded-20 mt-7" id="btnEditCategory-<?php echo $_smarty_tpl->tpl_vars['category']->value['id'];?>
" data-url="<?php echo $_smarty_tpl->tpl_vars['category']->value['editLink'];?>
" type="button">
                        <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"edit"),$_smarty_tpl ) );?>

                    </button>
                    <?php }?>				
                </div>
            </div>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </div>
<?php } else { ?>
    <?php ob_start();
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'knowledgebasenoarticles'),$_smarty_tpl ) );
$_prefixVariable4=ob_get_clean();
$_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/alert.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('type'=>"info",'msg'=>$_prefixVariable4,'textcenter'=>true), 0, true);
}?>

<?php }
}
