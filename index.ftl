<#include "layout/common/navbar.ftl">
<#include "layout/common/widget.ftl">
<#include "layout/common/module.ftl">
<#include "layout/common/headlines.ftl">
<#include "layout/common/recommend.ftl">
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>${title!}</title>

    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}">
    <meta property="og:type" content="website">
    <meta property="og:title" content="${blog_title!}">
    <meta property="og:url" content="${blog_url!}">
    <meta property="og:site_name" content="${title!}">
    <meta property="og:description" content="${meta_description!}">
    <meta property="og:locale" content="zh">
    <meta property="og:image" content="${user.avatar!}">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="${title!}">
    <meta name="twitter:description" content="${meta_description!}">
    <meta name="twitter:image" content="${user.avatar!}">

    <link rel="canonical" href="${canonical!}"/>
    <link rel="alternative" href="${atom_url!}" title="${blog_title!}" type="application/atom+xml">

    <@global.head />

    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bulma@0.7.5/css/bulma.min.css">
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans&display=swap" rel="stylesheet">
    <#--        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/highlight.js@9.12.0/styles/atom-one-light.css">-->
    <style>
        body > .footer,
        body > .navbar,
        body > .section {
            opacity: 0
        }
    </style>
    
    <link rel="stylesheet"
          href="//cdn.jsdelivr.net/npm/outdatedbrowser@1.1.5/outdatedbrowser/outdatedbrowser.min.css">
    <script src="//cdn.jsdelivr.net/npm/pace-js@1.0.2/pace.min.js"></script>
    <link rel="stylesheet" href="${theme_base!}/source/css/style.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/bundle.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/back-to-top.css">
    <#--        <link rel="stylesheet" href="${theme_base!}/source/css/style.theme.css">-->
    <#include "./layout/plugin/style.theme.ftl">
    <#--  <link rel="stylesheet" href="${theme_base!}/source/css/widget_pin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/css/swiper.min.css">  -->
    <!-- Google Fonts -->
    <link href="${theme_base!}/source/css/css" rel="stylesheet" />
    <!-- Css -->
    <link rel="stylesheet" href="${theme_base!}/source/css/font-icons.css" />
    <link rel="stylesheet" href="${theme_base!}/source/css/bootstrap.min.css">
    <!-- Favicons -->
    <link rel="shortcut icon" href="http://v.bootstrapmb.com/2018/5/ysey564/img/favicon.ico" />
    <link rel="apple-touch-icon" href="http://v.bootstrapmb.com/2018/5/ysey564/img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="http://v.bootstrapmb.com/2018/5/ysey564/img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="http://v.bootstrapmb.com/2018/5/ysey564/img/apple-touch-icon-114x114.png" />
    <!-- Lazyload -->
    <script src="${theme_base!}/source/js/lazysizes.min.js"></script>
    <link rel="stylesheet" href="${theme_base!}/source/css/mystyle.css" />
    
