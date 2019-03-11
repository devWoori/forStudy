<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="productReview.model.vo.MyPdReview, java.util.ArrayList, java.sql.Date" %> 
<%
	ArrayList<MyPdReview> mypList = (ArrayList<MyPdReview>)request.getAttribute("mypList");
	int listCount = ((Integer)request.getAttribute("listCount")).intValue();
	int startPage = ((Integer)request.getAttribute("startPage")).intValue();
	int endPage = ((Integer)request.getAttribute("endPage")).intValue();
	int maxPage = ((Integer)request.getAttribute("maxPage")).intValue();			
	int currentPage = ((Integer)request.getAttribute("currentPage")).intValue();
%>

<!DOCTYPE html>
<html>
	<head>
		<%@ include file="/views/mypage/mypageHead.jsp"%>
	</head>
	<body>
		<div class="container myContainer">
			<div id="list_name">내가 쓴 후기(<%= listCount %>)</div>
			<div>
				<table class="table table-hover">
					<tbody>
						<% for(MyPdReview mypr : mypList){ %>
						<tr>
							 <td width="30%">
							 	<div class="pImg" style="background:url(<%= mypr.getpImg() %>) no-repeat center;background-size:cover;">
							 	</div>
							 	<div class="pInfo">
							 		<strong class="pName"><%= mypr.getpName() %></strong>
							 	</div>
							 </td>
							 <td width="70%">
							 	<input type="hidden" id="pRnum" value="<%= mypr.getpReviewNo() %>" />
							 	<p><input type="text" id="pRdate" value="<%= mypr.getpReviewDate() %>" readonly /></p>
							 	<p><input type="text" id="pRtitle" value="<%= mypr.getpReviewTitle() %>" readonly /></p>
							 	<p><input type="text" id="pRwriter" value="<%= mypr.getMemUserid() %>" readonly /></p>
							 	<p>
							 		<textarea id="pRcontent"><%= mypr.getpReviewContent() %></textarea>
							 	</p>
							 	<div class="btBox">
							 		<a href="javascript:void(0);" onclick="openChildWindow();" class="btModify">수정</a>
							 		<a href="#;" class="btDelete">삭제</a>
							 	</div>
							 </td>
						</tr>
						<% } %>
					</tbody>
				</table>
				
				<!-- Paging 처리 -->
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
				  	<!-- 이전 -->
				    <li class="page-item">
				   	<% if((currentPage - 5) < startPage && (currentPage - 5) > 1){ %>
				      <a class="page-link" href="/semi/mypreview?mem_userid=<%= loginMember.getMemUserid() %>&page=<%= startPage - 10 %>" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">Previous</span>
				      </a>
				    <% } else { %>
				      <a class="page-link" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">Previous</span>
				      </a>
				   	<% } %>
				    </li>
				    <!-- //이전 -->
				    
				   <!-- 페이지 -->
				    <% for(int p = startPage; p <= endPage; p++){ 
				    	if(p == currentPage){
				    %>
				    <li class="page-item active">
				    	<a class="page-link" ><%= p %></a>
				    </li>
					<% } else { %>
					<li class="page-item">
						<a class="page-link" href="/semi/mypreview?mem_userid=<%= loginMember.getMemUserid() %>&page=<%= p %>"><%= p %></a>
					</li>
					<% }} %>
					<!--// 페이지 -->
					
					<!-- 다음 -->
				    <li class="page-item">
				   <% if((currentPage + 5) > endPage && (currentPage + 5) < maxPage){ %>
				      <a class="page-link" href="/semi/mypreview?mem_userid=<%= loginMember.getMemUserid() %>&page=<%= endPage + 10 %>" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">Next</span>
				      </a>
				    <% } else { %>
				      <a class="page-link" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">Next</span>
				      </a>
				    <% } %>
				    </li>
				    <!-- //다음 -->
				  </ul>
				</nav>
	
				
			</div>
		</div>
		<%@ include file="/views/common/footer.jsp"%>
	</body>
</html>