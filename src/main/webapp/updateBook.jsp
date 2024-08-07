<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="com.configuration.HibernateConfiguration" %>
<%@ page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Book</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="add_book.jsp">Add Book</a>
        <a href="index.jsp">Book List</a>
    </div>
    <div class="container">
        <h2>Update Book Here</h2>
        <form action="updateBookServlet" method="post">
            <% 
                int bid = Integer.parseInt(request.getParameter("bid"));
                Transaction transaction = null;
                Session session1 = HibernateConfiguration.getSessionFactory().openSession();
                transaction = session1.beginTransaction();
                Book book = session1.get(Book.class, bid);
                session1.close();
            %>
            <input type="hidden" name="bid" value="<%= book.getBid() %>" required="required"><br>
            <label for="title">Book Title:</label>
            <input type="text" name="title" id="title" value="<%= book.getTitle() %>" required="required"><br><br>
            <label for="author">Book Author:</label>
            <input type="text" name="author" id="author" value="<%= book.getAuthor() %>" required="required"><br><br>
            <label for="price">Book Price:</label>
            <input type="text" name="price" id="price" value="<%= book.getPrice() %>" required="required"><br><br>
            <button type="submit">Submit</button>
            <button type="reset" class="cancel">Cancel</button>
        </form>
    </div>
</body>
</html>
