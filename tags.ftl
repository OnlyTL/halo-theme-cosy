<#include "module/macro.ftl">
<@layout title="${settings.tags_title}- ${blog_title!}">
    <div id="top" class="row site">
        <#--  中间  -->
        <div class="sm-12 md-8 col">
            <div class="paper">
            <#--  头部  -->
                <div class="demo-title">
                    <div class="row flex-center">
                        <div class="text-center">
                            <h1>${settings.tags_title}</h1>
                            <#if (settings.hitokoto)?? && settings.hitokoto?c == 'true'>
                                <h5 class="card-subtitle" id="hitokoto_text"></h3>   
                            <#elseif (settings.tags_description)?? && settings.tags_description?trim != ''>
                                <h5 class="card-subtitle">${settings.tags_description}</h3>
                            </#if>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <@tagTag method="list">
                        <#if tags?? && tags?size gt 0>
                            <#list tags as tag>
                                <a class="noline-a badge secondary margin-small" data-ajax  href="${tag.fullPath!}">
                                        <span class="name">🔖&nbsp;${tag.name}</span>
                                        <span>&nbsp;${tag.postCount}</span>
                                    </a>
                            </#list>
                        </#if>
                    </@tagTag>
                </div>

                <!--评论  TODO  为什么不显示评论呢？？？-->
                <#include "module/comment.ftl">
            </div>
        </div>
        
        <#include "module/left_page.ftl">
        <#include "module/hitokoto.ftl">
  </div>
</@layout>