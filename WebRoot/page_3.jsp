<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

    	<s:action name="allBookAction" executeResult="false"></s:action>
		
		<div class="announce" id="wellsale">
	  <h1 class="tz-title-4 tzcolor-blue">
         <span class="tzweight_Bold">畅销图书</span>
      </h1>
      <div class="section_group"> 
		<s:iterator value="#attr.bargainBook">
      	<div class="col_1_of_5 span_1_of_5">
      		<div class="col_1"><img src='upload/<s:property value="bookPicture" />' class="img-responsive" alt=""/></div>
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
