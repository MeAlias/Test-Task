<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Customer List</title>
  <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>

<a href="/" class="btn btn-link">Back</a>

<h3>Customers</h3>
<c:if test="${!empty List}">
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
    <c:forEach items="${List}" var="domain">
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
<form:form method="post" action="edit" commandName="domain" class="form-horizontal">
  <c:forEach items="${List}" var="domain">
  <fieldset>
    <legend>PLC Details</legend>
    <div class="form-group">
      <form:label class="col-lg-2 control-label" path="serial">
        <spring:message code="label.serial"/>
      </form:label>
      <div class="col-sm-3">
        <form:input path="serial" placeholder="${domain.serial}" value="${domain.serial}"  cssClass="form-control"/>
      </div>
      <form:errors path="serial" cssClass="error"/>
    </div>

    <div class="form-group">
      <form:label class="col-lg-2 control-label" path="parentId">
        <spring:message code="label.parentId"/>
      </form:label>
      <div class="col-sm-3">
        <form:input path="parentId" placeholder="${domain.parentId}"  value="${domain.parentId}" cssClass="form-control"/>
      </div>
      <form:errors path="parentId" cssClass="error"/>
    </div>
    <div class="form-group">
      <form:label class="col-lg-2 control-label" path="plcGroup">
        <spring:message code="label.plcgroup"/>
      </form:label>
      <div class="col-md-3">
        <form:input path="plcGroup" placeholder="${domain.plcGroup}"  value="${domain.plcGroup}" cssClass="form-control"/>
      </div>
      <form:errors path="plcGroup" cssClass="error"/>
    </div>
    <div class="form-group">
      <form:label class="col-lg-2 control-label" path="signal">
        <spring:message code="label.signal"/>
      </form:label>
      <div class="col-lg-3">
        <form:input path="signal" placeholder="${domain.signal}" value="${domain.signal}"  cssClass="form-control"/>
      </div>
      <form:errors path="signal" cssClass="error"/>
    </div>
    <form:hidden path="id" value="${domain.id}" />
  </fieldset>

  </c:forEach>
  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button type="submit" class="btn btn-primary"><spring:message code="label.editPlc"/></button>
    </div>
  </div>
</form:form>
</body>
</html>
