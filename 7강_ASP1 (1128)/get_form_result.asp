<%
	id = request.queryString("id")
	pw = request.queryString("pw")
%>
<html>
<head>
	<title>간단한 Form 예제의 결과</title>
</head>

<body>
<p>사용자 입력 정보</p>
	이름    : <%=id%> <br/>
	암호    : <%=pw%>
</body>
</html>