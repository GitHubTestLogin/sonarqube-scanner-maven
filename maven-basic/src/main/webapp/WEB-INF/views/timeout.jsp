<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Retail Transaction Settlement Platform</title>
<c:set var="context" value="${pageContext.request.contextPath}" />
<link href='${context}/resources/assets/css/style/bootstrap.min.css' rel="stylesheet" />
<link href='${context}/resources/assets/css/style/bootstrap-theme.min.css' rel="stylesheet" />
<link href='${context}/resources/assets/css/style/timeout.css' rel="stylesheet" />

</head>
<body>

<div class="container-fluid" style="padding-left: 0; padding-right: 0;">
		<div class="left hidden-xs">
			<div class="top-left">
				<table class="centerTable leftTable">
					<tr>
						<td><img src="${context}/resources/assets/images/shell_logo.png" alt="Logo" width="269.7"
							height="250" />
							
							</td>
					</tr>
					<tr>
						<td>
							<h4>Retail Transaction Settlement Platform</h4>
						</td>
					</tr>
				</table>

			</div>

		</div>
		<div class="right">
			<div class="top-right">
				<div class="visible-xs" style="padding-top: 10%">
					<img src="${context}/resources/assets/images/shell_logo.png"
						style="max-width: 30%; max-height: 30%"
						class="img-responsive center" alt="Logo" />
					<h3 class="text-center center">
						<b>Retail Transaction Settlement Platform</b>
					</h3>
				</div>

				<table class="centerTable rightTable">
					<tr>
						<td>
							<h4>
								${msg}
							</h4>
						</td>

					</tr>
				</table>
				
			</div>

		</div>
	</div>
	<script type="text/javascript">
	var frame = document.createElement("iframe");
	frame.src = '${smuri}';
    frame.style.display= "none";
    document.body.appendChild(frame);
	</script>
</body>
</html>