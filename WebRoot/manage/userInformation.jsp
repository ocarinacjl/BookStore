<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户信息</title>
  </head>
  
<body>
	<center>
		<div>
			<div>
				<jsp:include page="manageLeft1.jsp"></jsp:include>
			</div>
			<div id="userInformation">
				<s:action name="userInformationAction" executeResult="false"></s:action>
				<h1 class="tz-title-4 tzcolor-blue">
         			<span class="tzweight_Bold"><s:property value="#request.user.userName"/>&nbsp;&nbsp;&nbsp;&nbsp;的信息</span>
      			</h1>
				<s:form>
					<s:label label="用户名" value="%{#request.user.userName}" cssStyle="text-align:left;"></s:label>
					<s:label label="昵称" value="%{#request.user.userNickname}"></s:label>
					<s:label label="性别" value="%{#request.user.sex.sexType}"></s:label>
					<s:label label="邮箱" value="%{#request.user.userEmail}"></s:label>
					<s:label label="电话" value="%{#request.user.userPhone}"></s:label>
					<s:label label="地址" value="%{#request.user.userAddress}"></s:label>
					<s:label label="备注" value="%{#request.user.userRemark}"></s:label>
				</s:form>
			</div>
		</div>
	</center>
</body>
</html>
