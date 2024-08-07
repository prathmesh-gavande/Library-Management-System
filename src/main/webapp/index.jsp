<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="com.configuration.HibernateConfiguration" %>
<%@ page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="add_book.jsp">Add Book</a>
        <a href="index.jsp">Book List</a>
    </div>
    <div class="container">
        <h1>Book List</h1>
        <%
            Session s = HibernateConfiguration.getSessionFactory().openSession();
            Transaction transaction = s.beginTransaction();
            List<Book> books = s.createQuery("FROM Book", Book.class).list();
            transaction.commit();
            s.close();
        %>
        <table>
            <tr>
                <th>Id</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
            <% for (Book book : books) { %>
            <tr>
                <td><%= book.getBid() %></td>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getPrice() %></td>
                <td><a href="deleteBookServlet?bid=<%= book.getBid() %>">Delete</a></td>
                <td><a href="updateBook.jsp?bid=<%= book.getBid() %>">Update</a></td>
            </tr>
            <% } %>
        </table>
    </div>
</body>
</html>
