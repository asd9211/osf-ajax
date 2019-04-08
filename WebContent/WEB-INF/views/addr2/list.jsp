<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>번호</th>
		<th>시도</th>
		<th>구군</th>
		<th>동</th>
		<th>리</th>
		<th>번지</th>
		<th>호</th>
	</tr>
	<tbody id="tBody">
	</tbody>
</table>
<script>
	var xhr = new XMLHttpRequest();
	xhr.open('GET','/addr2/list');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				var list = JSON.parse(xhr.response);
				var html = '';
				for(var addr of list){
					html += '<tr>';
					html += '<td>' + addr.ad_num + '</td>';
					html += '<td>' + addr.ad_sido + '</td>';
					html += '<td>' + addr.ad_gugun + '</td>';
					html += '<td>' + addr.ad_dong + '</td>';
					html += '<td>' + (addr.ad_lee?addr.ad_lee:'') + '</td>';
					html += '<td>' + addr.ad_bunji + '</td>';
					html += '<td>' + addr.ad_ho + '</td>';
					html += '</tr>';
				}
				document.querySelector('#tBody').innerHTML = html;
			}
		}
	}
	xhr.send();
</script>
</body>
</html>