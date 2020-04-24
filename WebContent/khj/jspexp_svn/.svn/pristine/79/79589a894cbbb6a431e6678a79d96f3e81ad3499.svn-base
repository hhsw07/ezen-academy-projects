<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String colors[]={"red","orange","yellow","green",
					"blue","navy","purple"};
					
					
	%>			
	<table width="300" height="300" border>
		<%
		for(int idx=0;idx<9;idx++){
			int rIdx = (int)(Math.random()*colors.length);
			
			if(idx%3==0){
		%>
				<tr>
		<%
			}
		%>
			<td style="background-color:<%=colors[rIdx]%>;">
				<%=idx+1%></td>
			<%
			if(idx%3==2){	
			%>
				</tr>
			<%
			}
			%>
			
		<%
		}
		%>
	</table>	
</body>
</html>