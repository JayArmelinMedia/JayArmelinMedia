<div class="col-span-12">
            <h3 class="pl-3 mt-1 mb-0 border-b border-gray-800 page-header sm:-mx-5 light:border-gray-200"><span
                    aria-hidden="true" class="icon icon-folder"></span> <span
                    class="text-lg header-text">{$LANG.clientareafiles}</span></h3>
        </div>

        {if $item->hasChildren()}
            {foreach $item->getChildren() as $childItem}
                {if $childItem->getUri()}
                    <div class="col-span-6 sm:col-span-4 md:col-span-3 2xl:col-span-2">
                        <div class="pt-5 pb-3 file">
                            <div class="w-10 mx-auto">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                        </svg>
                            </div>
                            <div class="block mt-3 font-medium text-center text-gray-400 truncate">

                                <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}"
                                    class="{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"
                                    {if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"
                                        {/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}" {/if}
                                        id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {hexa_explode_service_name_line($childItem->getLabel())}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>

                                </div>

                                <div class="mt-1 text-xs text-center text-gray-600">
                                    {hexa_get_files_info_from_db_($childItem->getUri(),'dateadded')}
                                </div>
                            </div>
                        </div>

                    {/if}
                {foreachelse}
                <div class="norecords">{$LANG.norecordsfound}</div>
                {/foreach}
            {/if}