<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="./freeModify.insa" method="get">
	 <input type="hidden" value="${freeRead.getNum() }" name="num">
	<table border="1" align="center" width="100%">
		<tr height="10px" align="center">
			<td>번호</td>
			<td>제목</td>
			<td>내용</td>
			<td>작성자</td>

		</tr>
		<tr>
		파일 : <a href="./freeDown.insa?num=${freeRead.num }">${freeRead.fileName }</a>
		</tr>
		<!-- glist의 길이 많큼 for문 실행 -->
		
			<tr align="center" height="15px">
			
				<td>${freeRead.num}</td>
				<!-- 게시물 번호 -->
				<td>${freeRead.title}</td>
				<!--  게시물 작성일자 -->
				<td>${freeRead.content  }</td>
				<!--  게시물 작성자ID -->
				<td>${freeRead.empid  }</td>
			</tr>
			
	</table>
	<input type="submit" value="수정"> 
	<input type="button" value="삭제" onclick="location.href='./freeDelete.insa?num=${freeRead.num }'" />
	<input type="button" value="목록" onclick="location.href='./freeList.insa'"/>
		
		<img src="upload/Desert.jpg"> 
		
		</form>
</body>
</html>