/* ----

# Cosy Theme
# By: OnlyTL
# Last Update: 2022.08.19

一款使用 [PaperCSS] 开发的 Halo主题, 简约风格,开发中...

---- */

window.onload=function(){
    var dark= document.getElementById('darkMenu');
    dark.addEventListener('click',function(){
        console.log('切换黑暗模式');
        if(dark.getAttribute('currentType') == 'lighting'){
            document.getElementsByTagName('html')[0].className='dark';
            document.getElementsByTagName('body')[0].style.backgroundColor='#41403e';
            dark.setAttribute('currentType','dark');
        }else{
            document.getElementsByTagName('html')[0].className='';
            document.getElementsByTagName('body')[0].style.backgroundColor='#ffffff';
            dark.setAttribute('currentType','lighting');
        }
     });       
}



