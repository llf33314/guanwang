<script type="text/javascript">
	var imgStaUrl = "${imageUrl}";
	var busCount = eval('('+'${busCount}'+')');
</script>
<script type="text/javascript" src="/html/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/html/js/html5shiv.min.js"></script>
<script type="text/javascript" src="/html/js/web_slide.js"></script>
<script type="text/javascript" src="/html/js/webJS.js"></script>
<!-- <script type="text/javascript" src="/html/js/lrtk.js"></script> -->
<script type="text/javascript" src="/html/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/webSite.js"></script>
<script type="text/javascript" src="/js/customer_case.js"></script>

<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript">
	var path = "<%=basePath%>";
</script>

<script type="text/javascript" src="/html/js/baidu-bus.js"></script>