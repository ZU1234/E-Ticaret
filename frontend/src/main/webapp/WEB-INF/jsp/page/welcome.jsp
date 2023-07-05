<%--welcome.jsp--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.demo.enums.UrlConstants" %>

<jsp:include page="../../template/homeTemplate.jsp"/>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>


<section>
    <c:import url="${UrlConstants.URL_SCROLL_BANNER}" />
</section>



