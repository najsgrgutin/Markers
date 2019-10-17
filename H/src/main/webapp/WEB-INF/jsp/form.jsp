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

<title>Insert form</title>

<link rel="stylesheet" type="text/css" href="<c:url value="${ctxpath}/../resources/css/bootstrap.min.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="${ctxpath}/../resources/css/dataTables.bootstrap.min.css"/>" />
	
<script src="<c:url value="${ctxpath}/../resources/js/jquery.min.js" />"></script>
<script src="<c:url value="${ctxpath}/../resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="${ctxpath}/../resources/js/dataTables.bootstrap.min.js" />"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#submit-btn").click(function(event){
			var data = {}
			data["region"] = $("#region").val();
			data["gender"] = $("#gender").val();
			data["yearOfBirth"] = $("#year").val();
			data["a1"] = $("#a1").val();
			data["a2"] = $("#a2").val();
			data["b1"] = $("#b1").val();
			data["b2"] = $("#b2").val();
			data["c1"] = $("#c1").val();
			data["c2"] = $("#c2").val();
			data["drb11"] = $("#drb11").val();
			data["drb12"] = $("#drb12").val();
				
			$("#submit-btn").prop("disabled", true);
			
			$.ajax({
				type: "POST",
				contentType: "application/json",
				url: "/h/markers",
				data: JSON.stringify(data),
				dataType: 'json',
				timeout: 600000,
				success: function(data){
					$("#submit-btn").prop("disabled", false);
				},
				error: function(e){
					$("#submit-btn").prop("disabled", false);
				}
			});
		});
	});
</script>

</head>
<body>

	<div class="container text-center" style="margin:50px">
		
		<form id="form">

			<div class="form-group row">
				
				<label for="a1" class="col-form-label col-sm-1">a_1</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="a_1" id="a1">
				</div>
				
				<label for="a2" class="col-form-label col-sm-1">a_2</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="a2" name="a_2">
				</div> 
			
			</div>
			
			<div class="form-group row">
				
				<label for="b1" class="col-form-label col-sm-1">b_1</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="b_1" id="b1">
				</div>
				
				<label for="b2" class="col-form-label col-sm-1">b_2</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="b2" name="b_2">
				</div>

			</div>
			
			<div class="form-group row">

				<label for="c1" class="col-form-label col-sm-1">c_1</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="c1" name="c_1">
				</div>
				
				<label for="c2" class="col-form-label col-sm-1">c_2</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="c2" name="c_2">
				</div>				

			</div>
			
			<div class="form-group row">

				<label for="drb11" class="col-form-label col-sm-1">drb1_1</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="drb11" name="drb1_1">
				</div>
				
				<label for="drb12" class="col-form-label col-sm-1">drb1_2</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="drb12" name="drb1_2">
				</div>
				
			</div>

			<div class="form-group row">
<!-- 				
				<label for="personId" class="col-form-label col-sm-1">Id</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="personId" name="id">
				</div>
 -->				
				<label class="col-sm-1 mr-sm-2" for="gender">Gender</label> 
				<select class="col-sm-2 custom-select mb-2 mr-sm-2 mb-sm-0" id="gender" name="region">
					<option>...</option>
					<option>male</option>
					<option>female</option>
				</select>
								
				<label class="col-sm-1 mr-sm-2" for="region">Region</label> 
				<select class="col-sm-2 custom-select mb-2 mr-sm-2 mb-sm-0" id="region" name="region">
					<option>...</option>
					<option>Dalmacija</option>
					<option>Sjeverna Hrvatska</option>
					<option>Istočna Hrvatska</option>
					<option>Istra i Primorje</option>
					<option>Zagreb</option>
					<option>Središnja Hrvatska</option>
				</select>
				
			</div>
			
			<div class="form-group row">
<!-- 				
				<label class="col-sm-1 mr-sm-2" for="region">Region</label> 
				<select class="col-sm-2 custom-select mb-2 mr-sm-2 mb-sm-0" id="region" name="region">
					<option>...</option>
					<option>Dalmacija</option>
					<option>Sjeverna Hrvatska</option>
					<option>Istočna Hrvatska</option>
					<option>Istra i Primorje</option>
					<option>Zagreb</option>
					<option>Središnja Hrvatska</option>
				</select>
 -->				
				<label for="year" class="col-form-label col-sm-1">Year of birth</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="year" name="year">
				</div>
				
				<div class="col-sm-2" style="margin-left:30px">
					<input type="submit" id="submit-btn" class="btn btn-primary" value="Insert" onclick="location.href='/h/markers'">
				</div>
								
			</div>
			
			<!-- <input type="submit" id="submit-btn" class="btn btn-primary" value="Insert" onclick="location.href='/h/markers'"> -->
			
		</form>
	</div>
</body>
</html>