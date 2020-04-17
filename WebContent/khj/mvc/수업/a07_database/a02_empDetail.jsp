<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,
           jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<style>
	select{width:170px;height:25px;}
</style>
<%--
# 상세화면
1. 1개데이터 로딩
   empno값을 통해서Emp데이터를 조회처리하는 모듈을 만든다.
2. 기능
	1) 수정
		- 
	2) 삭제   
 --%>

<%

// 초기 메인화면에서 상세 조회, 수정,삭제 처리
String proc = request.getParameter("proc"); if(proc==null) proc="";	 
int empno=0; String empnoS=request.getParameter("empno");  if(empnoS!=null) empno=new Integer(empnoS);
String ename = request.getParameter("ename"); if(ename==null) ename="";	
String job = request.getParameter("job"); if(job==null) job="";		
int mgr=0;String mgrS = request.getParameter("mgr"); if(mgrS!=null) mgr=Integer.parseInt(mgrS);		
int deptno=0;String deptnoS = request.getParameter("deptno"); if(deptnoS!=null) deptno=Integer.parseInt(deptnoS);		
double sal=0;String salS = request.getParameter("sal");	if(salS!=null) sal=Double.parseDouble(salS);	
double comm=0;String commS = request.getParameter("comm"); if(commS!=null) comm=Double.parseDouble(commS);		

A01_Database dao = new A01_Database();
// 요청값이 있을 때만 DB 입력 처리.
if(proc.equals("upt")){
	// DB입력을 위해 넘겨줄, 객체 생성..
	// 수정 들어가 객체 만들고, 처리 하기..
	Emp upt = new Emp(empno,ename,job,mgr,null,sal,comm,deptno);
	// 수정 모듈 호출.
	dao.updateEmp(upt);
}
if(proc.equals("del")){
	dao.deleteEmp(empno);
	//response.sendRedirect("a02_empList.jsp");
}

Emp emp = new Emp();
if(empnoS!=null&&!proc.equals("del")){
	empno=new Integer(empnoS);
	
	// 상세화면에 들어가 emp객체 할당.
	emp = dao.getEmp(empno);
}
%>
<body>
	<h2 align="center">사원 상세(<%=empno%>)</h2>
	<form method="post">
		<input type="hidden" name="proc" value="upt"/>
	<table align="center">
		<tr><th>사원번호</th>
			<td><input type="text" name="empno" value="<%=emp.getEmpno()%>"/></td>
			<th>직책</th><td><input type="text" name="job" 
								 value="<%=emp.getJob()%>"/></td></tr>	
		<tr><th>사원명</th>
			<td><input type="text" name="ename" value="<%=emp.getEname()%>"/></td>
			<th>입사일</th>
			<td><%=emp.getHiredate()%>
			</td></tr>
		<tr><th>관리자명</th>
			<td><select name="mgr">
					<option value="7566">JONES</option>
					<option value="7782">CLARK</option>
					<option value="7839">JONES</option>
					<option value="7698">KING</option>
					<option value="7902">FORD</option>
				</select></td>
			<th>부서명</th>
			<td><select name="deptno" >
					<option value="10">ACCOUNTING</option>
					<option value="20">RESEARCH</option>
					<option value="30">SALES</option>
					<option value="40">OPERATIONS</option>
				</select></td></tr>		
		<tr><th>급여</th>
			<td><input type="text" name="sal" value="<%=emp.getSal()%>"/></td>
			<th>보너스</th><td><input type="text" 
									name="comm" value="<%=emp.getComm()%>"/></td></tr>	
		<tr><td colspan="4" style="text-align:right">
				<input type="button" value="수정" id="uptBtn" />
				<input type="button" value="삭제" id="delBtn" />
				<input type="button" value="조회화면"  onclick="javascript:goMain()"/>
			</td></tr>
	</table>
	</form>
</body>
<script type="text/javascript">
	var mgrVal=<%=emp.getMgr()%>;
	var deptnoVal="<%=emp.getDeptno()%>";
	var mgr = document.querySelector("[name=mgr]");
	var deptno = document.querySelector("[name=deptno]");
	mgr.value = mgrVal;
	deptno.value = deptnoVal;

	var proc="<%=proc%>";
	if(proc=="upt"){
		if(!confirm("수정 성공!\n확인 하시겠습니까?")){
			location.href="a02_empList.jsp";
		}
	}
	if(proc=="del"){
		alert("삭제되었습니다");
		location.href="a02_empList.jsp";
	}
	
	function goMain(){
		location.href="a02_empList.jsp";
	}
	var uptBtn = document.querySelector("#uptBtn");
	uptBtn.onclick=function(){
		document.querySelector("[name=proc]").value="upt";
		document.querySelector("form").submit();
	};
	var delBtn = document.querySelector("#delBtn");
	delBtn.onclick=function(){
		document.querySelector("[name=proc]").value="del";
		document.querySelector("form").submit();
	};	
	
	
</script>
</html>







