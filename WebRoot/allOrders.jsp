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
		<jsp:include page="head1.jsp"></jsp:include>
	  <h1 class="tz-title-4 tzcolor-blue">
         <span class="tzweight_Bold">我的订单</span>
      </h1>
		<div id="orders">
			<div id="ordersInfor">
				<ul class="singleOrdersHeader">
					<li >
						<a class="aboutOrders" href="allOrders.jsp?searchType=all">所有订单</a>&nbsp;&nbsp;&nbsp;&nbsp;<a class="aboutOrders" href="allOrders.jsp?searchType=isDeal">已处理订单</a>&nbsp;&nbsp;&nbsp;&nbsp;<a class="aboutOrders" href="allOrders.jsp?searchType=isNotDeal">未处理订单</a>
					</li>
				</ul>
				<ul class="singleOrdersHead" >
					<li class="sequence">序列</li>			
					<li class="ordersNumber">订单编号</li>			
					<li class="ordersTime">订单日期</li>			
					<li class="isDeal">处理状态</li>			
					<li class="deleteOrders">删除订单</li>			
				</ul>
				<s:action name="ordersAction" executeResult="false"></s:action>
				<s:iterator value="#request.allOrdersByUser" status="st">
					<ul class="singleOrders">
						<li class="sequence"><s:property value="#st.getIndex()+#request.sequence+1"/></li>			
						<li class="ordersNumber">
							<a class="aboutBook" href="singleOrders.jsp?ordersId=<s:property value="ordersId"/>"><s:property value="ordersNumber"/></a>
						</li>			
						<li class="ordersTime"><s:date name="ordersTime" format="yyyy-MM-dd HH:mm:ss"/></li>			
						<li class="isDeal">
							<s:if test='%{isDeal =="0"}'>
								<font style="color: green;">未发货</font>
							</s:if>
							<s:else>
								<font style="color: red;">已发货</font>
							</s:else>
						</li>
						<li class="deleteOrders">
							<input class="mybutton" type="button" value="删除" onclick="deleteOrders('<s:property value="ordersId"/>')" />
						</li>			
					</ul>
				</s:iterator>
			</div>
		</div>
	</center>
</body>
<SCRIPT type="text/javascript">

	function deleteOrders(ordersId){
		if(confirm("确定要订单吗？")){
			location.href="com.huizhi.action/ordersManageAction.action?updateType=delete&ordersId="+ordersId;
		}
	}

</SCRIPT>
</html>
<jsp:include page="bottom.jsp"></jsp:include>
