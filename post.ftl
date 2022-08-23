<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
    <div id="top" class="row site">
        <#--  中间  -->
        <div class="sm-12 md-8 col">
            <div class="paper">

                <#--  头部  -->
                <div class="demo-title">
                    <div class="row flex-center">
                        <div class="text-center">
                            <h1>${post.title!}</h1>
                            <h5 class="card-subtitle">
                                <span class="margin">
                                    发布时间：${post.createTime?string["yyyy.MM.dd"]!}
                                </span>
                                <span class="margin">
                                    浏览数：${post.visits!}
                                </span>
                                <span class="margin">
                                    评论数：${post.commentCount!}
                                </span>
                                <span class="margin">
                                    字数：${post.wordCount!}
                                </span>
                            </h5>
                        </div>
                    </div>
                </div>
                <article class="article">
                    ${post.formatContent!}

                    <#if (.now?long-86400000* 1)?number_to_datetime gte post.editTime?datetime>
                        <div class='alert alert-secondary'>请注意，本文编写于&nbsp; ${(((.now?long) - (post.createTime?long)) / 86400000)?int} &nbsp;天前，最后编辑于&nbsp; ${(((.now?long) - (post.editTime?long)) / 86400000)?int} &nbsp;天前，内容可能已经不具有时效性，请谨慎参考。</div>
                    </#if>
                    <#--  <#if (.now?long-86400000* 30)?number_to_datetime gte post.editTime?datetime>
                        <div class='alert alert-secondary'>请注意，本文编写于&nbsp; ${(((.now?long) - (post.createTime?long)) / 86400000)?int} &nbsp;天前，最后编辑于&nbsp; ${(((.now?long) - (post.editTime?long)) / 86400000)?int} &nbsp;天前，内容可能已经不具有时效性，请谨慎参考。</div><hr/>
                    </#if>  -->
                </article>
                <div>
                    <ul>
                        <#if prevPost??>
                            <li>上一篇: <a href="${prevPost.fullPath!}">${prevPost.title!}</a></li>
                        </#if>

                        <#if nextPost??>
                            <li>下一篇: <a href="${nextPost.fullPath!}">${nextPost.title!}</a></li>
                        </#if>
                    </ul>
                </div>
                

                
                <!--评论  TODO  为什么不显示评论呢-->
                <#include "module/comment.ftl">
            </div>
        </div>
        
        <#include "module/left_page.ftl">

        <script>
            if (document.getElementById('top')) {
                console.log(top);
                new Viewer(document.getElementById('top'), {
                    toolbar: false,
                });
            }
        </script>
    </div>
</@layout>
