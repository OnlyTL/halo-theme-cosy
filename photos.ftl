<#include "module/macro.ftl">
<@layout title="${settings.photos}- ${blog_title!}">
    <div id="top" class="row site">
        <#--  中间  -->
        <div class="sm-12 md-8 col">
            <div class="paper">
                <#--  头部  -->
                <div class="demo-title">
                    <div class="row flex-center">
                        <div class="text-center">
                            <h1 class="chinese-font">${settings.photos}</h1>
                            <h5 class="card-subtitle chinese-font">
                                远上寒山石径斜，白云深处有人家。
                            </h5>
                        </div>
                    </div>
                </div>
                
                <#--  图库  -->
                <div class="row flex-spaces tabs">
                    <#assign tabStr = "tab"/>
                    <#assign contentStr = "content"/>
                    <@photoTag method="listTeams">
                        <#list teams as team>
                            <#assign team_indexStr = "${team_index+1}"/>
                            <input id="${tabStr+team_indexStr}" type="radio" name="tabs" checked>
                            <label for="${tabStr+team_indexStr}">${team.team}</label>
                            <#--  <h1>${team.team}</h1>  -->
                            <#--  <#list team.photos as photo>
                                <div class="content" id="${contentStr+team_indexStr}">
                                    <img alt="${photo.description}" src="${photo.url}"/>
                                </div>
                            </#list>  -->
                        </#list>
                        <p></p>
                        <#list teams as team>
                            <#assign team_indexStr = "${team_index+1}"/>
                            <#--  <h1>${team.team}</h1>  -->
                            <#list team.photos as photo>
                                <div class="content" id="${contentStr+team_indexStr}">
                                    <img  alt="${photo.description}" src="${photo.url}"/>
                                </div>
                            </#list>
                        </#list>
                    </@photoTag>
                </div>

                <!--评论  TODO  为什么不显示评论呢？？？-->
                <#include "module/comment.ftl">
            </div>
        </div>
        <#include "module/left_page.ftl">
    </div>
    
</@layout>