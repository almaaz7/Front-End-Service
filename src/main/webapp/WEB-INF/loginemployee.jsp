<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
    @import url('https://fonts.googleapis.com/css?family=Roboto:700&display=swap');

    * {
        padding: 0;
        margin: 0;
    }

    .wrapper {
        background-image: url('https://images.pexels.com/photos/12366058/pexels-photo-12366058.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100vh;
    }

    .navbar {
        position: fixed;
        height: 80px;
        width: 100%;
        top: 0;
        left: 0;
        background: rgba(0, 0, 0, 0.4);
    }

    .navbar .logo {
        width: 50px;
        height: auto;
        padding: 16px 100px;
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

    .wrapper .center {
        position: absolute;
        left: 50%;
        top: 55%;
        transform: translate(-50%, -50%);
        font-family: sans-serif;
        user-select: none;
    }

    .center h1,
    .center h2 {
        color: white;
        font-size: 70px;
        font-weight: bold;
        text-align: center;
    }

    .center h2 {
        margin-top: 10px;
    }

    .center .buttons {
        margin: 35px 280px;
    }

    .buttons button {
        height: 50px;
        width: 150px;
        font-size: 18px;
        font-weight: 600;
        color: #ffb3b3;
        background: red;
        outline: none;
        cursor: pointer;
        border: 1px solid #cc0000;
        border-radius: 25px;
        transition: .4s;
    }

    .buttons .btn2 {
        margin-left: 25px;
    }

    .buttons button:hover {
        background: #cc0000;
    }
</style>
</head>
<body>
<div class="wrapper">
			<nav class="navbar">
				<img class="logo" src="https://cdn-icons-png.flaticon.com/128/13468/13468481.png" alt="image">
				<ul>
					<li><a href="/">Home</a></li>
					<li><a href="aboutus">About</a></li>
					<li><a href="contactus">Contact</a></li>
				</ul>
			</nav>
			<div class="center">
			<h1>Welcome "${name}"</h1>
			<h2></h2>
			<div class="buttons">
			<a href="/employeelogin"><button>Logout</button></a>
		</div>
	</div>
	</div>

</body>
</html>