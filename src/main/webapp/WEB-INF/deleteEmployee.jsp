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
    .response-container{
    color: white;
    }

.container{
    min-height: 100vh;
    background: #08071d;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background-image: url('https://images.pexels.com/photos/12366058/pexels-photo-12366058.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100vh;
}

.container form{
    margin: 20px;
    width: 400px;
    height: 200px;
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
					<li><a  href="/">Home</a></li>
					<li><a  href="insertPage">Insert</a></li>
					<li><a href="getList">Read</a></li>
					<li><a class="active"  href="deletePage">Delete</a></li>
					<li><a href="updatePage">Update</a></li>
				</ul>
			</nav>
    <div class="container">
        <form id="contactForm" onsubmit="submitForm(event)">
            <h1>Search Employee</h1>
            <input type="text" id="employeeName" placeholder="Name" name="name" required>
            <button type="submit" id="button">Display Employee</button>
            
        </form>

        <div id="responseContainer" class="response-container"></div>

        <form id="contactForm" action="deleteEmp" method="post" onsubmit="deleteEmployee(event)">
            <h1>Delete Employee</h1>
            <input type="number" id="employeeId" placeholder="Id" name="id" required>
            <button type="submit" id="button" >Delete</button>
            
        </form>
    </div>
    
    <script>
    function deleteEmployee(event) {
    	event.preventDefault();
        var employeeId = document.getElementById('employeeId').value;

        // Assuming the URL already contains any existing query parameters
        var url = '/deleteEmp?id=' + encodeURIComponent(employeeId);

        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        })
        
        .then(data => {
            console.log(data);
            if(data.status===200){
            alert("Deleted successfully");
            }else{
            	alert("Id not correct!");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Error occurred while deleting the employee.');
        });
    }

        function submitForm(event) {
            event.preventDefault();
    
            var employeeName = document.getElementById('employeeName').value;
    
            fetch('/searchList?name=' + encodeURIComponent(employeeName))
            .then(response => response.json())
            .then(data => {
                console.log(data)
                displayResponse(data);
            })
            .catch(error => {
                console.error('Error:', error);
                displayResponse({ error: 'An error occurred while fetching data.' });
            });
        }
    
        function displayResponse(data) {
    
            var responseContainer = document.getElementById('responseContainer');
            responseContainer.innerHTML = '';
    
            if (data.error) {
                responseContainer.innerHTML = '<p style="color: red;">' + data.error + '</p>';
                return;
            }
            
            if(data.length == 0){
                responseContainer.innerHTML = "No Data found";
                return;
            }
    
            var table = document.createElement('table');
            table.setAttribute('border', '1');
    
            var headerRow = table.insertRow(0);
            for (var key in data[0]) {
                var th = document.createElement('th');
                th.textContent = key.charAt(0).toUpperCase() + key.slice(1);
                headerRow.appendChild(th);
            }
    
            for (var i = 0; i < data.length; i++) {
                var employee = data[i];
                var row = table.insertRow(i + 1);
    
                for (var key in employee) {
                    var cell = row.insertCell();
                    cell.textContent = employee[key];
                }
            }
    
            responseContainer.appendChild(table);
        }
    </script>


</body>
</html>

