<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession sessionObj = request.getSession();
    ArrayList<String> tasks = (ArrayList<String>) sessionObj.getAttribute("tasks");
    if (tasks == null) {
        tasks = new ArrayList<>();
    }
    String newTask = request.getParameter("task");
    if (newTask != null && !newTask.trim().isEmpty()) {
        tasks.add(newTask);
        sessionObj.setAttribute("tasks", tasks);
    }
%>

<html>
<head>
    <title>Simple To-Do App</title>
</head>
<body>
    <h2>To-Do List</h2>
    <form action="" method="POST">
        <input type="text" name="task" placeholder="Enter task" required>
        <button type="submit">Add Task</button>
    </form>
    
    <ul>
        <% for (String task : tasks) { %>
            <li><%= task %></li>
        <% } %>
    </ul>
</body>
</html>
