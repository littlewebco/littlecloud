<!-- Styling -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/bootstrap.css" />

<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/nice-select/nice-select.min.css" />
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/flickity/flickity.min.css" />
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/aos/aos.min.css" />

<!-- fonts & icons  -->
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/fonts/sofia-pro/typographie.css" />
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">

<!-- Main Theme Stylesheets  -->
{assetExists file="main.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}
{assetExists file="whmcs.theme.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}
{assetExists file="custom.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}

<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang|addslashes key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang|addslashes key="markdown.saved"}',
        saving = '{lang|addslashes key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang|addslashes key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}
