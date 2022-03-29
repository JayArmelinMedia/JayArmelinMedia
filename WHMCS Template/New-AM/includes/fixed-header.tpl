<div class="fixed-header">
    <!-- <nav class="navbar navbar-default" role="navigation">

        <ul class="nav navbar-nav">
            <li class="fa_star"><a href="https://armelin.media/home"><i class="fas fa-star"></i></a></li>
            <li><a href="https://armelin.media/creative-studio/"><span>CREATIVE</span> STUDIO</a></li>
            <li><a href="https://armelin.media/strategy-ward/"><span>STRATEGY</span> WARD</a></li>
            <li><a href="https://armelin.media/star-agency/"><span>Star</span> agency</a></li>
            <li class="fa_cube {if $client === null} {else}active {/if}"><a href="clientarea.php"><i
                        class="fas fa-cube"></i></a></li>
        </ul>
    </nav> -->

    <nav class="navbar navbar-default" role="navigation">

                <ul class="nav navbar-nav">
                  <li class="fa_star {if $client === null}active {/if}"><a href="https://armelin.media/home"><i class="fas fa-star"></i></a></li>
                  <li><a href="https://armelin.media/creative-studio/"><span>CREATIVE</span> STUDIO</a></li>
                  <li><a href="https://armelin.media/strategy-ward/"><span>STRATEGY</span> WARD</a></li>
                  <li><a href="https://armelin.media/star-agency/"><span>Star</span> agency</a></li>
                  <li class="fa_cube {if $client === null} {else}active {/if}"><a href="clientarea.php"><i class="fas fa-cube"></i></a></li>
                </ul>


                {if $livehelp}
                <ul class="nav navbar-nav">
                  <li><a id="Menu-Live_Chat" href="#" class="LiveHelpButton">Live Chat - <span class="LiveHelpTextStatus">Offline</span></a></li>
                </ul>
                {/if}
                {if $langchange}
                <ul class="nav navbar-nav">
                  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fal fa-language"></i>&nbsp;<b class="caret"></b></a>
                    <ul class="dropdown-menu" id="lang-links">
                      {foreach from=$locales item=locale}
                      {if $LANG.chooselanguage == $locale.localisedName}
                      <li><a class="active" href="{$currentpagelinkback}language={$locale.language}"  data-lang="{$locale.language}">{$locale.localisedName}</a></li>
                      {else}
                      <li><a href="{$currentpagelinkback}language={$locale.language}"  data-lang="{$locale.language}" >{$locale.localisedName}</a></li>
                      {/if}
                      {/foreach}
                    </ul>
                  </li>
                </ul>
                {/if}

              </nav>

    <header class="pb-5 bg-white shadow-lg">
        <div class="container flex flex-wrap items-center justify-between">
            <div class="logo">
                <a href="clientarea.php">
                    <svg class="dark:text-white" xmlns="http://www.w3.org/2000/svg" role="img"
                        aria-labelledby="undefined-title" width="72" height="31" viewBox="0 0 93.6 40.3"
                        class="c-armelin-media-logo">
                        <path
                            d="M90.1 9.9c-3.1-5.7-7.9-7.5-7.9-7.5-5.9-2.7-11.3-.7-11.3-.7-4.2 1.1-7.5 4.4-7.5 4.4-.2-.3-2.6-2.6-4.6-3.5s-3-1.5-7.1-1.7c-4.1-.3-7.5 1.7-7.5 1.7V1.3H20.6S12 1.1 5.7 8.4c-6.4 7.4-3.4 17.5-3.4 17.5s1.4 5.9 7.7 10.4c6.3 4.4 15.3 3 17.2 1.4l.1-.1v1.9h16.8V17.7c.2-3.3 2-4.9 2-4.9 2.1-2.3 5-2.1 5-2.1 3 0 4.6 1.8 4.6 1.8 2.5 2.3 2.2 6.2 2.2 6.2v20.7h10l.2-21.8c.2-2.5 1.1-3.6 1.1-3.6.7-.8 1.8-3 5.9-3.2s6 3.6 6 3.6c.9 1.6.8 4.4.8 4.4l-.1 20.6H92V16.3c-.2-3.4-1.9-6.4-1.9-6.4zM27.2 28.4s-8.9 4.9-14.4-3c0 0-3.7-5.7 1.1-11.9 0 0 2.3-3.3 7-3.3h6.3v18.2zm13.3-.3l-4.9-2.7-4.9 2.6.9-5.5-4-3.9 5.5-.8 2.5-5 2.4 5.1 5.6.8-4.1 3.9 1 5.5z">
                        </path>
                    </svg>
                </a>
            </div>

            <ul class="items-center navbar-nav toolbar">
                {if $loggedin}

                    {if $loggedin}
                        {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
                    {/if}
                    
                    <li class="item-box">
                        {$link_back="systpl=`$template`&amp;"}
                        <a href="{$currentpagelinkback|replace:$link_back:''}systpl=am-dark"
                            class="flex items-center p-2 -m-2 text-black rounded-full group hover:text-gray-500 focus:outline-none">
                            <!-- <svg xmlns="http://www.w3.org/2000/svg"
                                class="flex-shrink-0 w-5 h-5 text-black group-hover:text-gray-500" fill="none"
                                viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z" />
                            </svg> -->
                            <i class="fas fa-moon"></i>
                        </a>
                    </li>
                    <li class="envelope item-box">
                        <a data-toggle="dropdown" class="dropdown-toggle envelope" href="#">
                            <i class="fas fa-envelope"></i>
                          </a>
                          <ul id="newemail" class="pull-right flip  dropdown-navbar navbar-status navbar-mail dropdown-menu dropdown-caret dropdown-close">
                            {foreach from=$fe_emaillist key=num item=fe_email}
                            <li>
                              <a href="#" onclick="popupWindow('viewemail.php?id={$fe_email.id}','emlmsg',800,400);return false;">
                                <div class="clearfix">
                                  <span class="pull-left flip">
                                    <i class="fas fa-fw fa-envelope"></i> {$fe_email.subject|truncate:34:'...'}
                                  </span>
                                  <span class="pull-right flip">
                                    <i class="fas fa-clock"></i> {$fe_email.time}
                                  </span>
                                </div>
                              </a>
                            </li>
                            {/foreach}
                            <li class="dropdown-footer">
                              <a href="{$WEB_ROOT}/clientarea.php?action=emails">View All Messages <i class="fal fa-fw fa-long-arrow-right"></i></a>
                            </li>
                          </ul>
                    </li>
                    <li class="item-box">
                        <a href="supporttickets.php"><i class="fas fa-briefcase"></i></a>
                    </li>

                    <li class="item-box">
                        <a class="flex items-center p-2 -m-2 text-black rounded-full cursor-pointer group hover:text-gray-500 focus:outline-none"
                            data-toggle="popover" id="accountNotifications" data-placement="bottom">
                            <!-- <svg xmlns="http://www.w3.org/2000/svg"
                                class="flex-shrink-0 w-5 h-5 text-black group-hover:text-gray-500" fill="none"
                                viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                            </svg> -->
                            <i class="fas fa-bell"></i>

                            {if count($clientAlerts) > 0}
                                <span
                                    class="Bell-count">{count($clientAlerts)}</span>
                            {else}
                                <span class="d-sm-none">0</span>
                            {/if}
                        </a>
                        <div id="accountNotificationsContent" class="w-hidden">
                            <ul class="client-alerts">
                                {foreach $clientAlerts as $alert}
                                    <li>
                                        <a href="{$alert->getLink()}">
                                            <i
                                                class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                            <div class="message">{$alert->getMessage()}</div>
                                        </a>
                                    </li>
                                {foreachelse}
                                    <li class="none">
                                        {lang key='notificationsnone'}
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                    </li>
                {/if}

                <li class="item-box">
                    <a class="flex items-center p-2 -m-2 text-black rounded-full group hover:text-gray-500 focus:outline-none"
                        href="{$WEB_ROOT}/cart.php?a=view">
                        <!-- <svg class="flex-shrink-0 w-5 h-5 text-black group-hover:text-gray-500"
                            x-description="Heroicon name: outline/shopping-bag" xmlns="http://www.w3.org/2000/svg"
                            fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"></path>
                        </svg> -->
                        <i class="fas fa-luggage-cart"></i>
                        <span
                            class="Cart-count">{$cartitemcount}</span>
                        <span class="sr-only">{lang key="carttitle"}</span>
                    </a>
                </li>

                <li class="item-box Logout">
                    <a href="logout.php" class="fa-Logout"><i class="fas fa-sign-out-alt"></i></a>
                </li>
                
                <!-- <li class="ml-3 xl:ml-6 nav-item d-xl-none">
                    <button
                        class="flex items-center p-2 -m-2 text-black rounded-full group hover:text-gray-500 focus:outline-none"
                        type="button" data-toggle="collapse" data-target="#mainNavbar">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 text-gray-500" fill="none"
                            viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M4 6h16M4 12h16m-7 6h7" />
                        </svg>
                    </button>
                </li> -->
                <li>
                    <div class="Menu-icon">
                        <div class="p-hamburger is-mounted is-closed-navi is-leave">
                            <div class="p-hamburger__line p-hamburger__line--01">
                                <div class="p-hamburger__line-in p-hamburger__line-in--01"></div>
                            </div>
                            <div class="p-hamburger__line p-hamburger__line--02">
                                <div class="p-hamburger__line-in p-hamburger__line-in--02"></div>
                            </div>
                            <div class="p-hamburger__line p-hamburger__line--03">
                                <div class="p-hamburger__line-in p-hamburger__line-in--03"></div>
                            </div>
                            <div class="p-hamburger__line p-hamburger__line--cross01">
                                <div class="p-hamburger__line-in p-hamburger__line-in--cross01"></div>
                            </div>
                            <div class="p-hamburger__line p-hamburger__line--cross02">
                                <div class="p-hamburger__line-in p-hamburger__line-in--cross02"></div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </header>
</div>

<div class="p-hamburger-menu-wrapper is-hidden">
    <div class="p-hamburger-menu">
        <span class="p-hamburger-menu__hashtag"><strong>#</strong>explore<strong>dream</strong>discover</span>
        <div class="p-hamburger-menu__soaial">
            <a href="https://www.facebook.com/jdarmelin55" target="_blank" class="p-hamburger-menu__soaial-item">
                <img src="{$WEB_ROOT}/templates/{$template}/assets/img/hamburger-menu/icon_facebook_black.svg"
                    alt="Facebook" class="p-hamburger-menu__soaial-icon">
            </a>
            <a href="https://www.instagram.com/jd.armelin/" target="_blank" class="p-hamburger-menu__soaial-item">
                <img src="{$WEB_ROOT}/templates/{$template}/assets/img/hamburger-menu/icon_instagram_black2.svg"
                    alt="Instagram" class="p-hamburger-menu__soaial-icon">
            </a>
            <a href="https://twitter.com/jdarmelin" target="_blank" class="p-hamburger-menu__soaial-item">
                <img src="{$WEB_ROOT}/templates/{$template}/assets/img/hamburger-menu/icon_twitter.svg" alt="Twitter"
                    class="p-hamburger-menu__soaial-icon">
            </a>
            <a href="https://www.linkedin.com/in/jdarmelin/" target="_blank" class="p-hamburger-menu__soaial-item">
                <img src="{$WEB_ROOT}/templates/{$template}/assets/img/hamburger-menu/icon_linkedin_black.svg"
                    alt="LinkedIn" class="p-hamburger-menu__soaial-icon">
            </a>
        </div>
        <div class="p-hamburger-menu__call-right">
            <span class="p-hamburger-menu__ph">
                <a href="tel:+1 (833)"><img
                        src="{$WEB_ROOT}/templates/{$template}/assets/img/hamburger-menu/phone.svg"><span></span>+1
                    (833) ARMELIN</a>
            </span>
            <span class="p-hamburger-menu__user">
                <a href="javascript:void(0)"><img
                        src="{$WEB_ROOT}/templates/{$template}/assets/img/hamburger-menu/user.svg"><span></span>Client
                    Login</a>
            </span>
        </div>
        <div class="p-hamburger-menu__star-wrapper">
            <div class="p-hamburger-menu__star">
                <img src="{$WEB_ROOT}/templates/{$template}/assets/img/hamburger-menu/left-half-star.png" alt=""
                    class="p-hamburger-menu__star-img">
                <div class="p-hamburger-menu__name">
                    <div class="p-hamburger-menu__name-line1">Armelin</div>
                    <div class="p-hamburger-menu__name-line2">Media</div>
                </div>
            </div>
        </div>
        <ul class="p-hamburger-menu__list">
            <li class="p-hamburger-menu__item p-hamburger-menu__item-star"><img
                    src="{$WEB_ROOT}/templates/{$template}/assets/img/hamburger-menu/star_pink.svg" alt=""></li>
            <li class="p-hamburger-menu__item">
                <div id="1" class="p-hamburger-menu__link">What we do</div>
            </li>
            <li class="p-hamburger-menu__item">
                <div id="2" class="p-hamburger-menu__link">Latest from studio</div>
            </li>
            <li class="p-hamburger-menu__item">
                <div id="3" class="p-hamburger-menu__link">Our clients</div>
            </li>
            <li class="p-hamburger-menu__item">
                <div id="4" class="p-hamburger-menu__link">Meet our founder</div>
            </li>
            <li class="p-hamburger-menu__item">
                <div id="7" class="p-hamburger-menu__link">Start your project</div>
            </li>
        </ul>
    </div>
    <div class="p-hamburger-menu-get-started-wrapper">
        <div class="p-get-started p-fullscreen-section js-fullscreen-section">
            <div class="p-get-started__options">
                <div class="p-get-started__option p-get-started__option--quote u-tt-u">
                    <a href="javascript:void(0)"
                        class="p-get-started__option-in p-get-started__option-in--quote js-hover">
                        <div class="p-get-started__option-text1">Get a free</div>
                        <div class="p-get-started__option-text2"><span class="u-c-key">Q</span>uote</div>
                        <div class="p-get-started__option-text3">For a custom work</div>
                    </a>
                </div>
                <div class="p-get-started__option-or u-tt-u"></div>
                <div class="p-get-started__option p-get-started__option--packages u-tt-u">
                    <a href="javascript:void(0)"
                        class="p-get-started__option-in p-get-started__option-in--packages js-hover">
                        <div class="p-get-started__option-text1">Browse ready - made</div>
                        <div class="p-get-started__option-text2"><span class="u-c-key">P</span>ackages</div>
                        <div class="p-get-started__option-text3">&amp; subscriptions</div>
                    </a>
                </div>
            </div>
            <p class="p-get-started__copyright">© <span class="current-year">2021</span> Armelin Media grOUP, LLC.
                All rights reserveD.</p>
            <div class="p-get-started__bg"></div>
        </div>
    </div>
</div>