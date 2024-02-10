<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.almaaz.frontendservice.model.Employee" %>
<html>

<head>
    <title>Employee List</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        h2 {
            padding-top: 100px;
            text-align: center;
            color: white;
        }

        .navbar {
            position: fixed;
            height: 80px;
            width: 100%;
            top: 0;
            left: 0;
            background: rgba(0, 0, 0, 0.4);
        }

        .navbar ul {
            float: right;
            margin-right: 20px;
        }

        .navbar ul li {
            list-style: none;
            margin: 0 8px;
            display: inline-block;
            line-height: 80px;
        }

        .navbar ul li a {
            font-size: 20px;
            font-family: 'Roboto', sans-serif;
            color: white;
            padding: 6px 13px;
            text-decoration: none;
            transition: .4s;
        }

        .navbar ul li a.active,
        .navbar ul li a:hover {
            background: red;
            border-radius: 2px;
        }

        .container {
            min-height: 100vh;
            background: #08071d;
            justify-content: center;
            align-items: center;
            background-image: url('https://images.pexels.com/photos/12366058/pexels-photo-12366058.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
        }

        table,
        th,
        td {
            width: 80%;
            margin: auto;
            box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.5);
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid white;
            text-align: center;
            font-size: 20px;
            table-layout: fixed;
            margin-top: 10px;
            color: white;
        }
    </style>
</head>

<body>

    <nav class="navbar">

        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="insertPage">Insert</a></li>
            <li><a class="active" href="getList">Read</a></li>
            <li><a href="deletePage">Delete</a></li>
            <li><a href="updatePage">Update</a></li>
        </ul>
    </nav>
    <div class="container">
        <h2>Employee List</h2>

           <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Salary</th>
                <th>Number</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Employee> employees = (List<Employee>)request.getAttribute("employees");
                if (employees != null) {
                    for (Employee employee : employees) {
            %>
                <tr>
                    <td><%= employee.getId() %></td>
                    <td><%= employee.getName() %></td>
                    <td><%= employee.getSalary() %></td>
                    <td><%= employee.getNumber() %></td>
                </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
    </div>


</body>

</html>


<!-- for practice -->
<%-- <html>
<head>
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        /* Navbar styles */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="/">Home</a>
        <a href="/aboutus">About</a>
        <a href="contactus">Contact</a>
        <a href="adminlogin">Logout</a>
    </div>

    <h2>Employee List</h2>
    
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Salary</th>
                <th>Number</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Employee> employees = (List<Employee>)request.getAttribute("employees");
                if (employees != null) {
                    for (Employee employee : employees) {
            %>
                <tr>
                    <td><%= employee.getId() %></td>
                    <td><%= employee.getName() %></td>
                    <td><%= employee.getSalary() %></td>
                    <td><%= employee.getNumber() %></td>
                </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html> --%>
