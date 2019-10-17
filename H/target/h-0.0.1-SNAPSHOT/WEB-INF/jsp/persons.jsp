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
		$('#personsTable').DataTable();
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div style="width: 43%; margin: 0 auto; margin-top: 100px;">
				<c:if test="${not empty persons}">
					<table id="personsTable" class="table table-striped table-bordered"
						style="width: 100%">
						<thead class="theads">
						<!-- 	<tr>
								<div class="greet">
									<p><strong>Hello User!</strong></p>
								</div>
								<div class="search-container">
									<form>
										<input type = "text" placeholder = "Search id..." name = "search">
										<button class="search-button" name="search" type="submit">ok</button>
									</form>
								</div>
							</tr> -->
							<tr style="color:white;background-color:black">
								<th>Id</th>
								<th>Gender</th>
								<th class="hed">A1</th>
							<!-- <th>A2</th> -->	
								<th class="hed">B1</th>
							<!-- <th>B2</th> -->
								<th class="hed">C1</th>
							<!-- <th>C2</th> -->
								<th class="hed">DRBL1</th>
							<!-- <th>DRBL2</th> -->
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${persons.content}" var="p">
								<tr>
									<td>${p.id}</td>
									<td>${p.gender}</td>
									<td>${p.a1}</td>
								<!-- <td>${p.a2}</td> -->
									<td>${p.b1}</td>
								<!-- <td>${p.b2}</td> -->	
									<td>${p.c1}</td>
								<!-- <td>${p.c2}</td> -->
									<td>${p.drb11}</td>
								<!-- <td>${p.drb12}</td> -->
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