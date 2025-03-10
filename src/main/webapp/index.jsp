<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ page
import="java.util.ArrayList" %> <%@ page import="javax.servlet.http.HttpSession"
%> <% HttpSession sessionObj = request.getSession(); ArrayList<String>
  books = (ArrayList<String
    >) sessionObj.getAttribute("books"); if (books == null) { books = new
    ArrayList<>(); sessionObj.setAttribute("books", books); } String newBook =
    request.getParameter("book"); String author =
    request.getParameter("author"); String genre =
    request.getParameter("genre"); if (newBook != null && author != null &&
    genre != null && !newBook.trim().isEmpty() && !author.trim().isEmpty() &&
    !genre.trim().isEmpty()) { books.add(newBook + " by " + author + " (" +
    genre + ")"); sessionObj.setAttribute("books", books); } String deleteBook =
    request.getParameter("delete"); if (deleteBook != null) {
    books.remove(deleteBook); sessionObj.setAttribute("books", books); } %>

    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Library Management System</title>
        <style>
          body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #fff;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            flex-direction: column;
          }

          h2 {
            margin-bottom: 20px;
            font-size: 28px;
          }

          form {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-bottom: 20px;
            width: 300px;
          }

          input[type="text"] {
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 5px;
            outline: none;
            font-size: 16px;
          }

          button {
            padding: 12px 18px;
            background-color: #ff9800;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
            font-size: 16px;
          }

          button:hover {
            background-color: #e68900;
          }

          ul {
            list-style: none;
            padding: 0;
            width: 350px;
            max-width: 100%;
          }

          li {
            background-color: #fff;
            color: #333;
            padding: 10px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 8px;
            transition: 0.3s;
          }

          li:hover {
            transform: scale(1.02);
          }

          .delete-btn {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 3px;
            font-size: 14px;
          }

          .delete-btn:hover {
            background-color: #cc0000;
          }
        </style>
      </head>
      <body>
        <h2>📚 Library Management System 📚</h2>

        <form action="" method="POST">
          <input
            type="text"
            name="book"
            placeholder="Enter Book Title"
            required
          />
          <input
            type="text"
            name="author"
            placeholder="Enter Author Name"
            required
          />
          <input type="text" name="genre" placeholder="Enter Genre" required />
          <button type="submit">Add Book</button>
        </form>

        <ul>
          <% for (String book : books) { %>
          <li>
            <%= book %>
            <form action="" method="POST" style="display: inline">
              <input type="hidden" name="delete" value="<%= book %>" />
              <button type="submit" class="delete-btn">❌</button>
            </form>
          </li>
          <% } %>
        </ul>
      </body>
    </html>
  </String></String
>
