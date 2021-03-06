module ApplicationHelper
  def analytics_code
    if !request.local?

      javascript_tag("
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-36145868-1']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();")
    end
  end
end
