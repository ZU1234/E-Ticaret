<%--productTable.tag--%>
<%@ tag description="Product Table Component" pageEncoding="UTF-8" %>
<%@ attribute name="products" required="true" type="java.util.List<com.core.model.Product>" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" href="css/style.css">

<table class="product-table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Property</th>
        <th>Stock</th>
        <th>Price</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.property}</td>
            <td>${product.stok}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
