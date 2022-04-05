<!-- Styling -->
<link rel="stylesheet" href="https://use.typekit.net/dga1hai.css">
<link href="{assetPath file='tw-normalize.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='bootstrap.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='am.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">


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
<script src="{$WEB_ROOT}/templates/{$template}/assets/js/perfect-scrollbar.jquery.min.js"></script>

{if $templatefile == "viewticket" && !$loggedin}
    <meta name="robots" content="noindex" />
{/if}