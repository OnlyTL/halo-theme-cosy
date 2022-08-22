<div class="footer">
    <@global.footer />

    <!-- 请尊重作者，请务必保留版权 -->
    <div class="column margin footer-badges text-center">
        <a class="noline-a" rel="license" href="http://halo.run" target="_blank">
            <span class="badge margin-none">Powered</span>
            <span class="badge secondary footer-value">Halo</span>
        </a>
        <a class="noline-a" rel="license" href="https://github.com/OnlyTL/halo-theme-cosy" target="_blank">
            <span class="badge margin-none">Theme</span>
            <span class="badge secondary footer-value">Cosy</span>
        </a>
        <#if settings.TimeStatistics??>
          <a class="noline-a" rel="license" href="javascript:void(0)">
            <span class="badge margin-none">运行</span>
            <span class="badge secondary footer-value" id="span_dt_dt"></span>
          </a>
        </#if>
    </div>
</div>


<#if settings.TimeStatistics??>
    <script type="text/javascript">
      // 建站时间统计
      function show_date_time() {
          BirthDay = new Date("${settings.TimeStatistics!}");
          today = new Date();
          timeold = (today.getTime() - BirthDay.getTime());
          sectimeold = timeold / 1000;
          secondsold = Math.floor(sectimeold);
          msPerDay = 24 * 60 * 60 * 1000;
          e_daysold = timeold / msPerDay;
          daysold = Math.floor(e_daysold);
          e_hrsold = (e_daysold - daysold) * 24;
          hrsold = Math.floor(e_hrsold);
          e_minsold = (e_hrsold - hrsold) * 60;
          minsold = Math.floor((e_hrsold - hrsold) * 60);
          seconds = Math.floor((e_minsold - minsold) * 60);
          span_dt_dt.innerHTML = daysold + "天" + hrsold + "小时" + minsold + "分" + seconds + "秒";
      }

      setInterval("show_date_time()","1000");
    </script>
</#if>