<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Dobrodosli</title>

<!--CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="${ctxpath}/../resources/css/bootstrap.min.css"/>" />

<link rel="stylesheet" type="text/css"
	href="<c:url value="${ctxpath}/../resources/css/dataTables.bootstrap.min.css"/>" />

<link rel="stylesheet" type="text/css"
	href="<c:url value="${ctxpath}/../resources/css/style.css"/>" />

<!--JS-->
<script src="<c:url value="${ctxpath}/../resources/js/jquery.min.js" />"></script>
<script
	src="<c:url value="${ctxpath}/../resources/js/jquery.dataTables.min.js" />"></script>
<script
	src="<c:url value="${ctxpath}/../resources/js/bootstrap.min.js" />"></script>
<script
	src="<c:url value="${ctxpath}/../resources/js/dataTables.bootstrap.min.js" />"></script>

<!--Favicon-->
<link rel="shortcut icon"
	href="<c:url value="${ctxpath}/../resources/images/favicon.png" />" />

<script type="text/javascript">
	$(document).ready(function() {
		$('#markersTable').DataTable();
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div style="width: 43%; margin: 0 auto; margin-top: 100px;">
				<c:if test="${not empty markers}">
					<table id="markersTable" class="table table-striped table-bordered"
						style="width: 100%">
						<thead class="theads">
					
							<tr style="color:white;background-color:black">
								<th>Id</th>								
								<th>Person_Id</th>		
								<th>Gender</th>
								<th>Region</th>
								<th>Type</th>
								<th class="hed">A</th>
								<th class="hed">B</th>
								<th class="hed">C</th>
								<th class="hed">DRB1</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${markers.content}" var="p">
								<tr>
									<td>${p.id}</td>
									<td>${p.personId}</td>
									<td>${p.gender}</td>
									<td>${p.region}</td>
									<td>${p.type}</td>
									<td>${p.a}</td>
									<td>${p.b}</td>
									<td>${p.c}</td>
									<td>${p.drb1}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>