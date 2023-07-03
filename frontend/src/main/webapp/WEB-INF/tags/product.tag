<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ attribute name="products" required="true" type="java.util.List<com.core.model.Product>" %>

<link rel="stylesheet" type="text/css" href="css/card.css">

<div class="card-container">
    <c:forEach items="${products}" var="product">
        <div class="card">
            <div class="image-container">
                <img src="${product.image}" alt="Product Image">

            </div>
            <h2>${product.name}</h2>
            <description>${product.description}</description>
            <price>Price: ${product.price}</price>
        </div>
    </c:forEach>
</div>