</head>
<body class="is-3-column">
    <#include "layout/common/mobile.ftl">
        <main class="main oh" id="main">
            <!-- Header -->
            <#include "layout/common/head.ftl">
            <!-- end header -->
            <@navbar 'page' />
            <!-- Content -->
            <section class="section-wrap main-content">
              <div class="container">
                <div class="row">
                  <!-- Posts -->
                  <div class="col-lg-8 blog__content mb-30">
                    <#if Session["localesimple"]?exists>
                      <#assign lang=Session.localesimple />
                    <#else>
                      <#assign lang="enus" />
                    </#if>
                    <!-- Featured Post -->
                    <@postTag method="listByTagSlug" tagSlug="headlines,${lang}" top="1">
                      <#list posts as post>
                        <@headlines post />
                      </#list>
                    </@postTag>
                    <!-- end featured post -->
                    <!-- Recent News -->
                    <section>
                    <div class="row" style="display:flex; flex-direction:row;">
                      <div class="col-lg-8 col-sm-6">
                        <h3 class="section-title h2">
                          <@spring.message code="index.recommend" />
                        </h3>
                      </div>
                      <div class="col-xs-5 col-sm-4 col-md-6 col-lg-3" style="text-align:right;">
                        <a href="/tags/${lang}">
                          <h3 class="section-title h5">
                            <@spring.message code="index.more" /> >>
                          </h3>
                        </a>
                      </div>
                    </div>
                    
                    
                    <div class="row">
                      <@postTag method="listByTagSlug" tagSlug="recommend,${lang}" top="9">
                        <#list posts as post>
                          <@recommend post />
                        </#list>
                      </@postTag>
                    </div>
                    </section>
                    <!-- end recent news -->
                  </div>
                  <!-- end posts -->
                <!-- Sidebar -->
                <#include "./layout/common/sidebar.ftl">
                <!-- end sidebar -->
              </div>
              <!-- end row -->
              </div>
              <!-- end container -->
            </section>
            <!-- end content -->
            <!-- Videos -->
            <section class="section-wrap pt-50 bg-dark" style="text-align:center;">
              <div class="container">
                <div class="row">
                  <div class="col-lg-4">
                    <article class="entry">
                      <div class="row text-center">
                        <video src="${theme_base!}/source/images/比特币重塑未来.mp4" controls="controls">
                          您的浏览器不支持 video 标签。
                        </video>
                      </div>
                      <div class="row text-center" style="text-align:center;">
                        <span style="color:#FFFFFF;width:100%">
                          <@spring.message code="index.video1"/>
                        </span>
                      </div>
                    </article>
                    
                  </div>
                  <div class="col-lg-4 video-col--small">
                    <article class="entry">
                      <video src="${theme_base!}/source/images/区块链和去中心化最清晰的解释!.mp4" controls="controls">
                        您的浏览器不支持 video 标签。
                      </video>
                      <div class="row text-center" style="text-align:center;">
                        <span style="color:#FFFFFF;width:100%">
                          <@spring.message code="index.video2"/>
                        </span>
                      </div>
                    </article>
                  </div>
                  <div class="col-lg-4 video-col--small">
                    <article class="entry">
                      <video src="${theme_base!}/source/images/三分钟了解以太坊和智能合约.mp4" controls="controls">
                        您的浏览器不支持 video 标签。
                      </video>
                      <div class="row text-center" style="text-align:center;">
                        <span style="color:#FFFFFF;width:100%">
                          <@spring.message code="index.video3"/>
                        </span>
                      </div>
                    </article>
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-lg-4">
                    <article class="entry">
                      <video src="${theme_base!}/source/images/什么是区块链.mp4" controls="controls">
                        您的浏览器不支持 video 标签。
                      </video>
                      <div class="row text-center" style="text-align:center;">
                        <span style="color:#FFFFFF;width:100%">
                          <@spring.message code="index.video4"/>
                        </span>
                      </div>
                    </article>
                  </div>
                  <div class="col-lg-4 video-col--small">
                    <article class="entry">
                      <#--  <a href="http://v.bootstrapmb.com/2018/5/ysey564/single-post.html" class="entry__meta-category">investment</a>  -->
                      <video src="${theme_base!}/source/images/智能合约在区块链上的应用_.mp4" controls="controls">
                        您的浏览器不支持 video 标签。
                      </video>
                      <div class="row text-center" style="text-align:center;">
                        <span style="color:#FFFFFF;width:100%">
                          <@spring.message code="index.video5"/>
                        </span>
                      </div>
                    </article>
                  </div>
                </div>
              </div>
            </section>
            
            <!-- Footer -->
            <footer class="footer">
              <div class="container">
              <div class="footer__widgets">
                <div class="row">
                <div class="col-lg-8 col-md-6">
                  <div class="widget">
                  <a href="#"><img src="${blog_logo}" class="logo__img" alt="" /></a>
                  <p class="mt-20 mb-30"><@spring.message code="index.footer"/></p>
                  </div>
                </div>
                <div class="col-lg-3 col-md-6">
                  <div class="widget widget_nav_menu">
                    <h4 class="widget-title"><@spring.message code="index.contact"/></h4>
                    <div class="row">
                        <div class="col-lg-6">
                          <ul>
                            <li><a href="#"><@spring.message code="contact.qq"/></a></li>
                            <li><a href="#">123456789</a></li>
                          <ul>
                        </div>
                        <div class="col-lg-6">
                          <div>
                            <img src="${theme_base!}/source/images/qq.jpg"/>
                          </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                          <ul>
                            <li><a href="#"><@spring.message code="contact.wechat"/></a></li>
                            <li><a href="#">123456789</a></li>
                          <ul>
                        </div>
                        <div class="col-lg-6">
                          <div>
                            <img src="${theme_base!}/source/images/wechat.jpg"/>
                          </div>
                        </div>
                    </div>
                 
                  </div>
                </div>
                </div>
              </div>
              </div>
              <!-- end container -->
              <div class="footer__bottom">
              <div class="container text-center">
                <#--  <span class="copyright"> &copy; 2018 CryptoMag | Made by <a href="#">DeoThemes</a></span>  -->
              </div>
              </div>
              <!-- end bottom footer -->
            </footer>
            <!-- end footer -->

            <div id="back-to-top" class="">
              <a href="/#top" aria-label="Go to top"><i class="ui-arrow-up"></i></a>
            </div>
        </main>
</div>
<!-- jQuery Scripts -->
  <script src="${theme_base!}/source/js/jquery.min.js"></script>
  <script src="${theme_base!}/source/js/bootstrap.min.js"></script>
  <script src="${theme_base!}/source/js/easing.min.js"></script>
  <script src="${theme_base!}/source/js/jquery.marquee.min.js"></script>
  <script src="${theme_base!}/source/js/imagesloaded.pkgd.min.js"></script>
  <script src="${theme_base!}/source/js/isotope.pkgd.min.js"></script>
  <script src="${theme_base!}/source/js/owl-carousel.min.js"></script>
  <script src="${theme_base!}/source/js/modernizr.min.js"></script>
  <script src="${theme_base!}/source/js/scripts.js"></script>
<#include "layout/common/scripts.ftl">
<#--  <#include "search/local.ftl">  -->
</body>
</html>