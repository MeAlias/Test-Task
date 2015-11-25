<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Manager</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
    <style>
        .error {
            color: #ee0d25;
        }
    </style>

</head>
<body>

<a href="/" class="btn btn-link">Back</a>
<h2>PLC Manager</h2>

<form:form method="post" action="add" commandName="domain" class="form-horizontal">
    <fieldset>
        <legend>ADD PLC</legend>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="serial">
                <spring:message code="label.serial"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="serial" placeholder="SerialNumber" cssClass="form-control"/>
            </div>
        </div>

        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="parentId">
                <spring:message code="label.parentId"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="parentId" placeholder="Parent_ID" cssClass="form-control"/>
            </div>
        </div>
        <legend>PLC Details</legend>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="plcGroup">
                <spring:message code="label.plcgroup"/>
            </form:label>
            <div class="col-md-3">
                <form:input path="plcGroup" placeholder="Plc Group" cssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="signal">
                <spring:message code="label.signal"/>
            </form:label>
            <div class="col-lg-3">
                <form:input path="signal" placeholder="Signal guality" cssClass="form-control"/>
            </div>
        </div>
    </fieldset>

    <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-primary"><spring:message code="label.addPlc"/></button>
            </div>
    </div>
</form:form>

</body>
</html>
