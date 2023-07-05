<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<jsp:include page="../../template/homeTemplate.jsp" />


<section>
    <h1 title="title" >PRODUCT DETAILS</h1>
    <div class="card-container">
    <tag:product product="${product}" />
    </div>
</section>
