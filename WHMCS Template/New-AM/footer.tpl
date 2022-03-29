                    </div>

                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-md-none col-md-3 sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                    <div class="clearfix"></div>
                    </div>
                    </div>
                    </section>



                    <div id="fullpage-overlay" class="w-hidden">
                        <div class="outer-wrapper">
                            <div class="inner-wrapper">
                                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                                <br>
                                <span class="msg"></span>
                            </div>
                        </div>
                    </div>

                    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title"></h5>
                                    <button type="button" class="close" data-dismiss="modal">
                                        <span aria-hidden="true">&times;</span>
                                        <span class="sr-only">{lang key='close'}</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    {lang key='loading'}
                                </div>
                                <div class="modal-footer">
                                    <div class="float-left loader">
                                        <i class="fas fa-circle-notch fa-spin"></i>
                                        {lang key='loading'}
                                    </div>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                        {lang key='close'}
                                    </button>
                                    <button type="button" class="btn btn-primary modal-submit">
                                        {lang key='submit'}
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <form method="get" action="{$currentpagelinkback}">
                        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <button type="button" class="close text-light" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>

                                        {if $languagechangeenabled && count($locales) > 1}
                                            <h5 class="pt-5 pb-3 h5">{lang key='chooselanguage'}</h5>
                                            <div class="row item-selector">
                                                <input type="hidden" name="language" value="">
                                                {foreach $locales as $locale}
                                                    <div class="col-4">
                                                        <a href="#" class="item{if $language == $locale.language} active{/if}"
                                                            data-value="{$locale.language}">
                                                            {$locale.localisedName}
                                                        </a>
                                                    </div>
                                                {/foreach}
                                            </div>
                                        {/if}
                                        {if !$loggedin && $currencies}
                                            <p class="pt-5 pb-3 h5">{lang key='choosecurrency'}</p>
                                            <div class="row item-selector">
                                                <input type="hidden" name="currency" value="">
                                                {foreach $currencies as $selectCurrency}
                                                    <div class="col-4">
                                                        <a href="#"
                                                            class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}"
                                                            data-value="{$selectCurrency.id}">
                                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                                        </a>
                                                    </div>
                                                {/foreach}
                                            </div>
                                        {/if}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                    {if !$loggedin && $adminLoggedIn}
                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin"
                            data-toggle="tooltip" data-placement="bottom"
                            title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                            <i class="fas fa-redo-alt"></i>
                            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                        </a>
                    {/if}

                    {include file="$template/includes/generate-password.tpl"}

                    {$footeroutput}
                    <script type="text/javascript">
                        jQuery(".select").click(function() {
                          var is_open = jQuery(this).hasClass("open");
                          if (is_open) {
                            jQuery(this).removeClass("open");
                          } else {
                            jQuery(this).addClass("open");
                          }
                        });

                        jQuery(".select li").click(function() {

                          var selected_value = jQuery(this).html();
                          var first_li = jQuery(".select li:first-child").html();

                          jQuery(".select li:first-child").html(selected_value);
                          jQuery(this).html(first_li);

                        });

                        jQuery(document).mouseup(function(event) {

                          var target = event.target;
                          var select = jQuery(".select");

                          if (!select.is(target) && select.has(target).length === 0) {
                            select.removeClass("open");
                          }

                        });
                    </script>
                    <script type="text/javascript">
                        equalheight = function(container){
                        var currentTallest = 0,
                           currentRowStart = 0,
                           rowDivs = new Array(),
                           $el,
                           topPosition = 0;
                         jQuery(container).each(function() {
                           $el = jQuery(this);
                           jQuery($el).height('auto')
                           topPostion = $el.position().top;
                           if (currentRowStart != topPostion) {
                            for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                               rowDivs[currentDiv].height(currentTallest);
                            }
                                rowDivs.length = 0; // empty the array
                                currentRowStart = topPostion;
                                currentTallest = $el.height();
                                rowDivs.push($el);
                            } else {
                                rowDivs.push($el);
                                currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
                            }

                           for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                             rowDivs[currentDiv].height(currentTallest);
                           }

                         });
                        }

                        jQuery(window).load(function() {
                          equalheight('.Welcome-section .equalheight');
                        });

                        jQuery(window).resize(function(){
                          equalheight('.Welcome-section .equalheight');
                        });
                    </script>

                    </body>

</html>