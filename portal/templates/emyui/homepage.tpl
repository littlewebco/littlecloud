{if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}

<div class="row justify-content-center mt-n10">
    <div class="col-xl-7 col-lg-8 col-md-10">
        <div class="section-title text-center mb-11 mb-lg-10">
            <h2 class="coodiv-text-4 mb-6">{lang key='clientHomePanels.productsAndServices'}</h2>
            <p class="coodiv-text-8 px-lg-4">{lang key='cartbrowse'}</p>
        </div>
    </div>
</div>

<div class="row justify-content-center">
    <div class="col-md-4">
        <div class="border shadow-2 rounded-10 mb-4">
            <div class="px-6 py-8 text-center">
                <i class="feather icon-server servicesboxicon one"></i>
                <h3 class="coodiv-text-8">
                {lang key='navservicesorder'}
                </h3>
                <p class="coodiv-text-10 mb-7">{lang key='permissions.descriptions.products'}</p>
                <a href="{$WEB_ROOT}/cart.php" class="btn btn-warning coodiv-text-10 d-block w-100">
                    {lang key='browseProducts'}
                </a>
            </div>
        </div>
    </div>

    {if $registerdomainenabled}
    <div class="col-md-4">
        <div class="border shadow-2 rounded-10 mb-4">
            <div class="px-6 py-8 text-center">
                <i class="feather icon-globe servicesboxicon two"></i>
                <h3 class="coodiv-text-8">
                    {lang key='orderregisterdomain'}
                </h3>
                <p class="coodiv-text-10 mb-7">{lang key='secureYourDomain'}</p>
                <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="btn btn-warning coodiv-text-10 d-block w-100">
                    {lang key='navdomainsearch'}
                </a>
            </div>
        </div>
    </div>
    {/if} {if $transferdomainenabled}
    <div class="col-md-4">
        <div class="border shadow-2 rounded-10 mb-4">
            <div class="px-6 py-8 text-center">
                <i class="feather icon-repeat servicesboxicon tree"></i>
                <h3 class="coodiv-text-8">
                    {lang key='transferYourDomain'}
                </h3>
                <p class="coodiv-text-10 mb-7">{lang key='transferExtend'}</p>
                <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="btn btn-warning coodiv-text-10 d-block w-100">
                    {lang key='transferYourDomain'}
                </a>
            </div>
        </div>
    </div>
    {/if}
</div>
{/if}

<div class="row justify-content-center mt-20">
    <div class="col-xl-7 col-lg-8 col-md-10">
        <div class="section-title text-center mb-11 mb-lg-10">
            <h2 class="coodiv-text-4 mb-6">{lang key='clientHomePanels.productsAndServices'}</h2>
            <p class="coodiv-text-8 px-lg-4">One of the largest wholesale Domain Reseller programs, offering over 350 domain extensions.</p>
        </div>
    </div>
</div>

<div class="row my-5 px-lg-0 px-5">
    <div class="homapage-conf-boxes col-12 d-flex justify-content-between align-items-center border mb-5 px-7 py-6 rounded-10">
        <div>
            <i class="feather icon-bell"></i>
            <span class="coodiv-text-9 font-weight-bold color-blackish-blue">
                {lang key='announcementstitle'} <small class="coodiv-text-11 font-weight-light color-blackish-blue-opacity">{lang key='announcementsdescription'}</small>
            </span>
        </div>
        <a class="actiontopage" href="{routePath('announcement-index')}"><i class="feather icon-arrow-right"></i></a>
    </div>

    <div class="homapage-conf-boxes col-12 d-flex justify-content-between align-items-center border mb-5 px-7 py-6 rounded-10">
        <div>
            <i class="feather icon-server"></i>
            <span class="coodiv-text-9 font-weight-bold color-blackish-blue">
                {lang key='networkstatustitle'} <small class="coodiv-text-11 font-weight-light color-blackish-blue-opacity">{lang key='networkstatusintro'}</small>
            </span>
        </div>
        <a class="actiontopage" href="serverstatus.php"><i class="feather icon-arrow-right"></i></a>
    </div>

    <div class="homapage-conf-boxes col-12 d-flex justify-content-between align-items-center border mb-5 px-7 py-6 rounded-10">
        <div>
            <i class="feather icon-book"></i>
            <span class="coodiv-text-9 font-weight-bold color-blackish-blue">
                {lang key='knowledgebasetitle'} <small class="coodiv-text-11 font-weight-light color-blackish-blue-opacity">{lang key='clientHomeSearchKb'}</small>
            </span>
        </div>
        <a class="actiontopage" href="{routePath('knowledgebase-index')}"><i class="feather icon-arrow-right"></i></a>
    </div>

    <div class="homapage-conf-boxes col-12 d-flex justify-content-between align-items-center border mb-5 px-7 py-6 rounded-10">
        <div>
            <i class="feather icon-download"></i>
            <span class="coodiv-text-9 font-weight-bold color-blackish-blue">
                {lang key='downloadstitle'} <small class="coodiv-text-11 font-weight-light color-blackish-blue-opacity">{lang key='downloadsdescription'}</small>
            </span>
        </div>
        <a class="actiontopage" href="{routePath('download-index')}"><i class="feather icon-arrow-right"></i></a>
    </div>

    <div class="homapage-conf-boxes col-12 d-flex justify-content-between align-items-center border mb-5 px-7 py-6 rounded-10">
        <div>
            <i class="feather icon-life-buoy"></i>
            <span class="coodiv-text-9 font-weight-bold color-blackish-blue">
                {lang key='homepage.submitTicket'} <small class="coodiv-text-11 font-weight-light color-blackish-blue-opacity">{lang key='subaccountpermstickets'}</small>
            </span>
        </div>
        <a class="actiontopage" href="{$WEB_ROOT}/submitticket.php"><i class="feather icon-arrow-right"></i></a>
    </div>
