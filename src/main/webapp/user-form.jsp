<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: tomato">
        <div>
            <a href="https://www.javaguides.net" class="navbar-brand"> User Management App </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list"
                   class="nav-link">Product</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${product != null}">
            <form action="update" method="post">
                </c:if>
                <c:if test="${product == null}">
                <form action="insert" method="post">
                    </c:if>

                    <caption>
                        <h2>
                            <c:if test="${product != null}">
                                Edit User
                            </c:if>
                            <c:if test="${product == null}">
                                Add New User
                            </c:if>
                        </h2>
                    </caption>
                    <c:if test="${product != null}">
                        <input type="hidden" name="id" value="<c:out value='${product.id}' />"/>
                    </c:if>

                    <fieldset class="form-group">
                        <label>User Name</label>
                        <input type="text" value="<c:out value='${product.name}' />" class="form-control"
                               name="name" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User Email</label>
                        <input type="text" value="<c:out value='${product.email}' />" class="form-control"
                               name="email">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User address</label>
                        <input type="text" value="<c:out value='${product.address}' />" class="form-control"
                               name="address">
                        <fieldset class="form-group">
                            <label>User Phone</label>
                            <input type="text" value="<c:out value='${product.phone}' />" class="form-control"
                                   name="phone">
                        </fieldset>
                    </fieldset>
                    <button type="submit" class="btn btn-success">Save</button>
                </form>
        </div>
    </div>
</div>
</body>
</html>