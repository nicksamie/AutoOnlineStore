<%--
  Created by IntelliJ IDEA.
  User: gunner
  Date: 7/6/15
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | AutoMobile Store</title>
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="../../resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="../../resources/css/price-range.css" rel="stylesheet">
    <link href="../../resources/css/animate.css" rel="stylesheet">
    <link href="../../resources/css/main.css" rel="stylesheet">
    <link href="../../resources/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="../resources/js/html5shiv.js"></script>
    <script src="../resources/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
<jsp:include page="header.jsp"></jsp:include>

<h1>view vehicles</h1>
<div>
    <table width="200" border="1" class="vehiclelist">
        <tr>
            <th>Make</th>
            <th>Model</th>
            <th>Price</th>
            <th>Vehicle_id</th>
            <th>Transmission</th>
        </tr>
       <%-- <option>-- Manufracturer --</option>
        <c:forEach items="${makeList}" var="mlist">
            <option><c:out value="${mlist.make}"></c:out></option>
        </c:forEach>--%>

        <c:forEach items="${vehicleLists}" var="vehicleLists">
            <tr>
                <td>
                    <c:out value="${vehicleLists.make}"></c:out>
                </td>
                <td>
                    <c:out value="${vehicleLists.model}"></c:out>
                </td>
                <td>
                    <c:out value="${vehicleLists.price}"></c:out>
                </td>
                <td>
                    <c:out value="${vehicleLists.vehicle_id}"></c:out>
                </td>
                <td>
                    <c:out value="${vehicleLists.transmission}"></c:out>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
<%--
<c:forEach items="${vehicleLists}" var="vehicleLists">
    <option><c:out value="${vehicleLists.make}"></c:out></option>
</c:forEach>--%>
