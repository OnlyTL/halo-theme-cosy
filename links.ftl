<#include "module/macro.ftl">
<@layout title="${settings.links_title}- ${blog_title!}">
    <div id="top" class="row site">
        <#--  中间  -->
        <div class="sm-12 md-8 col">
            <div class="paper">
                <#--  头部  -->
                <div class="demo-title">
                    <div class="row flex-center">
                        <div class="text-center">
                            <h1>${settings.links_title}</h1>
                            <#if (settings.hitokoto)?? && settings.hitokoto?c == 'true'>
                                <h5 class="card-subtitle" id="hitokoto_text"></h3>   
                            <#elseif (settings.links_description)?? && settings.links_description?trim != ''>
                                <h5 class="card-subtitle">${settings.links_description}</h3>
                            </#if>
                        </div>
                    </div>
                </div>

                <div class="row flex-center">
                    <@linkTag method="list">
                        <#list links as link>
                            <a class="paper-btn" popover-top="${link.description}" href="${link.url!}" target="_blank">
                                <img src="${link.logo!}" width="40px" height="40px">
                                <h5>${link.name}</h5>
                            </a>
                        </#list>
                    </@linkTag>
                </div>
                
                <!--评论  TODO  为什么不显示评论呢？？？-->
                <#include "module/comment.ftl">
            </div>
        </div>
        <#include "module/left_page.ftl">
        <#include "module/hitokoto.ftl">
    </div>
    
</@layout>