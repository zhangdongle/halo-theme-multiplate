<#macro recommend post>
    <div class="col-lg-4 col-md-6">
        <article class="entry">
            <#list post.categories as category>
                <#if category_index == 0>
                    <a href="${category.fullPath!}" class="entry__meta-category">${category.name}</a>
                    <#break>
                </#if>
            </#list>
            <div class="entry__img-holder">
                <a href="${post.fullPath}">
                    <div class="thumb-container thumb-60">
                        <img data-src="${post.thumbnail}" src="${post.thumbnail}" class="entry__img lazyloaded" alt="" />
                    </div>
                </a>
            </div>
            <div class="entry__body">
                <div class="entry__header">
                    <h2 class="entry__title"><a href="${post.fullPath}">${post.title}</a></h2>
                </div>
            </div>
        </article>
    </div>
</#macro>