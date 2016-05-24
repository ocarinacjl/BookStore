<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>���ﳵ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
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
         <span class="tzweight_Bold">�ҵĹ��ﳵ</span>
      </h1>	
		<div id="shoppingCart">
			<div id="shoppingBook" style="padding-top: 20px;padding-left: 8px;">
				<ul class="shoppingBookUlHead">
					<li class="sequence">����</li>
					<li class="bookName">ͼ������</li>
					<li class="bookPrice">ͼ��۸�</li>
					<li class="bookAmount">��������</li>
					<li class="delete" >ɾ��ͼ��</li>
				</ul>
				<s:if test="%{#session.shoppingBook != null}">
					<s:iterator value="#session.shoppingBook" status="st">
						<ul class="shoppingBookUl">
							<li class="sequence">
								<s:property value="#st.getIndex()+1"/>
							</li>
							<li class="bookName"><a class="bookName" href="singleBook.jsp?bookId=<s:property value="bookId" />"><s:property value="bookName"/></a></li>
							<li class="bookPrice"><s:property value="bookPrice"/> Ԫ</li>
							<li class="bookAmount">
								<input style="width:50%; color:black;" type="text" id="bookAmount<s:property value="bookId"/>" value='<s:property value="bookAmount"/>'/>
								<input class="mybutton" style="width:30%;display:inline-block;" type="button" value="�޸�" onclick="updateBookAmount('<s:property value="bookId"/>')">
							</li>
							<li class="delete">
								<input class="mybutton" type="button" value="ɾ��" onclick="deleteBook('<s:property value="bookId"/>')">
							</li>
						</ul>
					</s:iterator>
					<ul id="shoppingBookUlFoot">
						<li style="float:right" id="shoppingBook" >
							<p>�ܼƽ�<s:property value="#session.totalMoney"/> Ԫ</p>
						<s:if test="%{#session.shoppingBook.size() > 0}">
							<input class="mybutton" type="button" value="ȷ������" onclick="addOrders()">
						</s:if>
						</li>
					</ul>
				</s:if>
			</div>
		</div>
	</center>
</body>

<SCRIPT type="text/javascript">

	function updateBookAmount(bookId){
		var pattern = /^[1-9][0-9]{0,}$/;
		var bookAmount = document.getElementById("bookAmount"+bookId).value;
		if(pattern.test(bookAmount)){
			location.href = "com.huizhi.action/updateCartAction.action?updateType=update&bookId="+bookId+"&bookAmount="+bookAmount;
		}
	}
	function deleteBook(bookId){
		if(confirm("ȷ��Ҫɾ����")){
			location.href = "com.huizhi.action/updateCartAction.action?updateType=delete&bookId="+bookId;
		}
	}
	function addOrders(){
		if(confirm("ȷ��Ҫ������")){
			location.href = "com.huizhi.action/ordersManageAction.action?updateType=add";
		}
	}

</SCRIPT>
</html>
<jsp:include page="bottom.jsp"></jsp:include>
