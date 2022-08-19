<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />

        <#--
            公共 head 代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
            包含：Favicon，自定义 head 等
        -->

        <@global.head />

        <#--  <link rel="stylesheet" href="https://unpkg.com/papercss@1.8.3/dist/paper.min.css">  -->
        <link rel="stylesheet" href="${theme_base!}/source/css/paper.css" />
        <link rel="stylesheet" href="${theme_base!}/source/css/style.css"/>

        <script src="${theme_base!}/source/js/script.js"></script>

        <title>${title}</title>
    </head>
    <body>
    <#--  <#include "menu.ftl">  -->


    <#nested >
    <#include "hover.ftl"/>

    <#include "footer.ftl"/>


    <#--
        公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
        包含：统计代码，底部信息
    -->
    <@global.footer />


    <!--一言-->
    <script>
        fetch('https://v1.hitokoto.cn')
            .then(response => response.json())
            .then(data => {
            const hitokoto = document.getElementById('hitokoto_text')
            hitokoto.href = 'https://hitokoto.cn/?uuid=' + data.uuid
            hitokoto.innerText = data.hitokoto
            })
            .catch(console.error);

    </script>
    
    </body>
</html>
</#macro>