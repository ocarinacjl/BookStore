<%@ page language="java" pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s"%>
 
<html> 
	<head>
		<title>�û�ע��</title>
	</head>
	<body>
	<center>
		<jsp:include page="head1.jsp"></jsp:include>
			<div id="enroll">
			<h1 class="tz-title-4 tzcolor-blue">
         		<span class="tzweight_Bold">�û�ע��</span>
      		</h1>
				<s:form action="enrollAction">
					<s:textfield label="�û���" name="userName"></s:textfield>
					<s:password label="����" name="userPassword"></s:password>
					<s:password label="�ظ�����" name="userRePassword"></s:password>
					<s:textfield label="����" name="userEmail"></s:textfield>
					<s:submit value="ע��"></s:submit>					
				</s:form>
			</div>
	<jsp:include page="bottom.jsp"></jsp:include>
	</center>
	</body>
</html>

