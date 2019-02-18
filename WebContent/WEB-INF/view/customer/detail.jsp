<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../home/top.jsp"/>


<link rel="stylesheet" 
	href="${css}/customer/list.css" />
<link rel="stylesheet" href="${css}/customer/navi_bar.css" />
<div class="grid-item" id="navi_bar">
	<jsp:include page="../home/post-navi-bar.jsp"/>
	</div>
<div class="grid-item" id="content">
	<div class="grid-item" id="content">
 	<h1><font style="font-size: 30px">검색 결과</font></h1>
	</div>

<div class="row">

  <div class="col-xs-6">
  	<div class="grid-item" id="content">
	  <img src="${img}/default-avatar.jpg" style="height: 200px; width: 100%;"/>
  	</div>
  </div>
  <div class="col-xs-6" >
   	 <div class="grid-item" id="content">
  				아이디: <br />
				이름 : <br />
				생년월일 :<br />
				성별 : <br />
				핸드폰 :<br />
				우편번호 :<br />
				도로명 : <br />
				상세주소 : <br />
  		</div>
 	 <div class="grid-item" id="content">
  				${cust.customerID}<br />
				${cust.customerName}<br />
				${cust.ssn}<br />
				남 <br />
				${cust.phone}<br />
				${cust.postalcode}<br />
				${cust.city}<br />
				${cust.address}<br />
  		</div>
 	 </div>
	  
		<div class="grid-item">
			<span id="update_btn" class="label label-primary">수정</span>
		</div>
		<div class="grid-item">
			<span id="list_btn" class="label label-danger">리스트</span>
		</div>
		
	</div>
</div>

<jsp:include page="../home/bottom.jsp"/>
<script>
$('#update_btn').attr('style','cursor:pointer').click(function(){
	 alert('수정!');
	location.assign('${ctx}/customer.do?cmd=cust_retrieve&page=update&customerID=${cust.customerID}');
});
$('#list_btn').attr('style','cursor:pointer').click(function(){
	 alert('리스트!');
	location.assign('${ctx}/customer.do?cmd=cust_list&page=list');
});
</script>