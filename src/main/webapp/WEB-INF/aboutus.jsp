<html>

<head>
    <title>About Us</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');

        * {
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
            width: 50px;
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

        .container {
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

        .container form {
            width: 500px;
            height: 520px;
            display: flex;
            justify-content: center;
            box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.5);
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            flex-wrap: wrap;
        }

        .container form h1 {
            color: #fff;
            font-weight: 500;
            margin-top: 20px;
            width: 500px;
            text-align: center;
        }

        .container form p {
            color: #fff;
            font-weight: 400;
            font-size: larger;
            width: 600px;
            margin-top: 20px;
            padding: 0 15px;
            text-align: justify;
        }
    </style>
</head>

<body>

    <nav class="navbar">
        <img class="logo" src="https://cdn-icons-png.flaticon.com/128/13468/13468481.png" alt="image">
        <ul>
            <li><a  href="/">Home</a></li>
            <li><a class="active" href="aboutus">About</a></li>
            <li><a href="contactus">Contact</a></li>
            <li><a href="employeelogin">Employee Login</a></li>
            <li><a href="adminlogin">Admin Login</a></li>
        </ul>
    </nav>
    <div class="container">
        <form id="contactForm" onsubmit="submitContactForm(event)">
            <h1>About Us</h1>
            <p>Welcome to our project crafted by Almaaz for NEC Corporation. At the intersection of innovation and dedication, this endeavor embodies the spirit of excellence. Rooted in the vision of creating cutting-edge solutions, Almaaz has meticulously designed this project to meet the evolving needs of NEC Corporation. With a commitment to pushing boundaries and embracing the latest technologies, our project reflects the passion and expertise that Almaaz brings to the table. Join us on a journey where creativity meets functionality, and together, we pave the way for a future of unparalleled success and collaboration.
            </p>


        </form>

    </div>

</body>

</html>