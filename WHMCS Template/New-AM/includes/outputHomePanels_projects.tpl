{if $item->hasChildren()}
    <div class="col-span-12 sm:-mx-5">
        <div menuItemName="{$item->getName()}" {if $item->getAttribute('id')} id="{$item->getAttribute('id')}" {/if}>
            <h3 class="page-header-2"><span aria-hidden="true" class="icon icon-briefcase"></span> <span
                    class="text-lg header-text">{$LANG.projectManagement.activeProjects|replace:'Your Active Projects':'Active Projects'}</span>
            </h3>
            {if $item->hasBodyHtml()}
                <div class="panel-body">
                    {$item->getBodyHtml()}
                </div>
            {/if}
            {if $item->hasChildren()}
                <div class="tab-content">
                    <div class="tab-pane active" id="panel_{$item->getAttribute('id')}">
                        <table class="min-w-full divide-y divide-gray-100 dark:divide-gray-900" id="myProjects">
                            <thead class="bg-transparent dark:bg-black">
                                <tr>
                                    <th class="px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase">
                                        {flattern_get_project_management_lang('title')}</th>
                                    <th
                                        class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase lg:table-cell">
                                        {flattern_get_project_management_lang('created')}</th>
                                    <th
                                        class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase lg:table-cell">
                                        {flattern_get_project_management_lang('duedate')}</th>
                                    <th
                                        class="hidden px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase sm:table-cell">
                                        {flattern_get_project_management_lang('status')}</th>
                                    <th
                                        class="hidden px-6 py-3 text-xs font-medium tracking-wider text-right text-gray-500 uppercase xl:table-cell">
                                        {flattern_get_project_management_lang('lastmodified')}</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-100 dark:divide-gray-900 dark:bg-transparent">
                                {foreach $item->getChildren() as $childItem}
                                    {if $childItem->getUri()}
                                        <tr>
                                            <td class="px-6 py-4 whitespace-nowrap">
                                                <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}"
                                                    class="{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"
                                                    {if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"
                                                        {/if}{if $childItem->getAttribute('target')}
                                                    target="{$childItem->getAttribute('target')}" {/if} id="{$childItem->getId()}">
                                                    {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                                    {flattern_get_projects_info_from_db_($childItem->getUri(),'title')}
                                                    {if $childItem->hasBadge()}&nbsp;<span
                                                        class="badge">{$childItem->getBadge()}</span>{/if}
                                                </a>
                                                <ul class="lg:hidden">
                                                    <li class="sm:hidden">
                                                        {flattern_get_project_management_lang('status')}:
                                                        {flattern_get_projects_info_from_db_($childItem->getUri(),'status')}</li>
                                                    <li>{flattern_get_project_management_lang('created')}:
                                                        {flattern_get_projects_info_from_db_($childItem->getUri(),'created')}</li>
                                                    <li>{flattern_get_project_management_lang('duedate')}:
                                                        {flattern_get_projects_info_from_db_($childItem->getUri(),'duedate')}</li>
                                                    <li>{flattern_get_project_management_lang('lastmodified')}:
                                                        {flattern_get_projects_info_from_db_($childItem->getUri(),'lastmodified')}</li>
                                                </ul>
                                            </td>
                                            <td class="hidden px-6 py-4 whitespace-nowrap lg:table-cell">
                                                {flattern_get_projects_info_from_db_($childItem->getUri(),'created')}
                                            </td>
                                            <td class="hidden px-6 py-4 whitespace-nowrap lg:table-cell">
                                                {flattern_get_projects_info_from_db_($childItem->getUri(),'duedate')}
                                            </td>
                                            <td class="hidden px-6 py-4 sm:table-cell whitespace-nowrap">
                                                {flattern_get_projects_info_from_db_($childItem->getUri(),'status')}
                                            </td>
                                            <td class="hidden px-6 py-4 text-right whitespace-nowrap xl:table-cell">
                                                {flattern_get_projects_info_from_db_($childItem->getUri(),'lastmodified')}
                                            </td>
                                        </tr>
                                    {/if}
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            {/if}
            {if $item->hasFooterHtml()}
                <div class="panel-footer">
                    {$item->getFooterHtml()}
                </div>
            {/if}
        </div>
    </div>
{/if} 