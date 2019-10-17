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
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Organ Transplantation</title>

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

		/* 		$('#markersTable tbody').on('click', 'tr', function(){
		 var data = table.row(this).data();
		 alert('You clicked on '+data[0]+'\'s row');
		 }); */
	});
</script>
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <span
					class="glyphicon glyphicon-link"></span> Marker
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<form action="/form" method="get">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/h/form">Insert new person <span
								class="glyphicon glyphicon-plus"></span></a></li>
					</ul>
				</form>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="container" style="width: 51%; padding-top: 5%">
		<div class="jumbotron">
			<div class="container text-center">
				<h2 style="text-aling: center">
					Hello there, user! <span class="glyphicon glyphicon-user"></span>
				</h2>
				<div class="btn-group" role="group" aria-label="Button group">
					<!-- <p><a class="btn btn-primary btn-md" href="http://www.gstatic.com/tv/thumb/persons/817175/817175_v9_ba.jpg" title="festina lente" target="_blank" role="button">Learn more</a></p> -->
					<button type="button" id="markerButton" class="btn btn-primary"
						style="margin-right: 5px" onclick="location.href='#'">Marker</button>
					<button type="button" id="personButton" class="btn btn-primary"
						style="margin-left: 5px" onclick="location.href='/h/persons'">Person</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div style="width: 80%; margin: 0 auto; margin-top: 100px;">
				<c:if test="${not empty markers}">
					<table id="markersTable" class="table table-striped table-bordered"
						style="width: 100%">
						<thead class="theads">

							<tr style="color: white; background-color: black">
								<th>Id</th>
								<th>Person_Id</th>
								<th>Gender</th>
								<th>Region</th>
								<th style="color: #7FFFD4">Type</th>
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