<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Manager</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>
<style> body {
    background: -webkit-gradient(linear, left top, left bottom,
    color-stop(0%,#c5deea),
    color-stop(31%,#8abbd7),
    color-stop(100%,#066dab));
}
h2 {
    text-align:center
}
</style>
<h2>PLC community manager</h2>

<div style="text-align: center">
    <a href="add" class="btn btn-primary">Add PLC point</a>
    <a href="list" class="btn btn-success">View all PLC</a>
</div>
</body>
</html>
