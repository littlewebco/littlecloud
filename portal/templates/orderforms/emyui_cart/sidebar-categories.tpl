{foreach $secondarySidebar as $panel}
        {if $panel->hasChildren()}
                {foreach $panel->getChildren() as $child}
                    {if $child->getUri()}
                        <a menuItemName="{$child->getName()}" href="{$child->getUri()}" class="nav-link {if $child->isDisabled()} disabled{/if}{if $child->getClass()} {$child->getClass()}{/if}{if $child->isCurrent()} active{/if}"{if $child->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $child->getAttribute('target')} target="{$child->getAttribute('target')}"{/if} id="{$child->getId()}">
                            {$child->getLabel()}

                            {if $child->hasBadge()}
                                &nbsp;<span class="badge">{$child->getBadge()}</span>
                            {/if}
                        </a>
                    {else}
                        <div menuItemName="{$child->getName()}" class="list-group-item{if $child->getClass()} {$child->getClass()}{/if}" id="{$child->getId()}">
                            {if $child->hasIcon()}
                                <i class="{$child->getIcon()}"></i>&nbsp;
                            {/if}

                            {$child->getLabel()}

                            {if $child->hasBadge()}
                                &nbsp;<span class="badge">{$child->getBadge()}</span>
                            {/if}
                        </div>
                    {/if}
                {/foreach}
        {/if}

{/foreach}
