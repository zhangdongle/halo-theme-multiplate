<#macro languageTag>
<#assign languages={"en_US":"English","zh_CN":"简体中文","zh_TW":"中文繁体"} />

<div class="navbar-item has-dropdown is-hoverable">
    <div style="width:120px;">
        <a  href="#">
            <#if Session["locale"]?exists>
                <span>${languages[Session.locale]}</span>
            <#else>
                <span>${languages['en_US']}</span>
            </#if>
        </a>
    </div>
    <div class="google-auto-placed" style="width: 100%; height: auto; clear: both; text-align: center;">
        <ins data-ad-format="auto" class="adsbygoogle adsbygoogle-noablate" data-ad-client="ca-pub-9312750344484857" data-adsbygoogle-status="done" style="display: block; margin: 10px auto; background-color: transparent;"></ins>
    </div>
    <div id="moreDropdown" class="navbar-dropdown">
        <hr class="navbar-divider is-hidden-widescreen">
        <a class="dropdown-item" href="/locale/en_US">English</a>
        <#--  <a class="dropdown-item" href="/locale/zh_CN">简体中文</a>  -->
        <a class="dropdown-item" href="/locale/zh_TW">中文繁体</a>
        <hr class="navbar-divider ">
    </div>
</div>

<#--  <div class="container">
    <div class="dropdown">
        <a data-toggle="dropdown" href="#">
            
        </a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a class="dropdown-item" href="/locale/en_US">English</a></li>
            <li><a class="dropdown-item" href="/locale/zh_CN">简体中文</a></li>
            <li><a class="dropdown-item" href="/locale/zh_TW">中文繁体</a></li>
        </ul>
    </div>
</div>  -->
</#macro>