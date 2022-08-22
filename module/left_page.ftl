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
            <label for="collapsible1">
                <a class="noline-a chinese-font" href="${menu.url!}" target="${menu.target!}">${menu.name!}</a>
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