{foreach $navbar as $item}
    <li menuItemName="{$item->getName()}" class="d-block{if $item@first} no-collapse{/if}{if $item->hasChildren()} dropdown no-collapse{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">
        <a class="{if !isset($rightDrop) || !$rightDrop}pr-4{/if}{if $item->hasChildren()} dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#"{else}" href="{$item->getUri()}"{/if}{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
            {$item->getLabel()}
            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
        </a>
         <ul class="dropdown-menu{if isset($rightDrop) && $rightDrop} dropdown-menu-right{/if}">
         	 <li menuItemName="My Dashboard" class="dropdown-item" id="" ><a href="clientarea.php" class="dropdown-item px-2 py-0">My Dashboard</a></li>
             <li menuItemName="My Invoices" class="dropdown-item" id=""><a href="clientarea.php?action=invoice" class="dropdown-item px-2 py-0">My Invoices</a></li>
             <li menuItemName="My Tickets" class="dropdown-item" id=""><a href="supporttickets.php" class="dropdown-item px-2 py-0">My Tickets</a></li>
             <li menuItemName="My Quotes" class="dropdown-item" id=""><a href="clientarea.php?action=quotes" class="dropdown-item px-2 py-0">My Quotes</a></li>
             <li menuItemName="My Plans & Services" class="dropdown-item" id=""><a href="clientarea.php?action=services" class="dropdown-item px-2 py-0">My Plans & Services</a></li>
             <li menuItemName="My Projects" class="dropdown-item" id=""><a href="index.php?m=project_management" class="dropdown-item px-2 py-0">My Projects</a></li>
             <li menuItemName="My Domains" class="dropdown-item" id=""><a href="clientarea.php?action=domains" class="dropdown-item px-2 py-0">My Domains</a></li>
             
             
             
         </ul>
<!--        {if $item->hasChildren()}
            <ul class="dropdown-menu{if isset($rightDrop) && $rightDrop} dropdown-menu-right{/if}">
            {foreach $item->getChildren() as $childItem}
                {if $childItem->getClass() && in_array($childItem->getClass(), ['dropdown-divider', 'nav-divider'])}
                    <div class="dropdown-divider"></div>
                {else}
                    <li menuItemName="{$childItem->getName()}" class="dropdown-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                        <a href="{$childItem->getUri()}" class="dropdown-item px-2 py-0"{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                            {$childItem->getLabel()}
                            {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                        </a>
                    </li>
                {/if}
            {/foreach}
            </ul>
        {/if}-->
    </li>
{/foreach}
{if !isset($rightDrop) || !$rightDrop}
    <li class="d-none dropdown collapsable-dropdown">
        <a class="dropdown-toggle" href="#" id="navbarDropdownMenu" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            {lang key='more'}
        </a>
        <ul class="collapsable-dropdown-menu dropdown-menu" aria-labelledby="navbarDropdownMenu">
        </ul>
    </li>
{/if}
