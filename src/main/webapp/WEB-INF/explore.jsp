<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <title>Explore More</title>
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
            width: 400px;
            margin: 0 10px;
            height: 400px;
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
            font-weight: 300;
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
            <li><a class="active" href="/">Home</a></li>
            <li><a href="aboutus">About</a></li>
            <li><a href="contactus">Contact</a></li>
            <li><a href="employeelogin">Employee Login</a></li>
            <li><a href="adminlogin">Admin Login</a></li>
        </ul>
    </nav>
    <div class="container">
        <form id="contactForm" onsubmit="submitContactForm(event)">
            <h1>Microservices</h1>
            <p>Microservices are a modern software architecture where applications consist of small, independent
                services. Each service, focused on a specific business function, operates autonomously, allowing for
                individual development and scaling. This decentralized approach enhances flexibility, scalability, and
                maintainability, aligning with agile practices.Decentralized: Independent deployable services.
                Modular: Each service focuses on a specific function.
            </p>


        </form>
        <form id="contactForm" onsubmit="submitContactForm(event)">
            <h1>Key features</h1>
            <p>
            Modularity: Microservices break down the system into independent modules, making it easier to develop,
            deploy, and scale specific functionalities.
            <br>

            Scalability: Each microservice can be scaled independently based on demand, optimizing resource usage and
            improving performance.
            <br>

            Independent Deployment: Microservices can be developed and deployed independently, enabling faster release
            cycles and reducing the impact of changes on the entire system.

            <br>

            
        </p>



        </form>
        <form id="contactForm" onsubmit="submitContactForm(event)">
            <h1>Efficiency</h1>
            <p>
                Clear Objectives: Clearly defined project objectives provide a roadmap, ensuring that efforts are aligned with overarching goals.
<br>
Effective Planning: Thorough project planning, including timelines, resource allocation, and risk management, sets the foundation for efficient execution.
<br>
Collaborative Communication: Open and transparent communication among team members fosters collaboration, minimizes misunderstandings, and promotes efficient workflows.
            </p>


        </form>
    </div>

</body>

</html>