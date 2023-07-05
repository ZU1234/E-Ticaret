<%--productList.jsp--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>


<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/card.css">--%>

<section>
    <my:productList products="${products}" />
</section>

