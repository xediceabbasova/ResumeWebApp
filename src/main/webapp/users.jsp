<%--
Document   : user
Created on : Mar 23, 2023, 5:34:46 AM
Author     : Xədicə Abbasova
--%>

<%@page import="com.company.dao.inter.UserDaoInter" %>
<%@page import="com.company.entity.User" %>
<%@page import="com.company.main.Context" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="assets/css/users.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<%

    List<User> list = (List<User>) request.getAttribute("list");

%>
<div class="container mycontainer">
    <div class="col-12">
        <div class="col-4">
            <form action="users" method="GET">
                <div class="form-group">
                    <label for="name">name:</label>
                    <input class="form-control" type="text" name="name" value="" placeholder="Enter name">
                </div>
                <div class="form-group">
                    <label for="surname">surname:</label>
                    <input class="form-control" type="text" name="surname" value="" placeholder="Enter surname">
                </div>
                <input class="btn btn-primary" type="submit" name="search" value="Search">
            </form>
        </div>

        <hr>
        <div>
            <table class="table">
                <thead>
                <tr>
                    <th>name</th>
                    <th>surname</th>
                    <th>nationality</th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <%
                    for (User u : list) {
                %>
                <tr>
                    <td><%=u.getName()%>
                    </td>

                    <td><%=u.getSurname()%>
                    </td>

                    <td><%=u.getNationality().getName() == null ? "N/A" : u.getNationality().getName()%>
                    </td>
                    <td style="width: 5px">
                        <form action="userdetail" method="POST">
                            <input type="hidden" name="id" value="<%=u.getId()%>">
                            <input type="hidden" name="action" value="delete">
                            <button class="btn btn-danger" type="submit" value="delete">
                                <i class="fa-solid fa-trash-can"></i>
                            </button>
                        </form>
                    </td>
                    <td style="width: 5px">
                        <form action="userdetail" method="GET">
                            <input type="hidden" name="id" value="<%=u.getId()%>">
                            <input type="hidden" name="action" value="update">
                            <button class="btn btn-secondary" type="submit" value="update">
                                <i class="fa-solid fa-square-pen"></i>
                            </button>
                        </form>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
