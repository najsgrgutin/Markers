<%@ tag description="H Template" pageEncoding="UTF-8"%>
<%@ attribute name="head" fragment="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctxpath" value="${pageContext.request.contextPath}" scope="session" />

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
        <title>H</title>

        <!--CSS--> 
        <link rel="stylesheet" type="text/css" href="<c:url value="${ctxpath}/../resources/css/bootstrap.min.css"/>"/>

        <!--JS--> 
        <script src="<c:url value="${ctxpath}/../resources/js/jquery.js" />"></script>
        <script src="<c:url value="${ctxpath}/../resources/js/bootstrap.min.js" />"></script>

        <!--Favicon--> 
        <link rel="shortcut icon" href="<c:url value="${ctxpath}/../resources/images/favicon.png" />"/>

        <script type="text/javascript">
        </script> 
    </head>
    <body>
        <div style="width: 100%;">

            <div class="container">
                <div class="row">
                    <div class="col-10" style="padding:0px;">
                        <c:if test="${not empty persons}">
                            <table id="myTable" class="table table-striped">
                                <thead>
                                    <tr>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${persons}" var="p">
                                        <tr>
                                            <td>${p.id}</td>
                                            <td>${p.gender}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                    </div>
                </div>
            </div> 
            <div class="footer">                  
                <div class="container" >               
                    <p class="muted credit text-center">© R</p> 
                </div>  
            </div>
        </div>
    </body>
</html>