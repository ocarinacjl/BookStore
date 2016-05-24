<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
  <head>
  <style type="text/css">
  	img{
  		width:30%;
  		border-radius:15px;
  	}
  </style>
  </head>
  
  <body>
    <center>
		<div>
			<div>
				<jsp:include page="manageLeft1.jsp"></jsp:include>
			</div>
			<div id="manageBook">
			<s:action name="singleBookAction" executeResult="false"></s:action>
				<ul class="singleBookUl">
				<h1 class="tz-title-4 tzcolor-blue">
         			<span class="tzweight_Bold"><s:property value="#request.singleBook.bookName"/></span>
      			</h1>
					<li class="singleBookPicture">
						<img src='../upload/<s:property value="#request.singleBook.bookPicture"/>' />
					</li>
					<li class="singleBookInfor">
						作者：<a class="aboutBook" href="oneType.jsp?searchType=bookAuthor&searchDescribe=<s:property value="#request.singleBook.bookAuthor"/>"><s:property value="#request.singleBook.bookAuthor"/></a><br/>
						出版社：<a class="aboutBook" href="oneType.jsp?searchType=bookPress&searchDescribe=<s:property value="#request.singleBook.bookPress"/>"><s:property value="#request.singleBook.bookPress"/></a><br/>
						类别：<a class="aboutBook" href="oneType.jsp?searchType=bookType&searchDescribe=<s:property value="#request.singleBook.type.typeId"/>"><s:property value="#request.singleBook.type.typeName"/></a><br/>
						上架时间：<s:date name="#request.singleBook.bookShelveTime" format="yyyy-MM-dd HH:mm:ss"/><br/>
						图书简介：<s:property value="#request.singleBook.bookRemark"/><br/>
						原价：<font style="text-decoration: line-through;color:red;"><s:property value="#request.singleBook.bookPrice"/></font> 元&nbsp;&nbsp;&nbsp;&nbsp;现价：<s:property value="#request.singleBook.bookNewPrice"/> 元<br/>
						<a class="bookName" href='updateBook.jsp?bookId=<s:property value="#request.singleBook.bookId"/>'>修改图书信息</a>
					</li>
				</ul>
			</div>
		</div>
    </center>
  </body>
