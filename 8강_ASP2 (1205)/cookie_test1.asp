<html>
	<head>
		<title>Cookie 저장</title>
	</head>
	<script>
		function move(){
			document.location.href="cookie_test2.asp";
		}
	</script>
	<body>
		<%
			response.cookies("user")="KMS"
			response.cookies("user").expires = "Jan 1, 2020"
		%>
	</body>
	<input type="button" value="Move Page" onclick="move()">
</html>