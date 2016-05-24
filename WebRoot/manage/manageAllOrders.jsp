<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>订单管理</title>
	<style type="text/css">
	body li{
		list-style:none;
	}
	.singleOrdersHead li{
		display:inline-block;
		width:20%;
		color:white;
		float:left;
		margin:0;
		padding:0;
	}
	.singleOrders li{
		display:inline-block;
		width:20%;
		color:white;
		float:left;
		margin:0;
		padding:0;
	}
	.mybutton{
		display:block;
		margin:0 auto;
		width:75%;
		font-size:1em;
		height 100px;
		color:white;
		background-color:rgb(192,57,42);
		border-radius:5px;
		text-align:center;
		alpha:75%;
	}
	</style>
  </head>
  
<body>
	<center>
		<div>
			<div>
				<jsp:include page="manageLeft1.jsp"></jsp:include>
			</div>
			<h1 class="tz-title-4 tzcolor-blue">
         		<span class="tzweight_Bold">管理订单</span>
      		</h1>
			<div id="manageAllOrders">
				<ul class="singleOrdersHeader">
					<li>
						<a class="aboutOrders" href="manageAllOrders.jsp?searchType=all">所有订单</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="aboutOrders" href="manageAllOrders.jsp?searchType=isDeal">已处理订单</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="aboutOrders" href="manageAllOrders.jsp?searchType=isNotDeal">未处理订单</a>
					</li>
				</ul>
				<ul class="singleOrdersHead">
					<li class="sequence">序列</li>			
					<li class="ordersNumber">订单编号</li>			
					<li class="ordersTime">订单日期</li>			
					<li class="ordersUser">订单用户</li>			
					<li class="dealOrders">处理订单</li>			
				</ul>
				<s:action name="allOrdersAction" executeResult="false"></s:action>
				<s:iterator value="#request.allOrders" status="st">
					<ul class="singleOrders">
						<li class="sequence"><s:property value="#st.getIndex()+#request.sequence+1"/></li>			
						<li class="ordersNumber">
							<a class="aboutBook" href="singleOrders.jsp?ordersId=<s:property value="ordersId"/>"><s:property value="ordersNumber"/></a>
						</li>			
						<li class="ordersTime"><s:date name="ordersTime" format="yyyy-MM-dd HH:mm:ss"/></li>			
						<li class="ordersUser">
							<a class="aboutBook" href="userInformation.jsp?userId=<s:property value="user.userId"/>"><s:property value="user.userName"/></a>
						</li>
						<li class="dealOrders">
							<s:if test='%{isDeal =="0"}'>
								<a class="aboutBook" href='../com.huizhi.action/dealOrdersAction.action?ordersId=<s:property value="ordersId"/>'>发货</a>
							</s:if>
							<s:else>
								已发货
							</s:else>
						</li>			
					</ul>
				</s:iterator>
			</div>
		</div>
	</center>
</body>
</html>
<jsp:include page="bottom.jsp"></jsp:include>
