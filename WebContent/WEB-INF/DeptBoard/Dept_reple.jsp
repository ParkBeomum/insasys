<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function cancle() {
		location.href="./gesipan.jnb";
	}
</script>
</head>
<body>	
	<form action="./reple_save" method="post">
		<input type ="hidden" name = "b_ref" value = "${dto.b_ref }">
		<input type ="hidden" name = "b_step" value = "${dto.b_step }">
		<input type ="hidden" name = "b_level" value = "${dto.b_level }">
		<table border="1" align="center" width="100%">
			<tr>
				<td><label>�ۼ��� : 
				<input type="text" name="name" > </label></td>
			</tr>
			<tr>
				<td width="100%">
					<label>�� �� : 
					<input type="text" name="title" size="60"></label>
				</td>
			</tr>
			<tr>
				<td width="100%"><textarea name="content" cols="70" rows="15"></textarea></td>
			</tr>
		</table>
		<table align="right">
			<tr>
				<td><input type="submit" value="����"></td>
				<td><input type="button" value="���" onclick="cancle()"></td>
			</tr>
		</table>
	</form>
</body>
</html>