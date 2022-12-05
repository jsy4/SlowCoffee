<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function toBase64(event) {
		var reader = new FileReader();
		reader.readAsDataURL(event.target.files[0]);
		reader.onload = function(event) {
			var base64 = event.target.result;// img -> base64
		};
	}
</script>

</head>
<body>
	<input type="file" onchange="toBase64(event);" />
</body>
</html>