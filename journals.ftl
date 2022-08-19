<#include "module/macro.ftl">
<@layout title="${settings.journal} - ${blog_title!}">
    <div id="top" class="row site">

        <#--  中间  -->
        <div class="sm-12 md-8 col">
        <div class="paper">
        <#--  头部  -->
            <div class="demo-title">
                <div class="row flex-center">
                    <div class="text-center">
                        <h1 class="font-chinese">日志</h1>
                        <h5 class="card-subtitle">
                            远上寒山石径斜，白云深处有人家。
                        </h5>
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
            <!--评论  TODO  为什么不显示评论呢？？？-->
            <#include "module/comment.ftl">
        </div>
        </div>
        
        <#include "module/left_page.ftl">
  </div>
</@layout>