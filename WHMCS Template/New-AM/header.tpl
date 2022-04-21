<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="theme-color" content="#060606" />
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}

    <script src='{$WEB_ROOT}/templates/{$template}/assets/js/integration.js'></script>
    <!-- <link href="{$WEB_ROOT}/templates/{$template}/css/combined.css" rel="stylesheet"> -->
    <link href="{$WEB_ROOT}/templates/{$template}/css/integration.css" rel="stylesheet">

    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script> -->

    <meta name="msapplication-TileColor" content="#000000">
    <meta name="msapplication-config" content="/img/common/favicon/browserconfig.xml">
    <meta name="theme-color" content="#060606">
    <meta name="msapplication-navbutton-color" content="#060606">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta property="og:title" content="Armelin Media | The Premier Marketing &amp; Management Firm. For The Dreamer. Who's Ready To Advance. | Armelin Media">
    <meta property="og:site_name" content="Armelin Media">
    <meta property="og:type" content="website">
    <meta property="og:description" content="">
    <meta property="og:url" content="https://armelin.media//strategy-ward/">
    <meta property="og:image" content="https://armelin.media//img/common/ogp.jpg">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Armelin Media | The Premier Marketing &amp; Management Firm. For The Dreamer. Who's Ready To Advance. | Armelin Media">
    <meta name="twitter:description" content="">
    <meta name="twitter:image" content="https://armelin.media//img/common/ogp.jpg">

    
    {$headoutput}
    
</head>


<body class="primary-bg-color {$pagetitle} {if !$templatefile|strstr:"/"} page-{$templatefile}{/if} {if $flattern_minimal == 1} minimal {/if}{if $client === null}loginpage {else}innerpage {/if}"
    data-phone-cc-input="{$phoneNumberInputStyle}">

    {$headeroutput}

    {include file="$template/includes/fixed-header.tpl"}

    <div class="Dasboard-home">
        <div class="container">
            <div class="Dasboard">
                <!-- <span><img src="/templates/Armelin/assets/img/My-dasboard-icon.png"></span>
                <ul class="select">                    
                    <li menuItemName="My Dashboard"><a href="clientarea.php?sel-op=">My Dashboard</a></li>
                    <li menuItemName="My Invoices"><a href="clientarea.php?action=invoices">My Invoices</a></li>
                    <li menuItemName="My Tickets"><a href="supporttickets.php">My Tickets</a></li>
                    <li menuItemName="My Quotes"><a href="clientarea.php?action=quotes">My Quotes</a></li>
                    <li menuItemName="My Plans & Services"><a href="clientarea.php?action=services">My Plans & Services</a></li>
                    <li menuItemName="My Projects"><a href="index.php?m=project_management">My Projects</a></li>
                    <li menuItemName="My Domains"><a href="clientarea.php?action=domains">My Domains</a></li>
                </ul> -->
                <div class="dashboard-heading-dropdown">
                  <div class="drop-down">
                    <div class="selected">
                        <a href="clientarea.php=" class="value"><i class="fas fa-chart-bar"></i>My Dashboard</a> 
                    </div>
                    <div class="options">
                      <ul>
                        <li menuItemName="My Dashboard"><a href="/clientarea.php" class="value"><i class="fas fa-chart-bar"></i>My Dashboard</a></li>
                        <li menuItemName="My Invoices"><a href="/clientarea.php?action=invoices" class="value"><i class="fas fa-file-invoice-dollar"></i>My Invoices</a></li>
                        <li menuItemName="My Tickets"><a href="/supporttickets.php" class="value"><i class="fas fa-ticket-alt fa-fw"></i>My Tickets</a></li>
                        <li menuItemName="My Quotes"><a href="/clientarea.php?action=quotes" class="value"><i class="fas fa-file-invoice"></i>My Quotes</a></li>
                        <li menuItemName="My Plans & Services"><a href="/clientarea.php?action=services" class="value"><i class="fas fa-folder-open"></i>My Plans & Services</a></li>
                        <li menuItemName="My Projects"><a href="/index.php?m=project_management" class="value"><i class="fas fa-briefcase"></i>My Projects</a></li>
                        <li menuItemName="My Domains"><a href="/clientarea.php?action=domains" class="value"><i class="fas fa-globe fa-fw"></i>My Domains</a></li>
                      </ul>
                    </div>
                  </div>
                </div>


            </div>
            <div class="home-dashboard">
                <div class="breadcrumbs">{include file="$template/includes/breadcrumb.tpl"}</div>
            </div>
        </div>
    </div>

    {include file="$template/includes/network-issues-notifications.tpl"}

    {if $templatefile != 'login'}
        <nav class="master-breadcrumb" aria-label="breadcrumb">
            <div class="container">
                {include file="$template/includes/breadcrumb.tpl"}
            </div>
        </nav>
    {/if}
<!-- 
    {include file="$template/includes/validateuser.tpl"}
    {include file="$template/includes/verifyemail.tpl"}
-->
    {if $templatefile == 'homepage'}
        {if $registerdomainenabled || $transferdomainenabled}
            {include file="$template/includes/domain-search.tpl"}
        {/if}
    {/if}
    
    <section id="main-body">
                <!-- {if $templatefile neq 'clientareahome' && !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                    <div class="col-lg-4 col-xl-3">
                        <div class="sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                        </div>
                        {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                            <div class="d-none d-lg-block sidebar">
                                {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                            </div>
                        {/if}
                    </div>
                {/if} -->
                <div class="{if  $templatefile neq 'clientareahome' && !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-12 col-xl-12{else}{/if} primary-content">
                    <div class="table-container clearfix">
                        {if $templatefile neq 'clientareahome' && !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                            <div class="Right-side">
                                <div class="sidebar">
                                    {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                                </div>
                                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                                    <div class="d-none d-lg-block sidebar">
                                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                                    </div>
                                {/if}
                            </div>
                        {/if}