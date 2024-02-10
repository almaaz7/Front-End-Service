<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Login</title>
    <style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
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
        width: 140px;
        height: auto;
        padding: 20px 100px;
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

.container{
    min-height: 100vh;
    background: #08071d;
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: url('https://images.pexels.com/photos/12366058/pexels-photo-12366058.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100vh;
}

.container form{
    width: 400px;
    height: 400px;
    display: flex;
    justify-content: center;
    box-shadow: 20px 20px 50px rgba(0,0,0,0.5);
    border-radius: 15px;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(10px);
    flex-wrap: wrap;
}

.container form h1{
    color: #fff;
    font-weight: 500;
    margin-top: 20px;
    width: 500px;
    text-align: center;
}

.container form input{
    width: 80%;
    height: 40px;
    padding-left: 10px;
    outline: none;
    border: none;
    font-size: 15px;
    margin-bottom: 10px;
    background: none;
    border-bottom: 2px solid #fff;
}

.container form input::placeholder{
    color: #ddd;
}

.container form h4{
    color: #fff;
    font-weight: 300;
    width: 600px;
    margin-top: 20px;
}

.container form #button{
    border: none;
    background: #fff;
    border-radius: 5px;
    margin-top: 20px;
    font-weight: 600;
    font-size: 20px;
    color: #333;
    width: 80%;
    height: 50px;
    padding: 0;
    margin-right: 0px;
    margin-bottom: 30px;
    transition: 0.3s;
}

.container form #button:hover{
    opacity: 0.7;
}
    </style>
</head>
<body>

    <nav class="navbar">

				<ul>
					<li><a  href="/">Home</a></li>
					<li><a href="aboutus">About</a></li>
					<li><a href="contactus">Contact</a></li>
					<li><a class="active" href="employeelogin">Employee Login</a></li>
					<li><a href="adminlogin">Admin Login</a></li>
				</ul>
			</nav>
    <div class="container">
        <form id="contactForm" action="loginemployee" method="post">
            <h1>Employee Login</h1>
            <input type="text" id="firstName" placeholder="Name" name="name" required>
            <input type="password" id="number" placeholder="Password" name="number" required>
            <button type="submit" id="button">Submit</button>
            
        </form>
    </div>

</body>
</html>



<!-- for practice -->
<!-- <html>
<head>
    <title>Employee Login</title>
    <style>
    	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
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
    width: 140px;
    height: auto;
    padding: 20px 100px;
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
.container{
    min-height: 100vh;
    background: #08071d;
    display: flex;
    justify-content: center;
    align-items: center;
        background-image: url('https://images.pexels.com/photos/12366058/pexels-photo-12366058.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100vh;}

.container form{
    width: 350px;
    height: 400px;
    display: flex;
    justify-content: center;
    box-shadow: 20px 20px 50px rgba(0,0,0,0.5);
    border-radius: 15px;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(10px);
    flex-wrap: wrap;
}

.container form h1{
    color: #fff;
    font-weight: 500;
    margin-top: 20px;
    width: 500px;
    text-align: center;
}

.container form input{
    width: 80%;
    height: 40px;
    padding-left: 10px;
    outline: none;
    border: none;
    font-size: 15px;
    margin-bottom: 10px;
    background: none;
    border-bottom: 2px solid #fff;
}

.container form input::placeholder{
    color: #ddd;
}

.container form h4{
    color: #fff;
    font-weight: 300;
    width: 600px;
    margin-top: 20px;
}

textarea::-webkit-scrollbar{
    width: 1em;
}

textarea::-webkit-scrollbar-thumb{
    background-color: rgba(194,194,194,0.713);
}

.container form #button{
    border: none;
    background: #fff;
    border-radius: 5px;
    margin-top: 20px;
    font-weight: 600;
    font-size: 20px;
    color: #333;
    width: 80%;
    height: 50px;
    padding: 0;
    margin-right: 0px;
    margin-bottom: 30px;
    transition: 0.3s;
}

.container form #button:hover{
    opacity: 0.7;
}
        /* body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 50px;
        }

        form {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #555;
        }

        input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 20px;
        }

        button {
            background-color: #3498db;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Navbar styles */
        .navbar {
            background-color: #333;
            overflow: hidden;
            margin-top: 20px;
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
        } */
    </style>
</head>
<body>
    <nav class="navbar">
        <ul>
            <li><a  href="/">Home</a></li>
            <li><a href="aboutus">About</a></li>
            <li><a  href="contactus">Contact</a></li>
            <li><a class="active" href="employeelogin">Employee Login</a></li>
            <li><a href="adminlogin">Admin Login</a></li>
        </ul>
    </nav>
    <div class="container">
        <form action="loginemployee" method="post">
            <h1>Employee Login</h1>
            <input type="text" id="firstName" placeholder="Name" name="name" required>
            <input type="password" id="password" placeholder="Password" name="number" required>
            <button type="submit" id="button">Submit</button>
        </form>
    </div>
    <div class="navbar">
        <a href="home">Home</a>
        <a href="aboutus">About Us</a>
        <a href="contactus">Contact Us</a>
    </div>

    <h2>Employee Login</h2>

    <form action="/loginemployee" method="post">
        <label for="employeeName">Employee Name:</label>
        <input type="text" id="employeeName" name="name" required>

        <label for="employeeNumber">Employee Number:</label>
        <input type="text" id="employeeNumber" name="number" required>

        <button type="submit">Login</button>
    </form>

</body>
</html> -->
