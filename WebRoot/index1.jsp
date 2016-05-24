<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

   	<jsp:include page="head1.jsp"></jsp:include>
<div class="main">
   <div class="container">
   	<jsp:include page="page_search.jsp"></jsp:include>
   	<jsp:include page="page_1.jsp"></jsp:include>
   	<jsp:include page="page_2.jsp"></jsp:include>
   	<jsp:include page="page_3.jsp"></jsp:include>
    <jsp:include page="page_4.jsp"></jsp:include>
	<jsp:include page="bottom.jsp"></jsp:include>
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
</body>
</html>