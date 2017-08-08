<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/cmm_css.jsp" %>
<link rel="stylesheet" href="/html/css/logreg.css"/>
<%@include file="/html/common/js.jsp" %>
<title>客户评价表</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
</head>
<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>
    <!--中间内容-->
    <div class="wrap">
         <div class="formCon" id="formCon">
            <h1 class="formTitle">客户评价表</h1>
            <hr>
            <div class="abstract">
                 <p class="absTitle">尊敬的客户:</p>
                 <p class="absContent">衷心的感谢您对多粉的信任和支持。为不断的提高我公司的产品和服务质量，完善我们的工作，给您提供更优质的产品及服务。在致以我们诚挚的问候的同时，请您在百忙之中抽空填写员工评价表。我们热切的盼望着对您在我们的工作提出宝贵意见和建议，您的每一个意见和建议，将是我们不断前进的动力。谢谢您的配合，我们将不胜感激! </p>
            </div>
            <hr>
            <!-- 被评价员工资料开始 -->
            <div class="staffData">
                <input type="hidden" id="id" value="${map.id}">
                <input type="hidden" id="issave" value="0">
                <div class="data">
                    <h2 class="dataTitle">一、被评价员工资料</h2>
                    <ul class="dataList">
                        <li class="dataItem">
                           <label class="items dataName">姓名:</label>
                            <label id="a">${map.name}</label>
                        </li>
                        <li class="dataItem">
                           <label class="items dataNum">工号:</label>
                            <label id="b">${map.number}</label>
                        </li>
                        <li class="dataItem">
                            <label class="items dataSex">性别:</label>
                             <label id="c">${map.sex}</label>
                        </li>
                        <li class="dataItem">
                            <label class="items dataArea">所属地区:</label>
                            <label id="d">${map.adder}</label>
                        </li>
                        <li class="dataItem">
                            <label class="items dataId">身份证:</label>
                            <label id="idcard">****</label>
                        </li>
                        <li class="dataItem">
                            <label class="items dataChannel">所属渠道:</label>
                             <label id="e">${map.channel}</label>
                        </li>
                    </ul>
                    <div class="staffImg">
		               <c:if test="${map.url eq null || map.url eq ''}">
			           <img src="/html/images/staff/thr2.png" alt="照片" title="员工照片" />
			           </c:if>
			           <c:if test="${map.url ne null && map.url ne ''}">
			              <img src="${http}${map.url}" alt="照片" title="员工照片" />
			           </c:if>
			        </div>
                </div>
            </div>
            <!-- 员工服务工作评定结束 -->
            <hr>
            <!-- 员工服务工作评定开始 -->
            <div class="evaluate">
               <h2>二、员工服务工作评定</h2>
               <div class="evabox">
                   <div class="appearance">
                    <label class="appeItem">仪容仪表</label>
                    <span class="appeStar QuacorGrading" id="QuacorGrading1">
                  <input name="1" type="button" style="background-position: left center;">
                  <input name="2" type="button" style="background-position: left center;">
                  <input name="3" type="button" style="background-position: left center;">
                  <input name="4" type="button" style="background-position: left center;">
                  <input name="5" type="button" style="background-position: left center;">
                  <input type="hidden" id="groomingnum" value="5" style="background-position: right center;">
                    </span>
                 </div>
                 <div class="appeText">
                    <label class="textItem">评价：</label>
                    <textarea cols="100" rows="3" class="appeCon" id="appeCon" placeholder="不能超过100字" maxlength="100"></textarea>
                 </div>
               </div>
               <div class="evabox">
                   <div class="express">
                    <label class="expItem">表达能力</label>
                    <span class="expStar QuacorGrading" id="QuacorGrading2">
                      <input name="1" type="button">
                <input name="2" type="button">
                <input name="3" type="button">
                <input name="4" type="button">
                <input name="5" type="button">
                <input type="hidden" id="expressnum" value="5">
                    </span>
                 </div>
                 <div class="expText">
                    <label class="textItem">评价：</label>
                    <textarea cols="100" rows="3" class="expCon" id="expCon" placeholder="不能超过100字" maxlength="100"></textarea>
                 </div>
               </div>
               <div class="evabox">
                   <div class="service">
                    <label class="servItem">服务态度</label>
                    <span class="servStar QuacorGrading" id="QuacorGrading3">
                          <input name="1" type="button">
                  <input name="2" type="button">
                  <input name="3" type="button">
                  <input name="4" type="button">
                  <input name="5" type="button">
                  <input type="hidden" id="servicenum" value="5">
                    </span>
                 </div>
                 <div class="servText">
                    <label class="textItem">评价：</label>
                    <textarea cols="100" rows="3" class="servCon" id="servCon" placeholder="不能超过100字" maxlength="100"></textarea>
                 </div>
               </div>
               <div class="evabox">
                   <div class="professional">
                    <label class="proItem">专业知识</label>
                    <span class="proStar QuacorGrading" id="QuacorGrading4">
                          <input name="1" type="button">
                  <input name="2" type="button">
                  <input name="3" type="button">
                  <input name="4" type="button">
                  <input name="5" type="button">
                  <input type="hidden" id="majornum" value="5">
                    </span>
                 </div>
                 <div class="proText">
                    <label class="textItem">评价：</label>
                    <textarea cols="100" rows="3" class="maCon" id="maCon" placeholder="不能超过100字" maxlength="100"></textarea>
                 </div>
               </div>
            </div>
            <!-- 员工服务工作评定结束 -->
            <hr>
            <!-- 需求反馈改进建议开始 -->
            <div class="suggest">
               <h2>三、需求反馈及改进建议</h2>
               <textarea cols="100" rows="5" class="sugCon" id="sugCon" placeholder="不能超过100字" maxlength="100"></textarea>
            </div>
             <!-- 需求反馈改进建议结束 -->
             <div class="evaBtn">
                <input type="submit" name="" id="formSub" class="formSub" value="">
                <input type="button" name="" id="formReturn" class="formReturn" value="">
             </div>
        </div>
    </div>
    <!--中间内容-->
    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
 <%--    <script type="text/javascript">
			$(function(){
				var id = <%=request.getParameter("id") %>;
				 $.ajax({
					url:"${pageContext.request.contextPath}/employee/html/one",
					data:{id:id},
					type:"post",
					success:function(data){
						var employee = data.employee;
						$("#id").val(employee.id);
						$("#a").html(employee.name);
						$("#b").html(employee.number);
						$("#c").html(employee.sex);
						$("#idcard").html(employee.idcard);
						$("#d").html(employee.adder);
						$("#e").html(employee.channel);
					}
				}); 
			});
		</script> --%>
    <script type="text/javascript">
			var GradList = document.getElementById("QuacorGrading1").getElementsByTagName("input");
			var GradList2 = document.getElementById("QuacorGrading2").getElementsByTagName("input");
			var GradList3 = document.getElementById("QuacorGrading3").getElementsByTagName("input");
			var GradList4 = document.getElementById("QuacorGrading4").getElementsByTagName("input");
			for(var i=0;i < GradList.length;i++){
				GradList[i].onmouseover = function(){
					for(var Qi=0;Qi<GradList.length;Qi++){
						GradList[Qi].style.backgroundPosition = 'right center';
					}
					for(var Qii=0;Qii<this.name;Qii++){
						GradList[Qii].style.backgroundPosition = 'left center';
						
					}
					$("#groomingnum").val(this.name);
				}
			}
			for(var i=0;i < GradList2.length;i++){
				GradList2[i].onmouseover = function(){
					for(var Qi=0;Qi<GradList2.length;Qi++){
						GradList2[Qi].style.backgroundPosition = 'right center';
					}
					for(var Qii=0;Qii<this.name;Qii++){
						GradList2[Qii].style.backgroundPosition = 'left center';
					}
					$("#expressnum").val(this.name);
				}
			}
			
			for(var i=0;i < GradList3.length;i++){
				GradList3[i].onmouseover = function(){
					for(var Qi=0;Qi<GradList3.length;Qi++){
						GradList3[Qi].style.backgroundPosition = 'right center';
					}
					for(var Qii=0;Qii<this.name;Qii++){
						GradList3[Qii].style.backgroundPosition = 'left center';
					}
					$("#servicenum").val(this.name);
				}
			}
			for(var i=0;i < GradList4.length;i++){
				GradList4[i].onmouseover = function(){
					for(var Qi=0;Qi<GradList4.length;Qi++){
						GradList4[Qi].style.backgroundPosition = 'right center';
					}
					for(var Qii=0;Qii<this.name;Qii++){
						GradList4[Qii].style.backgroundPosition = 'left center';
					}
					$("#majornum").val(this.name);
				}
			}
			 $(function(){
				$("#formSub").click(function() {
					var issave = $("#issave").val();//防止二次提交
					if(issave==1){
						return;
					}
					var employeeid = $("#id").val();
					var groomingnum = $("#groomingnum").val();
					var expressnum = $("#expressnum").val();
					var servicenum = $("#servicenum").val();
					var majornum = $("#majornum").val();
					var groomingtext = $("#appeCon").val();
					var expresstext = $("#expCon").val();
					var servicetext = $("#servCon").val();
					var majortext = $("#maCon").val();
					var propose = $("#servCon").val();
					$("#issave").val(1);
					 $.ajax({   
          				type:"post",
          				url:"/employee/html/employeeadd",
          				data:{
          					employeeid:employeeid,
          					groomingnum:groomingnum,
          					expressnum:expressnum,
          					servicenum:servicenum,
          					majornum:majornum,
          					groomingtext:groomingtext,
          					expresstext:expresstext,
          					majortext:majortext,
          					servicetext:servicetext,
          					propose:propose
          					},
          				async:false,
          				dataType:"json",
          				success:function(data){
          					var error = data.error;
          					if(error==1){
          						 alert(data.message);
          						$("#issave").val(0);
          					}else{
          						 alert("谢谢你对该员工的认可！");
          						  window.location.href = "/html/staff.jsp";  
          					}
          				}
					  }) 
		            });
			     $("#formReturn").click(function() {
			    	 window.location.href = "/html/staff.jsp"
			     })
			 })
			
	  </script>
</div>
</body>
</html>
