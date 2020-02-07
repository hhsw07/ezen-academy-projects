function outChange(obj){
	alert("h3 또는 h4 클릭~~");
	obj.style.backgroundColor="black";
	obj.style.color="pink";
	obj.innerHTML="외부 처리함수!!"
}
/*
ex) a04_includeExp.html
	내부 처리함수 선언
	- h1,h2 : 클릭시 배경색상, 내용 변경
	외부 처리함수 선언(a04_script.js)
	- h3,h4 : 클릭시 글자색상, 내용변경
 */