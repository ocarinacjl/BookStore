<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
   	<jsp:include page="manageLeft1.jsp"></jsp:include>
   	<body>
<div class="main">
   <div class="container">
		<s:action name="oneTypeAction" executeResult="false"></s:action>
		
		<div class="announce" id="announce">
	  <h1 class="tz-title-4 tzcolor-blue">
         <span class="tzweight_Bold"><s:property value="#request.typeDescribe"/></span>
      </h1>
      <div class="section_group"> 
      <s:iterator value="#attr.bookList" status="st">
      	<div class="col_1_of_5 span_1_of_5">
      		<div class="col_1"><img src='../upload/<s:property value="bookPicture" />' class="img-responsive" alt=""/></div>
      		<div class="desc">
      			<h3><a href="singleBook.jsp?bookId=<s:property value="bookId" />"><s:property value="bookName"/></a></h3>
                <p>
						作者：<a class="aboutBook" href="oneType.jsp?searchType=bookAuthor&searchDescribe=<s:property value="bookAuthor"/>"><s:property value="bookAuthor"/></a>
						<br />
						出版社：<a class="aboutBook" href="oneType.jsp?searchType=bookPress&searchDescribe=<s:property value="bookPress"/>"><s:property value="bookPress"/></a>
						<br />
						类别：<a class="aboutBook" href="oneType.jsp?searchType=bookType&searchDescribe=<s:property value="type.typeId"/>"><s:property value="type.typeName"/></a>
						<br />
					</p>
      		</div>
        </div>
		</s:iterator>
        <div class="clearfix"> </div>
      </div>
      </div>
	  <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a class="scroll" href="#home" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</div>  
</div>   
</body>
</html>

	<jsp:include page="bottom.jsp"></jsp:include>
