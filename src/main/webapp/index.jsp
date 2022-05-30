<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: tomato">
        <div>
            <a href="https://www.javaguides.net" class="navbar-brand"> User Management App </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="list"
                   class="nav-link">Product</a></li>
        </ul>
    </nav>
</header>

<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="home" method="post">

                    <fieldset class="form-group">
                        <label>User Name</label>
                        <input type="text"  class="form-control"
                               name="name" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User Email</label>
                        <input type="text" class="form-control"
                               name="email">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User address</label>
                        <input type="text" class="form-control"
                               name="address">
                        <fieldset class="form-group">

                            <label>User Phone</label>
                            <input type="text" class="form-control"
                                   name="phone">
                        </fieldset>
                    </fieldset>
                    <button type="submit" class="btn btn-success">Save</button>
                </form>
        </div>
    </div>
</div>
<%--<div class="row">--%>
<%--    <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->--%>

<%--    <div class="container">--%>
<%--        <h3 class="text-center">List of Users</h3>--%>
<%--        <hr>--%>
<%--        <div class="container text-left">--%>

<%--            <a href="<%=request.getContextPath()%>/home" class="btn btn-success">Add--%>
<%--                New User</a>--%>
<%--        </div>--%>
<%--        <br>--%>
<%--        <table class="table table-bordered">--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th>name</th>--%>
<%--                <th>email</th>--%>
<%--                <th>address</th>--%>
<%--                <th>phone</th>--%>
<%--                <th>Action</th>--%>
<%--            </tr>--%>
<%--            <c:forEach var="product" items="${requestScope.products}">--%>
<%--                <tr>--%>
<%--                    <td>${product.name}</td>--%>
<%--                    <td>${product.email}</td>--%>
<%--                    <td>${product.address}</td>--%>
<%--                    <td>${product.phone}</td>--%>
<%--                    <td><a href="edit?id=<c:out value='${product.id}' />">Edit</a>--%>
<%--                        &nbsp;&nbsp;&nbsp;&nbsp; <a--%>
<%--                                href="delete?id=<c:out value='${product.id}' />">Delete</a></td>--%>
<%--                </tr>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--            </thead>--%>
<%--        </table>--%>
<%--        <!-- } -->--%>
<%--        </tbody>--%>

<%--        </table>--%>
<%--    </div>--%>
<%--</div>--%>
</body>
</html>