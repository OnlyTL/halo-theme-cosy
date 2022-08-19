<!--
# Cosy Theme
# By: OnlyTL
# Last Update: 2022.08.19

一款使用 [PaperCSS] 开发的 Halo主题, 简约风格,开发中...
-->
<#include "module/macro.ftl">
<@layout title="${blog_title!}">
  <div id="top" class="row site">

    <#--  中间  -->
    <div class="sm-12 md-8 col">
      <div class="paper">

        <#--  头部  -->
        <div class="demo-title">
          <div class="row flex-center">
            <div class="text-center">
              <h1>${blog_title!}</h1>
              <#if (settings.hitokoto)?? && settings.hitokoto?c == 'true'>
                <h5 class="home-description font-chinese" id="hitokoto_text">${settings.motto!}</h3>   
              <#elseif (settings.motto)?? && settings.motto?trim != ''>
                <h5 class="home-description font-chinese">${user.description!}</h3>
              </#if>
            </div>
          </div>
        </div>

        <#--  文章列表  -->
        <div class="card-list">
          <#list posts.content as post>
            <div class="card" style="width: 100%">
              <div class="card-body">
                <h4 class="card-title font-chinese">
                  ${post.title}
                  <#if post.topped>
                    <span class="badge secondary topBadges">置顶</span>
                  </#if>
                </h4>
                <h5 class="card-subtitle">
                    <span>
                        ${post.createTime?string["yyyy.MM.dd"]!}
                    </span>
                </h5>
                <p class="card-text font-chinese">${post.summary!}</p>
                <#--  <button>Let me go here!</button>  -->
              </div>
              <div class="card-footer">
                    <#if (post.categories)?? && post.categories?size !=0>
                        <#list post.categories as categorie>
                            <span class="badge danger">${categorie.name!}</span>
                        </#list>
                    </#if>
              </div>
            </div>
          </#list>
        </div>

        <#--  下一页上一页  -->
        <div class="column home-page margin">
          <#if posts.totalPages gt 1>
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                <#if pagination.hasPrev>
                    <a rel="prev" href="${pagination.prevPageFullPath!}">
                        <input type="button" class="btn-secondary btn-small" value="Pre"/>
                    </a>
                </#if>
                <#list pagination.rainbowPages as number>
                    <#if number.isCurrent>
                        <span>${number.page!}</span>
                    <#else>
                        <a href="${number.fullPath!}">${number.page!}</a>
                    </#if>
                </#list>
                <#if pagination.hasNext>
                    <a rel="next" href="${pagination.nextPageFullPath!}">
                        <input type="button" class="btn-secondary btn-small" value="Next"/>
                    </a>
                </#if>
            </@paginationTag>
          </#if>
        </div>
      </div>
    </div>

    <#--  右侧  -->
    <div class="sm-12 md-4 col sidebar">
      <div class="paper">
        <h3 class="sidebar-title" style="text-align:center">
          <a href="#">${blog_title!}</a>
        </h3>
        <div class="row">
          <@menuTag method="tree">
            <#list menus? reverse as menu>
              <div class="collapsible">
                <input id="collapsible1" type="checkbox" name="collapsible">
                <label class="font-chinese" for="collapsible1">
                  ${menu.name!}
                </label>
              </div>
            </#list>
          </@menuTag>
        </div>
      </div>

      <div class="paper">
        <div class="row flex-center">
          <p>Made with 💛 by <a href="https://vlaservich.com" target="_blank">TL</a> !</p>
        </div>
      </div>
    </div>
  </div>

</@layout>