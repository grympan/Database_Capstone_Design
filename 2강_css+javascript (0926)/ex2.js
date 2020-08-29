window.onload = function () {
	document.registerForm.submitButton.onclick = function (){
		var registerForm = document.registerForm;
		var id = registerForm.id.value;
		var pw = registerForm.pw.value;
		var pw_ok = registerForm.pw_ok.value;
		var name = registerForm.name.value;
		var gender = registerForm.gender.value;
		var email = registerForm.email.value;
		var phoneNumber = registerForm.phoneNumber.value;
		var submitButton = registerForm.submitButton.value;
		var regex;
		
		if(id==""){alert("ID를 입력해주세요"); return;}
		if(pw==""){alert("비밀번호를 입력해주세요"); return;}
		if(pw_ok==""){alert("비밀번호 확인을 입력해주세요"); return;}
		if(name==""){alert("이름을 입력해주세요"); return;}
		if(gender==""){alert("성별을 선택해주세요"); return;}
		if(email==""){alert("이메일을 입력해주세요"); return;}
		if(phoneNumber==""){alert("전화번호를 입력해주세요"); return;}
		
		if(pw!=pw_ok){alert("비밀번호와 비밀번호 확인이 다릅니다"); return;}
		
		regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		if(regex.test(email) === false) {
			alert("잘못된 이메일입니다.");
			return;
		}
		
		regex=/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
			if(regex.test(phoneNumber) === false) {
			alert("잘못된 전화번호입니다.");
			return;
		}
		
		alert("회원가입 완료");
	}
}