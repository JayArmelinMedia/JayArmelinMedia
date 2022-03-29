{foreach $socialAccounts as $account}
    <li class="list-inline-item">
        <span
            class="flex items-center justify-center w-8 h-8 bg-gray-200 rounded-full hover:bg-gray-100 dark:bg-gray-800 dark:hover-bg-gray-700">
            <a class="text-white dark:text-black" href="{$account->getUrl()}" target="_blank">
                <i class="{$account->getFontAwesomeIcon()}"></i>
            </a>
        </span>
    </li>
{/foreach}