<#include "module/macro.ftl">
<@layout title="${settings.journals_title} - ${blog_title!}">
    <div id="top" class="row site">
        <#--  中间  -->
        <div class="sm-12 md-8 col">
            <div class="paper">
            <#--  头部  -->
                <div class="demo-title">
                    <div class="row flex-center">
                        <div class="text-center">
                            <h1>${settings.journals_title}</h1>
                            <#if (settings.hitokoto)?? && settings.hitokoto?c == 'true'>
                                <h5 class="card-subtitle" id="hitokoto_text"></h3>   
                            <#elseif (settings.journals_description)?? && settings.journals_description?trim != ''>
                                <h5 class="card-subtitle">${settings.journals_description}</h3>
                            </#if>
                        </div>
                    </div>
                </div>
                <ul>
                    <#list journals.content as journal>
                        <li>
                            <span class="badge danger margin-bottom-small">${journal.createTime?string('yyyy年MM月dd日')}</span></h5>
                            <div>
                                ${journal.content!}
                            </div>
                        </li>
                    </#list>
                </ul>
            </div>
        </div>
        <#include "module/left_page.ftl">
        <#include "module/hitokoto.ftl">
  </div>
</@layout>