<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>汇智网上书店</title>
  </head>
  
<body>
	<center>
		<div>
			<div>
				<jsp:include page="manageLeft1.jsp"></jsp:include>	
			</div>
			<h1 class="tz-title-4 tzcolor-blue">
         		<span class="tzweight_Bold">欢迎您，<font><s:property value="#session.managerLoginName"/></font></span>
      	 	</h1>
		<jsp:include page="bottom.jsp"></jsp:include>
		</div>	
	</center>
</body>
</html>
