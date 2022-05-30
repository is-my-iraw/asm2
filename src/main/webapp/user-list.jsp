<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/5/2022
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: #7be80c">
        <div>
            <a href="https://www.javaguides.net" class="navbar-brand"> User
                Management App </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="home"
                   class="nav-link">Users</a></li>
        </ul>
    </nav>
</header>
<br>

<div class="row">

    <div class="container">
        <h3 class="text-center">List of Users</h3>
        <hr>
        <div class="container text-left">

            <a href="home" class="btn btn-success">Add
                New User</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>name</th>
                <th>email</th>
                <th>address</th>
                <th>phone</th>
                <th>Action</th>
            </tr>
            <c:forEach var="product" items="${requestScope.products}">
                <tr>
                    <td>${product.name}</td>
                    <td>${product.email}</td>
                    <td>${product.address}</td>
                    <td>${product.phone}</td>
                    <td><a href="edit?id=<c:out value='${product.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp; <a
                                href="delete?id=<c:out value='${product.id}' />">Delete</a></td>
                </tr>
                </tr>
            </c:forEach>
            </thead>
        </table>
        <!-- } -->
        </tbody>

        </table>
    </div>
</div>
</body>
</html>
