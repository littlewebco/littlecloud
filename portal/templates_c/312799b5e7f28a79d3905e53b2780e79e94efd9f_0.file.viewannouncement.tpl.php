<?php
/* Smarty version 3.1.36, created on 2022-02-24 20:19:08
  from '/home/littlecloud/public_html/portal/templates/emyui/viewannouncement.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6217e83c5b9864_90166487',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '312799b5e7f28a79d3905e53b2780e79e94efd9f' => 
    array (
      0 => '/home/littlecloud/public_html/portal/templates/emyui/viewannouncement.tpl',
      1 => 1632311352,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6217e83c5b9864_90166487 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="card">
    <div class="card-body extra-padding">
        <h3 class="coodiv-text-6 text-center d-block">
            <?php echo $_smarty_tpl->tpl_vars['title']->value;?>

            <?php if ($_smarty_tpl->tpl_vars['twittertweet']->value) {?>
                <div class="d-block">
                    <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-size="large" data-via="<?php echo $_smarty_tpl->tpl_vars['twitterusername']->value;?>
">
                    Tweet
                    </a>
                    <?php echo '<script'; ?>
 src="https://platform.twitter.com/widgets.js"><?php echo '</script'; ?>
>
                </div>
            <?php }?>
        </h3>
		<div class="announcement-ifonrmations d-flex justify-content-center mb-10">
		<span><?php echo $_smarty_tpl->tpl_vars['carbon']->value->createFromTimestamp($_smarty_tpl->tpl_vars['timestamp']->value)->format('l, jS F, Y');?>
 at <?php echo $_smarty_tpl->tpl_vars['carbon']->value->createFromTimestamp($_smarty_tpl->tpl_vars['timestamp']->value)->format('H:ia');?>
</span>
		</div>


        <div class="py-5 coodiv-text-11 announcement-arcticle">
            <?php echo $_smarty_tpl->tpl_vars['text']->value;?>

        </div>

        <?php if ($_smarty_tpl->tpl_vars['facebookrecommend']->value) {?>
            <div id="fb-root"></div>
            <?php echo '<script'; ?>
>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            <?php echo '</script'; ?>
>
            <div class="fb-like" data-href="<?php echo fqdnRoutePath('announcement-view',$_smarty_tpl->tpl_vars['id']->value,$_smarty_tpl->tpl_vars['urlfriendlytitle']->value);?>
" data-send="true" data-width="450" data-show-faces="true" data-action="recommend">
            </div>
        <?php }?>
    </div>
</div>

<?php if ($_smarty_tpl->tpl_vars['facebookcomments']->value) {?>
    <div class="card">
        <div class="card-body p-5">
            <div id="fb-root">
            </div>
            <?php echo '<script'; ?>
>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            <?php echo '</script'; ?>
>
            <fb:comments href="<?php echo fqdnRoutePath('announcement-view',$_smarty_tpl->tpl_vars['id']->value,$_smarty_tpl->tpl_vars['urlfriendlytitle']->value);?>
" num_posts="5" width="100%"></fb:comments>
        </div>
    </div>
<?php }?>

<div class="announcement-footer d-flex justify-content-between mx-10 mb-10">
<a href="<?php echo routePath('announcement-index');?>
" class="btn btn-light rounded-20">
    <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'clientareabacklink'),$_smarty_tpl ) );?>

</a>

<?php if ($_smarty_tpl->tpl_vars['editLink']->value) {?>
    <a href="<?php echo $_smarty_tpl->tpl_vars['editLink']->value;?>
" class="btn btn-primary rounded-20">
        <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'edit'),$_smarty_tpl ) );?>

    </a>
<?php }?>
</div>
<?php }
}
