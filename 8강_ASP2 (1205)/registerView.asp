<!-- #include virtual="/header.asp" -->

<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>

<%
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Application("dbConnect")
	
	If Dbcon.state <> 1 Then
		Response.Write "데이터베이스에 연결 X<br/>"
		Response.end
	End If
	
	sql="select * from register"
	Set Rs=Dbcon.Execute(sql)
	
	response.write("<div id='content'>")
	response.write("<table border=1px>")
	
	response.write("<tr>")
	response.write("<td>아이디</td>")
	response.write("<td>비밀번호</td>")
	response.write("<td>이름</td>")
	response.write("<td>생년월일</td>")
	response.write("<td>취미</td>")
	response.write("<td>직업</td>")
	response.write("</tr>")
	
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("id") & "</td>")
		response.write("<td>" & Rs("pw") & "</td>")
		response.write("<td>" & Rs("name") & "</td>")
		response.write("<td>" & Rs("birthday") & "</td>")
		response.write("<td>" & Rs("hobby") & "</td>")
		response.write("<td>" & Rs("job") & "</td>")
		response.write("</tr>")
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")
	
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>

<!--#include virtual="/footer.asp" -->