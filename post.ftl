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
                        <h1 class="font-chinese">${post.title!}</h1>
                        <h5 class="card-subtitle">
                            <span class="font-chinese margin">
                                发布时间：${post.createTime?string["yyyy.MM.dd"]!}
                            </span>
                            <span class="font-chinese margin">
                                浏览数：${post.visits!}
                            </span>
                            <span class="font-chinese margin">
                                评论数：${post.commentCount!}
                            </span>
                            <span class="font-chinese margin">
                                字数：${post.wordCount!}
                            </span>
                        </h5>
                    </div>
                </div>
            </div>
            <article class="article">
                ${post.formatContent!}
            </article>
            
            <!--评论  TODO  为什么不显示评论呢-->
            <#include "module/comment.ftl">
        </div>
        </div>
        
        <#include "module/left_page.ftl">
    </div>
</@layout>
