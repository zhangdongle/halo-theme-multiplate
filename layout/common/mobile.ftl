<!-- Preloader -->
  <div class="loader-mask" style="display: none;">
   <div class="loader" style="display: none;">
    <div></div>
   </div>
  </div>
  <!-- Bg Overlay -->
  <div class="content-overlay"></div>
  <!-- Subscribe Modal -->
  <div class="modal fade" id="subscribe-modal" tabindex="-1" role="dialog" aria-labelledby="subscribeModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
    <div class="modal-content">
     <div class="modal-header">
      <h5 class="modal-title" id="subscribeModalLabel">Don't miss the latest news from the cryptocurrency world</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
     </div>
     <div class="modal-body">
      <form class="mc4wp-form" method="post">
       <div class="mc4wp-form-fields">
        <div class="form-group">
         <i class="mc4wp-form-icon ui-email"></i>
         <input type="email" name="EMAIL" placeholder="Your email" required="" />
        </div>
        <input type="submit" class="btn btn-md btn-color btn-block" value="Subscribe" />
       </div>
      </form>
     </div>
    </div>
   </div>
  </div>
  <!-- end subscribe modal -->
<!-- Sidenav -->
<header class="sidenav" id="sidenav">
    <!-- close -->
    <div class="sidenav__close">
        <button class="sidenav__close-button" id="sidenav__close-button" aria-label="close sidenav"><i class="ui-close sidenav__close-icon"></i></button>
    </div>
    <!-- Nav-wrap -->
    <@menuTag method="tree">
        <#if menus?? && menus?size gt 0>
            <nav class="sidenav__menu-container">
                <#if settings.tree_menu_enable!false>
                    <ul class="sidenav__menu" role="menubar">
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
                <#else>
                    <#if menus?? && menus?size gt 0>
                        <ul class="sidenav__menu" role="menubar">
                            <#list menus?sort_by('priority') as menu>
                                <#if menu_index == 0>
                                    <li class="active">    
                                <#else>
                                    <li>
                                </#if>
                                        <a class="sidenav__menu-link" href="${menu.url!}" target="${menu.target!}"><@spring.message code="menu.${menu.name!}"/></a>
                                    </li>
                            </#list>
                        </ul>
                    </#if>
                </#if>
            </nav>
        </#if>
    </@menuTag>
    <div class="" style="margin-left:20px;">
        <div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
            <a class="dropdown-item" href="/locale/en_US">English</a>
            <a class="dropdown-item" href="/locale/zh_CN">简体中文</a>
            <a class="dropdown-item" href="/locale/zh_TW">中文繁体</a>
        </div>
    </div>
   <#--  <div class="socials sidenav__socials">
    <a class="social social--small social-facebook" href="http://v.bootstrapmb.com/2018/5/ysey564/#" target="_blank" aria-label="facebook"><i class="ui-facebook"></i></a>
    <a class="social social--small social-twitter" href="http://v.bootstrapmb.com/2018/5/ysey564/#" target="_blank" aria-label="twitter"><i class="ui-twitter"></i></a>
    <a class="social social--small social-google-plus" href="http://v.bootstrapmb.com/2018/5/ysey564/#" target="_blank" aria-label="google"><i class="ui-google"></i></a>
    <a class="social social--small social-youtube" href="http://v.bootstrapmb.com/2018/5/ysey564/#" target="_blank" aria-label="youtube"><i class="ui-youtube"></i></a>
    <a class="social social--small social-instagram" href="http://v.bootstrapmb.com/2018/5/ysey564/#" target="_blank" aria-label="instagram"><i class="ui-instagram"></i></a>
   </div>  -->
</header>
<!-- end sidenav -->