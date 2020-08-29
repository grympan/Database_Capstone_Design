<!-- #include virtual="/header.asp" -->

<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>

<div id="content">
	<form action="register_ok.asp" method="get">
		<table>
			<tr>
				<td>아이디 </td>
				<td><input type="text" name="registerID" placeholder="ID를 입력해주세요"/></td>
			</tr>
			<tr>
				<td>비밀번호 </td>
				<td><input type="text" name="registerPW" placeholder="PW를 입력해주세요"/></td>
			</tr>
			<tr>
				<td>비밀번호 확인 </td>
				<td><input type="text" name="registerPW2" placeholder="PW를 다시 입력해주세요"/></td>
			</tr>
			<tr>
				<td>이름 </td>
				<td><input type="text" name="registerName" placeholder="이름을 입력해주세요"/></td>
			</tr>
			<tr>
				<td>생일 </td>
				<td><input type="text" name="birthday" placeholder="19900303 형식으로 입력"/></td>
			</tr>
			<tr>
				<td>취미 </td>
				<td>
					<input type="checkbox" name="groupCheckbox" value="0">책 읽기
					<input type="checkbox" name="groupCheckbox" value="1">댄스
					<input type="checkbox" name="groupCheckbox" value="2">작곡
					<input type="checkbox" name="groupCheckbox" value="3">프로그래밍
				</td>
			</tr>
			<tr>
				<td>직업 </td>
				<td><select name="job"><option>대학생</option><option>대학원생</option><option>기타</option></select></td>
			</tr>
		</table>
		<input type="submit" value="회원가입"/>
	</form>
</div>

<!-- #include virtual="/footer.asp" -->