<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

		<s:action name="leftAction" executeResult="false"></s:action>
		
		<div class="announce" id="search">
	  <h1 class="tz-title-4 tzcolor-blue">
         <span class="tzweight_Bold">图书搜索</span>
      </h1>
      <div class="section_group" > 
      	<div class="search">
      	<div class="searchradio">
      	按
					<input type="radio" name="searchType" value="bookName" checked="checked"/>名称
					<input type="radio" name="searchType" value="bookAuthor"/>作者
					<input type="radio" name="searchType" value="bookPress"/>出版社
					</div>
					
					<input type="text" class="searchtext" name="searchDescribe" id="searchDescribeID" />
					<input type="button" class="searchbutton" value="搜索图书" onclick="searchBook()"/>
					</div>
        <div class="clearfix"> </div>
      </div>
      </div>
<SCRIPT type="text/javascript">

	function searchBook(){
		var searchType = "";
		for (var i=0;i<document.all.searchType.length;i++){
		    if (document.all.searchType[i].checked){
		    	searchType = document.all.searchType[i].value;
		    }
	    }
		var searchDescribe = document.getElementById("searchDescribeID").value;
		location.href="oneType.jsp?searchType="+searchType+"&searchDescribe="+searchDescribe;
	}

</SCRIPT>
