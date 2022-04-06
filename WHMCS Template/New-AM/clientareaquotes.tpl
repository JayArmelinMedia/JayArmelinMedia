
<div class="subheadingbox">
    <div class="Inner-box">
        {if $LANG.quotestitle}<h2><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path d="M256 0v128h128L256 0zM288 256H96v64h192V256zM224 128L224 0H48C21.49 0 0 21.49 0 48v416C0 490.5 21.49 512 48 512h288c26.51 0 48-21.49 48-48V160h-127.1C238.3 160 224 145.7 224 128zM64 72C64 67.63 67.63 64 72 64h80C156.4 64 160 67.63 160 72v16C160 92.38 156.4 96 152 96h-80C67.63 96 64 92.38 64 88V72zM64 136C64 131.6 67.63 128 72 128h80C156.4 128 160 131.6 160 136v16C160 156.4 156.4 160 152 160h-80C67.63 160 64 156.4 64 152V136zM320 440c0 4.375-3.625 8-8 8h-80C227.6 448 224 444.4 224 440v-16c0-4.375 3.625-8 8-8h80c4.375 0 8 3.625 8 8V440zM320 240v96c0 8.875-7.125 16-16 16h-224C71.13 352 64 344.9 64 336v-96C64 231.1 71.13 224 80 224h224C312.9 224 320 231.1 320 240z"></path></svg>{$LANG.quotestitle}</h2>{/if}
        {if $LANG.quotesintro}<p>{$LANG.quotesintro}</p>{/if}
    </div>
</div>

{include file="$template/includes/tablelist.tpl" tableName="QuotesList"  noSortColumns="5" filterColumn="4"}

<script>
    jQuery(document).ready(function() {
        var table = jQuery('#tableQuotesList').show().DataTable();

        {if $orderby == 'id'}
            table.order(0, '{$sort}');
        {elseif $orderby == 'date'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'validuntil'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'stage'}
            table.order(4, '{$sort}');
        {/if}
        table.draw();
        jQuery('#tableLoading').hide();
    });
</script>

<div class="Left-side My_quotes">
    <div class="table-container clearfix aaa">
        <table id="tableQuotesList" class="table table-list w-hidden">
            <thead>
                <tr>
                    <th>{lang key='quotenumber'}</th>
                    <th>{lang key='quotesubject'}</th>
                    <th>{lang key='quotedatecreated'}</th>
                    <th>{lang key='quotevaliduntil'}</th>
                    <th>{lang key='quotestage'}</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
                {foreach $quotes as $quote}
                    <tr onclick="clickableSafeRedirect(event, 'viewquote.php?id={$quote.id}', true)">
                        <td>{$quote.id}</td>
                        <td>{$quote.subject}</td>
                        <td><span class="w-hidden">{$quote.normalisedDateCreated}</span>{$quote.datecreated}</td>
                        <td><span class="w-hidden">{$quote.normalisedValidUntil}</span>{$quote.validuntil}</td>
                        <td><span class="label status status-{$quote.stageClass}">{$quote.stage}</span></td>
                        <td class="text-center">
                            <form method="post" action="dl.php">
                                <input type="hidden" name="type" value="q" />
                                <input type="hidden" name="id" value="{$quote.id}" />
                                <button type="submit" class="btn btn-default btn-sm"><i class="fas fa-download"></i> {lang key='quotedownload'}</button>
                            </form>
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