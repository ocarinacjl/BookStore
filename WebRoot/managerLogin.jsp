<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>管理员登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
<body>
	<center>
		<jsp:include page="head1.jsp"></jsp:include>
		<div id="managerLogin">
			<h1 class="tz-title-4 tzcolor-blue">
         		<span class="tzweight_Bold">管理员登录</span>
      		</h1>
			<s:form action="managerLoginAction">
				<s:textfield label="用户名" name="userName"></s:textfield>
				<s:password label="密码" name="userPassword"></s:password>
				<s:submit value="登录"></s:submit>
			</s:form>
		</div>
	<jsp:include page="bottom.jsp"></jsp:include>
	</center>
</body>
</html>