</div>

<div class="row justify-content-center mt-9 mb-15">
    <div class="col-6 col-md-4 col-lg pl-lg-0">
        <a href="clientarea.php" class="featuresbox-4 min-icon media py-6 aos-init aos-animate" data-aos="fade-left" data-aos-duration="800" data-aos-once="true">
            <div class="box-icon mr-6">
                <img src="{$WEB_ROOT}/templates/{$template}/img/icons/1.png" alt="" />
            </div>

            <div class="box-body">
                <h3 class="title coodiv-text-10 mb-1">{lang key='homepage.yourAccount'}</h3>
                <p class="coodiv-text-11 mb-0 pr-xl-6">{lang key='manageyouraccount'}</p>
            </div>
        </a>
    </div>

    <div class="col-6 col-md-4 col-lg">
        <a href="clientarea.php?action=services" class="featuresbox-4 min-icon media py-6 aos-init aos-animate" data-aos="fade-left" data-aos-duration="800" data-aos-once="true">
            <div class="box-icon mr-6">
                <img src="{$WEB_ROOT}/templates/{$template}/img/icons/2.png" alt="" />
            </div>

            <div class="box-body">
                <h3 class="title coodiv-text-10 mb-1">{lang key='homepage.manageServices'}</h3>
                <p class="coodiv-text-11 mb-0 pr-xl-6">{lang key='cartbrowse'}</p>
            </div>
        </a>
    </div>

    {if $registerdomainenabled || $transferdomainenabled || $numberOfDomains}
    <div class="col-6 col-md-4 col-lg">
        <a href="clientarea.php?action=domains" class="featuresbox-4 min-icon media py-6 aos-init aos-animate" data-aos="fade-left" data-aos-duration="800" data-aos-once="true">
            <div class="box-icon mr-6">
                <img src="{$WEB_ROOT}/templates/{$template}/img/icons/3.png" alt="" />
            </div>

            <div class="box-body">
                <h3 class="title coodiv-text-10 mb-1">{lang key='homepage.manageDomains'}</h3>
                <p class="coodiv-text-11 mb-0 pr-xl-6">{lang key='cartdomainsconfig'}</p>
            </div>
        </a>
    </div>
    {/if}

    <div class="col-6 col-md-4 col-lg">
        <a href="supporttickets.php" class="featuresbox-4 min-icon media py-6 aos-init aos-animate" data-aos="fade-left" data-aos-duration="800" data-aos-once="true">
            <div class="box-icon mr-6">
                <img src="{$WEB_ROOT}/templates/{$template}/img/icons/4.png" alt="" />
            </div>

            <div class="box-body">
                <h3 class="title coodiv-text-10 mb-1">{lang key='homepage.supportRequests'}</h3>
                <p class="coodiv-text-11 mb-0 pr-xl-6">{lang key='orderpaymentmethod'}</p>
            </div>
        </a>
    </div>

    <div class="col-6 col-md-4 col-lg">
        <a href="clientarea.php?action=masspay&all=true" class="featuresbox-4 min-icon media py-6 aos-init aos-animate" data-aos="fade-left" data-aos-duration="800" data-aos-once="true">
            <div class="box-icon mr-6">
                <img src="{$WEB_ROOT}/templates/{$template}/img/icons/5.png" alt="" />
            </div>

            <div class="box-body">
                <h3 class="title coodiv-text-10 mb-1">{lang key='homepage.makeAPayment'}</h3>
                <p class="coodiv-text-11 mb-0 pr-xl-6">{lang key='manageyouraccount'}</p>
            </div>
        </a>
    </div>
</div>
