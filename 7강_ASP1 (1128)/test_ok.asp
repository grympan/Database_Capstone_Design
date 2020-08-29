<%
Dim valueX,valueY

X=request("x")
Y=request("y")

valueX = CInt(X)
valueY = CInt(Y)

%>

<%=valueX+valueY%>