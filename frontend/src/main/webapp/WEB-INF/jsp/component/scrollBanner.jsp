<%-- scrollBanner.jsp--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/component.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/card.css">


<section class="scroll-container">
    <div class="advertisement-container">
        <div class="advertisement-slider">
            <div class="advertisement-inner">
                <%-- Verileri burada tekrarlıyor --%>
                <c:forEach items="${products}" var="product" varStatus="loop">
                    <c:if test="${loop.index < 15}">
                        <div class="card-container">
                                <%-- Kart içeriği burada yer alıyor--%>
                            <a class="card" href="/productDetails/${product.id}">
                                <div class="image-container">
                                    <img src="${product.image}" alt="Product Image">
                                </div>
                                <h2>${product.name}</h2>
                            </a>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
        </div>
    </div>
</section>
