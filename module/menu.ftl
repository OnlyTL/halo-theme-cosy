<@menuTag method="list">
    <nav class="border fixed split-nav">
        <div class="nav-brand">
            <h3><a href="#">${user.nickname!}</a></h3>
        </div>
        <div class="collapsible">
            <input id="collapsible1" type="checkbox" name="collapsible1">
            <label for="collapsible1">
            <div class="bar1"></div>
            <div class="bar2"></div>
            <div class="bar3"></div>
            </label>
            <div class="collapsible-body">
            <ul class="inline">
                <#list menus as menu>
                    <li>
                        <a href="${menu.url!}" target="${menu.target!}">${menu.name!}</a>
                    </li>
                </#list>
            </ul>
            </div>
        </div>
    </nav>
</@menuTag>