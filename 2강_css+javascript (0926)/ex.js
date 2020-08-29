window.onload = function (){
	//이벤트 핸들러 등록
	document.test_form.input1.onclick = function fct1(){
		alert('숫자를 입력해주세요');
	};
	document.test_form.input2.onclick = function fct2(){
		alert(document.test_form.input1.value);
	};
	document.test_form.input3.onclick = function fct3(){
		var temp=10;
		for(var i=0;i<10;i++)
		{
			temp+=i;
		}
		alert(temp);
	};
	document.test_form.input4.onmouseover = function fct4_1(){
		alert("마우스가 이미지 위에 있습니다");
	};
	document.test_form.input4.onmouseout = function fct4_2(){
		alert("마우스가 이미지를 벗어 났습니다");
	};
	document.test_form.input5.onclick = function fct5(){
		location.href = "http://www.naver.com";
	};
}