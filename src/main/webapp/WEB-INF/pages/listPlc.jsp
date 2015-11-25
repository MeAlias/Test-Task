<%--<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>--%>
<%--<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>PLC List</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>

<a href="/" class="btn btn-link">Back</a>

<h3>PLC View</h3>
<c:if test="${!empty plcList}">
    <table class="table table-hover">
        <tr>
            <th>Parent_id</th>
            <th>Serial</th>
            <th>Plc_Group</th>
            <th>SignalQuality</th>
            <th>Node_Id</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        <c:forEach items="${plcList}" var="domain">
            <tr>
                <td>${domain.parentId}</td>
                <td>${domain.serial}</td>
                <td>${domain.plcGroup}</td>
                <td>${domain.signal}</td>
                <td>${domain.id}</td>
                <td><a href="delete/${domain.id}">delete</a></td>
                <td><a href="edit/${domain.id}">edit</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
