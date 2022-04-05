{include file="$template/includes/tablelist.tpl" tableName="ServicesList" filterColumn="4" noSortColumns="0"}

<script>
    jQuery(document).ready(function() {
        var table = jQuery('#tableServicesList').show().DataTable();

        {if $orderby == 'product'}
            table.order([1, '{$sort}'], [4, 'asc']);
        {elseif $orderby == 'amount' || $orderby == 'billingcycle'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'nextduedate'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'domainstatus'}
            table.order(4, '{$sort}');
        {/if}
        table.draw();
        jQuery('#tableLoading').hide();
    });
</script>

<div class="Left-side My_plans_services">
    <div class="table-container clearfix">
        <table id="tableServicesList" class="table table-list w-hidden">
            <thead>
                <tr>
                    <th></th>
                    <th>{lang key='orderproduct'}</th>
                    <th>{lang key='clientareaaddonpricing'}</th>
                    <th>{lang key='clientareahostingnextduedate'}</th>
                    <th>{lang key='clientareastatus'}</th>
                </tr>
            </thead>
            <tbody>
                {foreach $services as $service}
                    <tr onclick="clickableSafeRedirect(event, 'clientarea.php?action=productdetails&amp;id={$service.id}', false)">
                        <td class="py-0 text-center{if $service.sslStatus} ssl-info{/if}" data-element-id="{$service.id}" data-type="service"{if $service.domain} data-domain="{$service.domain}"{/if}>
                            {if $service.sslStatus}
                                <!-- <img src="{$service.sslStatus->getImagePath()}" data-toggle="tooltip" title="{$service.sslStatus->getTooltipContent()}" class="{$service.sslStatus->getClass()}" width="25"> -->
                                <p><i class="fa-solid fa-lock-keyhole"></i></p>
                            {elseif !$service.isActive}
                                <!-- <img src="{$BASE_PATH_IMG}/ssl/ssl-inactive-domain.png" data-toggle="tooltip" title="{lang key='sslState.sslInactiveService'}" width="25"> -->
                                <p><i class="fa-solid fa-unlock-keyhole"></i></p>
                            {/if}
                        </td>
                        <td><p><strong>{$service.product}</strong>{if $service.domain}<br /><a href="http://{$service.domain}" target="_blank">{$service.domain}</a>{else}<br />-{/if}</p></td>
                        <td class="text-center" data-order="{$service.amountnum}">
                            <p>{$service.amount} <small class="text-muted">{$service.billingcycle}</small></p>
                        </td>
                        <td class="text-center">
                            <p><span class="w-hidden">{$service.normalisedNextDueDate}</span>{$service.nextduedate}</p>
                        </td>
                        <td class="text-center">
                            <p><span class="label status status-{$service.status|strtolower}">{$service.statustext}</span></p>
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
        <div class="text-center" id="tableLoading">
            <p><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</p>
        </div>
    </div>
</div>