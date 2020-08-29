<%
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Application("dbConnect")
	
	sql="EXEC sp_helpdb;"
	Set Rs=Dbcon.Execute(sql)
	
	do while not(Rs.Eof)
		response.write(Rs("name") & "")
		response.write(Rs("db_size") & "")
		response.write(Rs("Owner") & "")
		response.write(Rs("dbid") & "")
		response.write(Rs("created") & "")
		response.write("<br/>")
		Rs.movenext
	Loop
	
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>