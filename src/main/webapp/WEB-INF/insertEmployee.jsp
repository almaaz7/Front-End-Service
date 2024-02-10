<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us</title>
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
					<li><a class="active" href="insertPage">Insert</a></li>
					<li><a href="getList">Read</a></li>
					<li><a  href="deletePage">Delete</a></li>
					<li><a href="updatePage">Update</a></li>
				</ul>
			</nav>
    <div class="container">
        <form id="contactForm" onsubmit="submitForm(event)">
            <h1>Insert Employee</h1>
            <input type="text" id="firstName" placeholder="Name" name="name" required>
            <input type="text" id="salary" placeholder="Salary" name="salary" required>
            <input type="text" id="number" placeholder="Number" name="number" required>
            <button type="submit" id="button">Submit</button>
            
        </form>
    </div>
    
    <script>
    function submitForm(event) {
        event.preventDefault();

        var employeeName = document.getElementById('firstName').value;
        var employeeSalary = document.getElementById('salary').value;
        var employeeNumber = document.getElementById('number').value;

        var jsonData = {
            "name": employeeName,
            "salary": employeeSalary,
            "number": employeeNumber
        };

        var jsonString = JSON.stringify(jsonData);

        fetch('/insertEmp', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: jsonString
        })
        .then(data => {
            // Handle the response data
            console.log(data);
            alert('Employee inserted successfully!');
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Error occurred during employee insertion.');
        });
    }
</script>


</body>
</html>


<!-- for practice -->
<!-- <html>
<head>
    <title>Insert Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }
        button {
            padding: 10px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Insert Employee</h2>

    <form id="employeeForm" onsubmit="submitForm(event)">
        <div class="form-group">
            <label for="employeeName">Employee Name:</label>
            <input type="text" id="employeeName" name=name required>
        </div>

        <div class="form-group">
            <label for="employeeSalary">Employee Salary:</label>
            <input type="number" id="employeeSalary" name="salary" required>
        </div>

        <div class="form-group">
            <label for="employeeNumber">Employee Number:</label>
            <input type="text" id="employeeNumber" name="number" required>
        </div>

        <button type="submit">Submit</button>
    </form>
</div>

<script>
    function submitForm(event) {
        event.preventDefault();

        // Get values from the form
        var employeeName = document.getElementById('employeeName').value;
        var employeeSalary = document.getElementById('employeeSalary').value;
        var employeeNumber = document.getElementById('employeeNumber').value;

        // Create JSON object
        var jsonData = {
            "name": employeeName,
            "salary": employeeSalary,
            "number": employeeNumber
        };

        // Convert JSON object to string
        var jsonString = JSON.stringify(jsonData);

        // Make an AJAX request or perform any necessary logic with the JSON data
        // For example, using Fetch API
        fetch('/insertEmp', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: jsonString
        })
        .then(data => {
            // Handle the response data
            console.log(data);
            alert('Employee inserted successfully!');
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Error occurred during employee insertion.');
        });
    }
</script>

</body>
</html> -->
