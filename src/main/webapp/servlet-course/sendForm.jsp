<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Send form</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
<table cols="2">
    <tr>
        <td><p>Ответ сервлета:</p></td>
        <td><p>
            <c:choose>
                <c:when test="${empty greeting}">
                   <span style="color: red;"> Заполните и отправте форму ниже, пожалуйста! </span>
                </c:when>
                <c:otherwise>
                    <span style="color: green;"> <c:out value = "${greeting}"/> </span>
                </c:otherwise>
            </c:choose>

        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Форма для отправки:</p></td>
        <td>
            <p>
            <form method="post" action="/servletcourse/sendForm.jsp"
                  style="padding: 10px; border: 1px solid black; width: 175px;">
                <label for="firstName">First Name:</label> <br/>
                <input id="firstName" name="firstName"/> <br/>

                <label for="lastName">Last Name:</label> <br/>
                <input id="lastName" name="lastName"/> <br/>
                <br/>
                <input type="submit" value="Send">
            </form>
            </p>
        </td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет приветствовать пользователя. На вход сервлет будет принимать форму,
            с заполненными полями name, age.
            И отвечать приветствием на переданную форму.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>PersonInfoServlet.java: </p></td>
        <td><iframe src="/sources/by/gsu/servlets/PersonInfoServlet.java" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>sendForm.jsp: </p></td>
        <td><iframe src="/sources/servlet-course/sendForm.jsp" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr><td><br></td></tr>
</table>
</body>
</html>
