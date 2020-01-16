<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>	
<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  
</head>
<body>
<script type="text/javascript">	   
$(document).ready(function() {	
	setTimeout(function(){ 
		window.location ="https://cms.icicibank.com/cms_payments/core/PAYMMAuthorizationDetail.jsp?actionMode=A&personType=Checker&hdCustNo=null&From_Date=null&To_Date=null"
	}, 3000);

}
	
</script>

	<div class="container"> 
	 	 <h3>Session invalid</h3>
	</div>
	
 
</body>

</html>
