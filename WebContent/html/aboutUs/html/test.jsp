<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="/js/index/jquery-2.2.2.min.js"></script>
<script>
    $(function () {
        if(/(iPhone|iPod|iOS|Android|Windows Phone)/i.test(navigator.userAgent)){
//            $("#test").html("<include src='http://localhost:8012/html/weixinapp.jsp'></include>")
//            $("#main").attr("src","http://localhost:8012/html/weixinapp.jsp");
           request() = true;
        }else{
//            $("#test").html("<include src='http://localhost:8012/html/index.jsp'></include>")
//            $("#main").attr("src","http://localhost:8012/html/index.jsp");
        }
    })

</script>
<%--<iframe id="main" style="width: 100%;height:100%;"></iframe>--%>

<c:if test="${test1}">
    <%@include file="/html/common/clearfix1.jsp" %>
</c:if>

<c:if test="${2>1}">
    <%@include file="/html/common/footer.jsp" %>
</c:if>
