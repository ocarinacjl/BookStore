<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

  
  <body>
      	<jsp:include page="head1.jsp"></jsp:include>
      <center>
    	<h1 class="tz-title-4 tzcolor-blue">
         <span class="tzweight_Bold">图书信息</span>
      </h1>
		<div id="singleBook">
			<div id="bookInfor">
			<s:action name="singleBookAction" executeResult="false"></s:action>
				<ul class="singleBookUl">
					<li class="singleBookPicture">
						<img class="sgBP" src='upload/<s:property value="#request.singleBook.bookPicture"/>' />
					</li>
					<p class="singleBookName">
						<s:property value="#request.singleBook.bookName"/>
					</p>
					<li class="singleBookInfor">
						作者：<a class="aboutBook" href="oneType.jsp?searchType=bookAuthor&searchDescribe=<s:property value="#request.singleBook.bookAuthor"/>"><s:property value="#request.singleBook.bookAuthor"/></a><br/>
						出版社：<a class="aboutBook" href="oneType.jsp?searchType=bookPress&searchDescribe=<s:property value="#request.singleBook.bookPress"/>"><s:property value="#request.singleBook.bookPress"/></a><br/>
						类别：<a class="aboutBook" href="oneType.jsp?searchType=bookType&searchDescribe=<s:property value="#request.singleBook.type.typeId"/>"><s:property value="#request.singleBook.type.typeName"/></a><br/>
						上架时间：<s:date name="#request.singleBook.bookShelveTime" format="yyyy-MM-dd HH:mm:ss"/><br/>
						图书简介：<s:property value="#request.singleBook.bookRemark"/><br/>
						原价：<font style="text-decoration: line-through;color:red;"><s:property value="#request.singleBook.bookPrice"/></font> 元&nbsp;&nbsp;&nbsp;&nbsp;现价：<s:property value="#request.singleBook.bookNewPrice"/> 元<br/>
						<a class="singleBookButton" href='com.huizhi.action/shoppingCartAction.action?bookId=<s:property value="#request.singleBook.bookId"/>'>放入购物车</a>
					</li>
				</ul>
			</div>
		</div>
	<jsp:include page="bottom.jsp"></jsp:include>
	    </center>
  </body>
