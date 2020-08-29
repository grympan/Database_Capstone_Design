<% Option Explicit %>
<%
	Dim item
	session("name")="KMS"
	session("addr")="Incheon"
	session("age")="27"
	session("hobby")="billiard"
	
	response.write session.contents("name")& "<br/>"
	response.write session.contents("addr")& "<br/>"
	response.write session.contents("age")& "<br/>"
	response.write session.contents("hobby")& "<br/>"
	
	session.contents.remove("hobby")
	
	response.write"<hr>"
	
	For each item in session.contents
		response.write "<p>" & item & " : " & session.contents(item)& "</p>"
	Next
%>