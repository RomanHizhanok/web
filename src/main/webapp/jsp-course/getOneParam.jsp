<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
     <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
  </head>
  <body>
  <table cols="2">
    <tr>
      <td>Результат работы :</td>
      <td>
        <%=request.getParameter("s")!=null?"s="+request.getParameter("s"):"Введите параметр s в URL. Пример : dl.gsu.by/getOneParam.jsp&s=5"%>
      </td>
    </tr>
    <tr>
      <td>Исходный код :</td>
      <td>
          <iframe src="/sources/jsp-course/getOneParam.jsp" frameborder="1" width="1000" height="400"></iframe>
      </td>
    </tr>
      <tr>
          <td></td>
          <td><button class="button-source"><a href="/sources/jsp-course/getOneParam.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
      </tr>
  </table>
  </body>
</html>
