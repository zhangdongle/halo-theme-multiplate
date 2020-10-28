<#include "../widget/language.ftl"/>
<#import "../../spring.ftl" as spring>
<#macro navbar layout>
<style>
@media (min-width:0px) {
    .section {
        margin-top:10 px;
    }
    .d-sm-none {
        display: none!important
    }
    .d-sm-inline {
        display: inline!important
    }
    .d-sm-inline-block {
        display: inline-block!important
    }
    .d-sm-block {
        display: block!important
    }
    .d-sm-table {
        display: table!important
    }
    .d-sm-table-row {
        display: table-row!important
    }
    .d-sm-table-cell {
        display: table-cell!important
    }
    .d-sm-flex {
        display: -webkit-box!important;
        display: -ms-flexbox!important;
        display: flex!important
    }
    .d-sm-inline-flex {
        display: -webkit-inline-box!important;
        display: -ms-inline-flexbox!important;
        display: inline-flex!important
    }
}

@media (min-width:768px) {
    .d-md-none {
        display: none!important
    }
    .d-md-inline {
        display: inline!important
    }
    .d-md-inline-block {
        display: inline-block!important
    }
    .d-md-block {
        display: block!important
    }
    .d-md-table {
        display: table!important
    }
    .d-md-table-row {
        display: table-row!important
    }
    .d-md-table-cell {
        display: table-cell!important
    }
    .d-md-flex {
        display: -webkit-box!important;
        display: -ms-flexbox!important;
        display: flex!important
    }
    .d-md-inline-flex {
        display: -webkit-inline-box!important;
        display: -ms-inline-flexbox!important;
        display: inline-flex!important
    }
}

@media (min-width:992px) {
    .d-lg-none {
        display: none!important
    }
    .d-lg-inline {
        display: inline!important
    }
    .d-lg-inline-block {
        display: inline-block!important
    }
    .d-lg-block {
        display: block!important
    }
    .d-lg-table {
        display: table!important
    }
    .d-lg-table-row {
        display: table-row!important
    }
    .d-lg-table-cell {
        display: table-cell!important
    }
    .d-lg-flex {
        display: -webkit-box!important;
        display: -ms-flexbox!important;
        display: flex!important
    }
    .d-lg-inline-flex {
        display: -webkit-inline-box!important;
        display: -ms-inline-flexbox!important;
        display: inline-flex!important
    }
}

@media (min-width:1200px) {
    .d-xl-none {
        display: none!important
    }
    .d-xl-inline {
        display: inline!important
    }
    .d-xl-inline-block {
        display: inline-block!important
    }
    .d-xl-block {
        display: block!important
    }
    .d-xl-table {
        display: table!important
    }
    .d-xl-table-row {
        display: table-row!important
    }
    .d-xl-table-cell {
        display: table-cell!important
    }
    .d-xl-flex {
        display: -webkit-box!important;
        display: -ms-flexbox!important;
        display: flex!important
    }
    .d-xl-inline-flex {
        display: -webkit-inline-box!important;
        display: -ms-inline-flexbox!important;
        display: inline-flex!important
    }
}
</style>
<!-- Navigation -->
<header class="nav d-lg-block d-none d-sm-none">
    <div class="nav__holder">
        <div class="container relative">
            <div class="flex-parent">
                <!-- Search form -->
                <form role="search" method="get" class="nav__search-form">
                <input type="search" class="nav__search-input" id="nav__search-input" placeholder="Type &amp; Hit Enter" />
                    <i class="ui-close nav__search-close" id="nav__search-close"></i>
                </form>
                <!-- Nav-wrap -->
                <@menuTag method="tree">
                    <#if menus?? && menus?size gt 0>
                        <#if settings.tree_menu_enable!false>
                            <nav class="flex-child nav__wrap d-none d-lg-block">
                                <ul class="nav__menu">
                                    <#list menus?sort_by('priority') as menu>
                                        <#if menu.children?? && menu.children?size gt 0>
                                            <#if menu_index == 0>
                                                <li class="active">    
                                            <#else>
                                                <li class="nav__dropdown">
                                            </#if>
                                                <a href="${menu.url}">${menu.name!}</a>
                                                <#if menu.children?? && menu.children?size gt 0>
                                                    <ul class="nav__dropdown-menu">
                                                        <#list menu.children as child>
                                                            <li>
                                                                <a href="${child.url!}"><@spring.message code="menu.${child.name!}"/></a>
                                                            </li>
                                                        </#list>
                                                    </ul>
                                                </#if>
                                                </li>
                                        <#else>
                                            <a class="navbar-item" href="${menu.url}" target="${menu.target!}">
                                                <@spring.message code="menu.${menu.name!}"/>
                                            </a>
                                        </#if>
                                    </#list>
                                </ul>
                            </nav>
                        <#else>
                            <#if menus?? && menus?size gt 0>
                                <ul class="nav__menu">
                                    <#list menus?sort_by('priority') as menu>
                                        <#if menu_index == 0>
                                            <li class="active">    
                                        <#else>
                                            <li class="nav__dropdown">
                                        </#if>
                                                <a href="${menu.url!}" target="${menu.target!}"><@spring.message code="menu.${menu.name!}"/></a>
                                            </li>
                                    </#list>
                                </ul>
                            </#if>
                        </#if>
                    </#if>
                </@menuTag>
                <!-- end menu -->
                <!-- end nav-wrap -->
                <!-- Nav Right -->
                <div class="nav__right nav--align-right d-none d-lg-flex">
                    <@languageTag/>
                </div>
            <!-- end nav right -->
            </div>
        <!-- end flex-parent -->
        </div>
        <!-- end container -->
    </div>
</header>
<!-- end navigation -->
</#macro>