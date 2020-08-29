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
	
	If Dbcon.state<> 1 Then
					Response.Write "데이터베이스에 연결 X<br/>"
					Response.end
	End if
	
	Dim id,pw,pw2,name,birthday,hobby,job
	
	id=request("registerID")
	pw=request("registerPW")
	pw2=request("registerPW2")
	name=request("registerName")
	birthday=request("birthday")
	hobby=request("groupCheckbox")
	job=request("job")
	
	sql="insert into register (id,pw,name,birthday,hobby,job) values ('{id}','{pw}','{name}','{birthday}','{hobby}','{job}')"
	sql=Replace(sql, "{id}", id)
	sql=Replace(sql, "{pw}", pw)
	sql=Replace(sql, "{pw2}", pw2)
	sql=Replace(sql, "{name}", name)
	sql=Replace(sql, "{birthday}", birthday)
	sql=Replace(sql, "{hobby}", hobby)
	sql=Replace(sql, "{job}", job)
	response.write "<script>alert("" "& sql & " "");</script>"
	
	Set Rs=Dbcon.Execute(sql)
	
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>

<!-- #include virtual="/footer.asp" -->