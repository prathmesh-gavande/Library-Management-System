<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="addBook.jsp">Add Book</a>
        <a href="index.jsp">Book List</a>
    </div>
    <div class="container">
        <h2>Please add your book here!</h2>
        <form action="addBookServlet" method="post">
            <label for="title">Title:</label>
            <input type="text" name="title" id="title" required="required"><br><br>
            <label for="author">Author:</label>
            <input type="text" name="author" id="author" required="required"><br><br>
            <label for="price">Price:</label>
            <input type="text" name="price" id="price" required="required"><br><br>
            <button type="submit">Submit</button>
            <button type="reset" class="cancel">Cancel</button>
        </form>
    </div>
</body>
</html>
