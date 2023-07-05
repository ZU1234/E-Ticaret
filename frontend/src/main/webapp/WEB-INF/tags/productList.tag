<%--productList.tag--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ attribute name="products" required="true" type="java.util.List<com.core.model.Product>" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/card.css">

<div class="card-container">
    <c:forEach items="${products}" var="product">
        <tag:product product="${product}" />
    </c:forEach>
</div>
