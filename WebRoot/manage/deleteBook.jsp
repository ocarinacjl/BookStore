<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>删除图书</title>

  </head>
  
<body>
	<center>
		<div>
			<div>
				<jsp:include page="manageLeft1.jsp"></jsp:include>
			</div>	
			<div id="addBook">
			<s:action name="singleBookAction" executeResult="false"></s:action>
				<h1 class="tz-title-4 tzcolor-blue">
         			<span class="tzweight_Bold">删除图书</span>
      			</h1>
				<s:form action="updateBookAction" method="post" enctype="multipart/form-data">
					<s:hidden name="bookId" value="%{#request.singleBook.bookId}"></s:hidden>
					<s:textfield label="名称" name="bookName" value="%{#request.singleBook.bookName}"></s:textfield>
					<s:textfield label="作者" name="bookAuthor" value="%{#request.singleBook.bookAuthor}"></s:textfield>
					<s:textfield label="出版社" name="bookPress" value="%{#request.singleBook.bookPress}"></s:textfield>
					<s:file label="图片" name="doc"></s:file>
					<s:select label="类别" name="typeId" value="%{#request.singleBook..type.typeId}" list="#{'1':'文学','2':'历史','3':'天文','4':'地理','5':'其他'}"></s:select>
					<s:textfield label="价格" name="bookPrice" value="%{#request.singleBook.bookPrice}"></s:textfield>
					<s:textfield label="数量" name="bookAmount" value="%{#request.singleBook.bookAmount}"></s:textfield>
					<s:textarea label="简介" name="bookRemark" value="%{#request.singleBook.bookRemark}"></s:textarea>
					<s:submit value="删除"></s:submit>
				</s:form>
			</div>
		</div>	
	</center>
</body>
</html>
