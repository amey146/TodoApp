<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ page
import="java.util.ArrayList" %> <%@ page import="javax.servlet.http.HttpSession"
%> <% HttpSession sessionObj = request.getSession(); ArrayList<String>
  tasks = (ArrayList<String
    >) sessionObj.getAttribute("tasks"); if (tasks == null) { tasks = new
    ArrayList<>(); } String newTask = request.getParameter("task"); if (newTask
    != null && !newTask.trim().isEmpty()) { tasks.add(newTask);
    sessionObj.setAttribute("tasks", tasks); } %>

    <html>
      <head>
        <title>Simple To-Do App</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
          }

          h2 {
            color: #333;
          }

          form {
            margin-bottom: 20px;
          }

          input[type="text"] {
            padding: 10px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 4px;
          }

          button {
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
          }

          button:hover {
            background-color: #218838;
          }

          ul {
            list-style-type: none;
            padding: 0;
          }

          li {
            background-color: #fff;
            margin: 5px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
          }
        </style>
      </head>
      <body>
        <h2>To-Do List</h2>
        <form action="" method="POST">
          <input type="text" name="task" placeholder="Enter task" required />
          <button type="submit">Add Task</button>
        </form>

        <ul>
          <% for (String task : tasks) { %>
          <li><%= task %></li>
          <% } %>
        </ul>
      </body>
    </html>
  </String></String
>
