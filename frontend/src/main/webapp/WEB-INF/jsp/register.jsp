<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Form</title>
    <%--    sitil dosyasını sayfaya bağlıyoruz.--%>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<section>
    <div class="container">
        <h1>Register Form</h1>
        <form action="/" method="post">


            <div class="form-group">
                <label for="name"></label>
                <input type="text" id="name" name="name" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="surname">Surname:</label>
                <input type="text" id="surname" name="surname" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control"/>
            </div>

            <div class="button-container">
                <button type="submit" class="btn btn-primary">Kaydet</button>
            </div>
        </form>
    </div>
</section>
<section>
    <div class="container">
        <h1>Full Name</h1>

        <form action="/" method="get">
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" class="form-control" value="${userForm.fullName}"
                       readonly/>
            </div>

            <div class="button-container">
                <button type="submit" class="btn btn-primary">Son Kaydı Getir</button>
            </div>

        </form>
    </div>
</section>

</body>
</html>
