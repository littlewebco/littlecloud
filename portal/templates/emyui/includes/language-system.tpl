<div class="header-lang dropdown show position-static coodiv-z-index-1">
    <a class="coodiv-text-11 btn-header-lang position-relative" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	<i class="feather icon-globe mr-1"></i>
	<span class="text-uppercase">{if $activeLocale.countryCode === 'GB'}us{else}{$activeLocale.countryCode|lower}{/if}<small class="header-lang-currency"> - {$activeCurrency.code}</small></span> 
	</a>

    <div class="header-lang-container dropdown-menu px-lg-15 py-lg-15 py-8 px-8 overflow-scroll-y" aria-labelledby="dropdownMenuLink">
        <div class="row justify-content-between align-items-center mb-5">
            <div class="col-lg-4 col-md-8">
                <form action="">
                    <div class="form-group position-relative mb-0">
                        <input class="form-control coodiv-text-9 border min-height-px-64 rounded-20" type="text" onkeyup="FilterLanguageHeader()" id="lang-search-input" placeholder="Please entree your language" />
                        <button class="btn btn-warning mr-2 coodiv-abs-cr min-height-px-50 w-100 w-md-auto rounded-20 icon-btn btn-auto-min-width"><i class="feather icon-search"></i></button>
                    </div>
                </form>
            </div>
			
            <div class="col-lg-4 text-right">
                <a href="#" class="activecurrency-header-btn btn btn-info white-text coodiv-text-12 font-weight-light rounded-20 btn-auto-min-width mt-md-0 mt-5" data-toggle="modal" data-target="#modalChooseLanguage">
				{$activeCurrency.prefix} {$activeCurrency.code}
				</a>
            </div>
			
        </div>
        <div class="white-bg border rounded-20 px-10 py-10 lang-box-container">
		
		
            <div class="lang-box-title position-relative coodiv-text-9 d-block color-blackish-blue font-weight-bold mb-7"><span>{lang key="chooselanguage"}</span></div>
            <div id="lang-box-ul" class="row justify-content-start mb-10">
			{foreach $locales as $locale}
			<li class="col-md-4 col-lg-3">
                <a href="{$currentpagelinkback}language={$locale.language}" class="item lang-box-item coodiv-text-9 font-weight-bold d-flex align-items-center {if $language == $locale.language} active{/if}" data-value="{$locale.language}">
				<img src="{$WEB_ROOT}/templates/{$template}/img/flags/{$locale.language}.svg" class="headerflags" alt="{$locale.localisedName}">
				{$locale.localisedName} <small>{$locale.language}</small>
                </a>
			</li>
            {/foreach}
            </div>

        </div>
    </div>
</div>
