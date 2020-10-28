<#--<script src="//cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js"></script>-->
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<#--  
<#include "../plugin/gallery.ftl">
<#include "../plugin/outdated-browser.ftl">
<#include "../plugin/mathjax.ftl">
<#include "../plugin/back-to-top.ftl">  
-->


<#--  <script src="${theme_base!}/source/js/bundle.js"></script>  -->
<#if is_index??>
    <#--  <script src="${theme_base!}/source/js/widget_pin.js"></script>  -->
</#if>
<#if is_post??>

    <script src="${theme_base!}/source/lib/toc/toc.min.js"></script>
    <script>
        new Toc({
            wrapperId: 'post-article',
            insertId: 'toc',
            showSerial: true
        }).createToc();
    </script>
</#if>

<script>
    var url = location.href;
    var urlstatus = false;
    $(".navbar-start a").each(function () {
        if ((url + '/').indexOf($(this).attr('href')) > -1 && $(this).attr('href') != '/') {
            $(this).addClass('is-active');
            urlstatus = true;
        } else {
            $(this).removeClass('is-active');
        }
    });
    if (!urlstatus) {
        $(".navbar-start a").eq(0).addClass('is-active');
    }


</script>

<!-- jQuery Scripts -->
<#--  <script src="${theme_base!}/source/js/jquery.min.js"></script>  -->
<#if !is_index??>
    <script src="${theme_base!}/source/js/bootstrap.min.js"></script>
    <script src="${theme_base!}/source/js/easing.min.js"></script>
    <script src="${theme_base!}/source/js/jquery.marquee.min.js"></script>
    <script src="${theme_base!}/source/js/imagesloaded.pkgd.min.js"></script>
    <script src="${theme_base!}/source/js/isotope.pkgd.min.js"></script>
    <script src="${theme_base!}/source/js/owl-carousel.min.js"></script>
    <script src="${theme_base!}/source/js/modernizr.min.js"></script>
    <script src="${theme_base!}/source/js/scripts.js"></script>
</#if>

