<#include "module/macro.ftl">
<@layout title="${settings.archives_title} - ${blog_title!}">
    <div id="top" class="row site">
        <#--  中间  -->
        <div class="sm-12 md-8 col">
            <div class="paper">
            <#--  头部  -->
                <div class="demo-title">
                    <div class="row flex-center">
                        <div class="text-center">
                            <h1>${settings.archives_title}</h1>
                            <#if (settings.hitokoto)?? && settings.hitokoto?c == 'true'>
                                <h5 class="card-subtitle" id="hitokoto_text"></h3>   
                            <#elseif (settings.archives_description)?? && settings.archives_description?trim != ''>
                                <h5 class="card-subtitle">${settings.archives_description}</h3>
                            </#if>
                        </div>
                    </div>
                </div>
               <div>
                    <@postTag method="archiveYear">
                        <#list archives as archive>
                            <h3>${archive.year?c}</h3>
                            <ul>
                                <#list archive.posts as post>
                                    <li class="margin">
                                        <span class="badge secondary">${post.createTime?string["yyyy年MM月dd日"]!}</span>
                                        <a class="noline-a" href="${post.fullPath!}" title="${post.title}">${post.title}</a>
                                    </li>
                                </#list>
                            </ul>
                        </#list>
                    </@postTag>                        
                </div>

                <!--评论  TODO  为什么不显示评论呢？？？-->
                <#include "module/comment.ftl">
            </div>
        </div>
        
        <#include "module/left_page.ftl">
        <#include "module/hitokoto.ftl">
  </div>
</@layout>