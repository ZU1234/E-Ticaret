<%--product.tag--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ attribute name="product" required="true" type="com.core.model.Product" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/card.css">


<a class="card" href="/productDetails/${product.id}" >

    <div class="image-container">
        <img src="${product.image}" alt="Product Image">
    </div>
    <h2>${product.name}</h2>
    <p>${product.description}</p>
    <p>Price: ${product.price}</p>
</a>
