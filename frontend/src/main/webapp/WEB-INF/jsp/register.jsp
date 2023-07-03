<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.demo.enums.UrlConstants" %>


<spring:theme code="profile.fullName" text="Full name" var="fullNameVar"/>
<spring:theme code="profile.name" text="name" var="nameVar"/>
<spring:theme code="profile.surname" text="name" var="nameVar"/>
<spring:theme code="profile.registerButton" text="registerButton" var="registerButtonVar"/>


<c:set var="userForm" value="${userForm}"/>


<html>
<head>
    <title>Kullanıcı Kayıt Formu</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>




<section>
    <div class="login-page">
        <div class="form">
            <form:form id="registerForm" action="${UrlConstants.REGISTER}" method="post" commandName="userForm">


                <label class="form-label">

                    <input type="text" class="secondary-input" data-rule-trCharacter="false" name="name" id="nameFN"
                           data-msg-required="<spring:theme code="profile.cannotBeEmpty" text="Can not be empty"/>"
                           placeholder="<spring:theme code="profile.name" text="name"/>" value="${userForm.name}"
                    <form:errors path="name" cssClass="error" element="label"/>
                </label>


                <label class="form-label">

                    <input type="text" class="secondary-input" data-rule-trCharacter="false" name="surname" id="surnameFN"
                           data-msg-required="<spring:theme code="profile.cannotBeEmpty" text="Can not be empty"/>"
                           placeholder="<spring:theme code="profile.surname" text="surname"/>" value="${userForm.surname}"
                    <form:errors path="surname" cssClass="error" element="label"/>
                </label>

                <label class="form-label">

                    <input type="text" class="secondary-input" data-rule-trCharacter="false" name="email" id="emailFN"
                           data-msg-required="<spring:theme code="profile.cannotBeEmpty" text="Can not be empty"/>"
                           placeholder="<spring:theme code="profile.email" text="Email"/>" value="${userForm.email}"
                    <form:errors path="email" cssClass="error" element="label"/>
                </label>
                <label class="form-label">

                    <input type="text" class="secondary-input justletter" id="passwordFN"
                           name="password" maxlength="1024"
                           data-msg-required="<spring:theme code="profile.cannotBeEmpty" text="Can not be empty"/>"
                           placeholder="<spring:theme code="profile.password" text="password"/>"
                           value="${userForm.password}"
                    <form:errors path="password" cssClass="error" element="label"/>
                </label>

                <div class="button-area right-align freeze-account">
                    <button type="submit" <%--onclick="location.href='${login}'"--%>>
                        <spring:theme code="profile.registerButton" text="registerButton"/>
                    </button>
                </div>
                <p class="message">Zaten hesabınız var mı? <a href="${UrlConstants.LOGIN}">Giriş Yap</a></p>


            </form:form>
        </div>
    </div>
</section>




</body>
</html>
