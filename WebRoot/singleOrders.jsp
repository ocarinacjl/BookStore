<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>我的订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	body li{
		list-style:none;
	}
	.singleOrdersBookHead li{
		display:inline-block;
		width:20%;
		color:white;
		float:left;
		margin:0;
		padding:0;
	}
	.singleOrdersBook li{
		display:inline-block;
		width:20%;
		color:white;
		float:left;
		margin:0;
		padding:0;
	}
	.mybutton{
		display:inline-block;
		height:1.7em;
		line-height:1.7em;
		margin:0 auto;
		padding:0px 5px 0px 5px;
		font-size:1em;
		color:white;
		background-color:rgb(192,57,42);
		border-radius:5px;
		text-align:center;
	}
	</style>
  </head>
  
<body>
	<center>
    	<jsp:include page="head1.jsp"></jsp:include>
    		<h1 class="tz-title-4 tzcolor-blue">
         		<span class="tzweight_Bold">订单详情</span>
      		</h1>	
		<div>
			<div>
			<s:action name="singleOrdersAction" executeResult="false"></s:action>
				<ul>
					<li class="singleOrdersHeader" style="color:white;">
						<s:property value="#request.orders.ordersNumber"/>
						&nbsp;&nbsp;&nbsp;&nbsp;
						总计金额：<s:property value="#request.orders.totalMoney"/> 元
						&nbsp;&nbsp;&nbsp;&nbsp;
						状态：
						<s:if test='#request.orders.isDeal == "0"'>未处理</s:if>
						<s:else>已处理</s:else>
						&nbsp;&nbsp;&nbsp;&nbsp;
						日期：<s:date name="#request.orders.ordersTime" format="yyyy-MM-dd HH:mm:ss"/>
					</li>
				</ul>
				<ul class="singleOrdersBookHead">
					<li class="sequence">序列</li>
					<li class="bookName">图书名称</li>
					<li class="bookPrice">图书价格</li>
					<li class="bookAmount2">购买数量</li>
					<li class="bookPress">出版社</li>
				</ul>
				<s:iterator value="#request.bookList" status="st">
					<ul class="singleOrdersBook">
						<li class="sequence">
							<s:property value="#st.getIndex()+1"/>
						</li>
						<li class="bookName"><a class="bookName" href="singleBook.jsp?bookId=<s:property value="bookId" />"><s:property value="bookName"/></a></li>
						<li class="bookPrice"><s:property value="bookPrice"/> 元</li>
						<li class="bookAmount2">
							<s:property value="bookAmount"/>
						</li>
						<li class="bookPress">
							<a class="aboutBook" href="oneType.jsp?searchType=bookPress&searchDescribe=<s:property value="bookPress"/>"><s:property value="bookPress"/></a>
						</li>
					</ul>
				</s:iterator>
			</div>
		</div>
	</center>
</body>
</html>
<jsp:include page="bottom.jsp"></jsp:include>
