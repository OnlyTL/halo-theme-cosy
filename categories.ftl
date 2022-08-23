<#include "module/macro.ftl">
<@layout title="${settings.categories_title} - ${blog_title!}">
    <div id="top" class="row site">
        <#--  中间  -->
        <div class="sm-12 md-8 col">
            <div class="paper">
            <#--  头部  -->
                <div class="demo-title">
                    <div class="row flex-center">
                        <div class="text-center">
                            <h1>${settings.categories_title}</h1>
                            <#if (settings.hitokoto)?? && settings.hitokoto?c == 'true'>
                                <h5 class="card-subtitle" id="hitokoto_text"></h3>   
                            <#elseif (settings.categories_description)?? && settings.categories_description?trim != ''>
                                <h5 class="card-subtitle">${settings.categories_description}</h3>
                            </#if>
                        </div>
                    </div>
                </div>
               <div>
                    <@categoryTag method="list">
                        <#if categories?? && categories?size gt 0>
                            <#list categories as category>
                                <#if (category.description == "")>
                                    <li class="margin"><a class="noline-a" href="${category.fullPath!}"><span class="badge success">${category.name}</span></a></li>
                                <#else>
                                    <li class="margin"><a class="noline-a" href="${category.fullPath!}"><span class="badge success">${category.name}</span></a> - ${category.description!}</li>
                                </#if>
                            </#list>
                        </#if>
                    </@categoryTag>                 
                </div>

                <!--评论  TODO  为什么不显示评论呢？？？-->
                <#include "module/comment.ftl">
            </div>
        </div>
        
        <#include "module/left_page.ftl">
        <#include "module/hitokoto.ftl">
  </div>
</@layout>