<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.demo.enums.PagesConstants" %>
<%@ page import="com.example.demo.enums.UrlConstants" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Fields Names --%>
<spring:theme code="profile.fullName" text="Full name" var="fullNameVar"/>
<spring:theme code="profile.name" text="name" var="nameVar"/>
<spring:theme code="profile.surname" text="surname" var="surnameVar"/>
<spring:theme code="profile.email" text="email" var="emailVar"/>
<spring:theme code="profile.password" text="password" var="passwordVar"/>
<spring:theme code="profile.loginButton" text="loginButton" var="loginButtonVar"/>
<jsp:include page="../../template/homeTemplate.jsp" />

<%-- forms --%>
<c:set var="loginForm" value="${userForm}"/>

<head>
    <title>Register Form</title>
    <%--    sitil dosyasını sayfaya bağlıyoruz.--%>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<section>
    <div class="login-page">
        <div class="form">
            <form:form id="loginForm" action="${UrlConstant.URL_LOGIN_PAGE}" method="post">
                <label class="form-label">
                    <input type="text" class="secondary-input" data-rule-trCharacter="false" name="email" id="emailE"
                           data-msg-required="<spring:theme code='profile.cannotBeEmpty' text='Can not be empty'/>"
                           placeholder="<spring:theme code='profile.email' text='Email'/>" value="${userForm.email}"/>
                    <form:errors path="email" cssClass="error" element="label"/>
                </label>
                <label class="form-label">
                    <input type="text" class="secondary-input justletter" id="passwordFN"
                           name="password" maxlength="1024"
                           data-msg-required="<spring:theme code='profile.cannotBeEmpty' text='Can not be empty'/>"
                           placeholder="<spring:theme code='profile.password' text='password'/>"
                           value="${userForm.password}"/>
                    <form:errors path="password" cssClass="error" element="label"/>
                </label>

                <div class="button-area right-align freeze-account">
                    <button type="submit" <%--onclick="location.href='${UrlConstants.REGISTER}'"--%>>
                        <spring:theme code="profile.loginButton" text="loginButton"/>
                    </button>
                </div>

            </form:form>


            <p class="message">Not registered? <a href="<%= UrlConstants.URL_REGISTER_PAGE %>">Create an account</a></p>
        </div>
    </div>
</section>
