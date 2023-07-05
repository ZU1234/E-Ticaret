<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../template/homeTemplate.jsp"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/component.css">


<head>
    <title>Hakkımızda ve İletişim</title>
</head>

<h1>Hakkımızda ve İletişim</h1>
<form class="contact-form">
    <h2>Site Sahibi Bilgileri:</h2>
    <p>Adı: John Doe</p>
    <p>E-posta: john.doe@example.com</p>
    <p>Telefon: +1234567890</p>
</form>
<h2>Bize Ulaşın:</h2>

<form class="contact-form" action="submitContactForm" method="post">
    <label for="name">Adınız:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="email">E-posta Adresiniz:</label>
    <input type="email" id="email" name="email" required><br>

    <label for="message">Mesajınız:</label><br>
    <textarea id="message" name="message" rows="5" required></textarea><br>

<%--    <input type="submit" value="Gönder">--%>
</form>


