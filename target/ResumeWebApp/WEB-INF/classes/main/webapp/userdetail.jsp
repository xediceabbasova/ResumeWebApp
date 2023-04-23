<%-- 
    Document   : user
    Created on : Mar 23, 2023, 5:34:46 AM
    Author     : Xədicə Abbasova
--%>

<%@page import="com.company.dao.inter.UserDaoInter" %>
<%@page import="com.company.entity.User" %>
<%@page import="com.company.main.Context" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/userdetail.css">
</head>
<body>

<%
    User u = (User) request.getAttribute("user");
%>

<div class="form-container">

    <form action="userdetail" method="POST">
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="id" value="<%=u.getId()%>">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" name="name" value="<%=u.getName()%>">
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="surname">Surname:</label>
                    <input type="text" class="form-control" name="surname" value="<%=u.getSurname()%>">
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" name="address" value="<%=u.getAddress()%>">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" name="email" value="<%=u.getEmail()%>">
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="tel" class="form-control" name="phone" value="<%=u.getPhone()%>">
        </div>
        <div class="form-group">
            <label for="description">Profile Description:</label>
            <textarea class="my form-control" name="description" cols="30" rows="10"><%=u.getProfileDesc()%></textarea>
        </div>

        <button type="submit" class="btn btn-secondary">Update</button>

    </form>
</div>
</div>
</body>
</html>
