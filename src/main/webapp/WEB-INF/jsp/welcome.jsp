<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<html lang="en">

		<head>
			<!-- <spring:url value="/css/main.css" var="springCss"/><link href="${springCss}" rel="stylesheet"/> -->
			<c:url value="/css/main.css" var="jstlCss" />
			<link href="${jstlCss}" rel="stylesheet" />
			<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
		</head>

		<body>
			<script type="text/javascript">
			$(document).ready(function () {
			  var targetiframe = document.getElementById('icms_Initiate_sercurity').contentWindow;
			  let Corporate_ID = document.getElementById('Corporate_ID').value;
			  let User_ID = document.getElementById('User_ID').value;
			  let VERSION = document.getElementById('VERSION').value;
			  let VERIFYURL = document.getElementById('VERIFYURL').value;
			  const data = {
			    Corporate_ID: Corporate_ID,
			    User_ID: User_ID,
			    VERSION: VERSION,
			    VERIFYURL: VERIFYURL,
			  }

			  if (window.location.hash) {
			    var urlimage = window.location.hash.substring(1);
			    $(window).on("message", function (e) {
			      console.log('setting to child 0')
			      targetiframe.postMessage(JSON.stringify(data), "http://icici-icms.niveussolutions.com");
			    });
			  }

			  function handleMessage(e) {
			    // Get reference to display div 
			    console.log('setting to child 1')
			    targetiframe.postMessage(JSON.stringify(data), "http://icici-icms.niveussolutions.com");
			  }
			  if (window.addEventListener) {
			    window.addEventListener('message', handleMessage, false);
			  } else if (window.attachEvent) {
			    window.attachEvent('onmessage', handleMessage);
			  }
			  $(window).on("message", function (e) {
			    console.log(urlimage), 'url';
			  });
			  if (window.location.hash) {
			    var urlimage = window.location.hash.substring(1);
			  }
			  $(window).on("message", function (e) {
			  })
			})
			</script>
			<form id="form_cms">
				<input type="hidden" id="Corporate_ID" name="Corporate_ID" value="${Corporate_ID}">
				<input type="hidden" id="User_ID" name="User_ID" value="${User_ID}">
				<input type="hidden" id="VERIFYURL" name="VERIFYURL" value="${VERIFYURL}">
				<input type="hidden" id="VERSION" name="VERSION" value="${VERSION}">
			</form>
			<div class="container">
				<iframe name="icms_Initiate_sercurity" id="icms_Initiate_sercurity" width="100%" height="100%" style="position: absolute; height: 100%; border: none" 
				src="http://icici-icms.niveussolutions.com/"> </iframe>
			</div>
		</body>
		</html>
