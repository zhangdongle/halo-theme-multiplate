<div class="card widget">
    <div class="card-content">
        <h3 class="menu-label">
            <@spring.message code="latestarticle"/>
        </h3>
        <#if Session["localesimple"]?exists>
            <#assign lang=Session.localesimple />
        <#else>
            <#assign lang="enus" />
        </#if>
        <@postTag method="listByTagSlug" tagSlug="${lang}" top="5">
        <#--  <@postTag method="latest" top="5">  -->
            <#list posts as post>
                <article class="media">
                    <#if post.thumbnail?? && post.thumbnail!=''>
                        <a href="${post.fullPath!}" class="media-left">
                            <p class="image is-64x64">
                                <img class="thumbnail" src="${post.thumbnail!}" alt="${post.title!}">
                            </p>
                        </a>
                    </#if>
                    <div class="media-content">
                        <div class="content">
                            <div style="padding-top: 10px;">
                                <time class="has-text-grey is-size-7 is-uppercase" datetime="${post.createTime!}">${post.createTime?string["EEE MMM d"]}</time>
                            </div>
                            <a href="${post.fullPath!}" class="title has-link-black-ter is-size-6 has-text-weight-normal">${post.title!}</a>
                        </div>
                    </div>
                </article>
            </#list>
        </@postTag>
    </div>
</div>
