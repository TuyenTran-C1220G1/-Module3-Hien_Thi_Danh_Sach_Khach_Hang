<%@ page import="model.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <style>
      table tr td{
        border: 1px solid blueviolet;
        text-align: center;
      }

      td{
        width: 200px;
      }
      img {
        width: 50px;
        height: 50px;
      }

      body {
        font-family:Arial, Helvetica, sans-serif;
        background-color: azure;
      }
    </style>
  </head>
  <body>
  <% List<Customer> customers=new ArrayList<>();
  customers.add(new Customer(1,"Tuyen","20-8-1986","Nghe An","image\\1.jpg"));
  customers.add(new Customer(2,"Tuyen","20-8-1986","Nghe An","image\\1.jpg"));

  pageContext.setAttribute("b", customers);
  %>
  <div class="container">
    <center>
      <h1>Danh sách sinh viên</h1>
      <table>
        <tr>
          <td>Họ tên</td>
          <td>Ngày sinh</td>
          <td>Địa chỉ</td>
          <td>Ảnh</td>
        </tr>
        <c:forEach var="a" items="#{b}">
          <tr>
            <td><c:out value="${a.name}"/></td>
            <td><c:out value="${a.birthday}"/></td>
            <td><c:out value="${a.address}"/></td>
            <td><img src="<c:out value="${a.image}"/>"></td>
          </tr>
        </c:forEach>
      </table>

  </div>
    </center>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
  </body>
</html>
