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
    width: 670px;
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
    width: 290px;
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

.container form #lastName,
.container form #mobile{
    margin-left: 20px;
}

.container form h4{
    color: #fff;
    font-weight: 300;
    width: 600px;
    margin-top: 20px;
}

.container form textarea{
    background: none;
    border: none;
    border-bottom: 2px solid #fff;
    color: #fff;
    font-weight: 200;
    font-size: 15px;
    padding: 10px;
    outline: none;
    min-width: 600px;
    max-width: 600px;
    min-height: 80px;
    max-height: 80px;
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
    width: 100px;
    padding: 0;
    margin-right: 500px;
    margin-bottom: 30px;
    transition: 0.3s;
}

.container form #button:hover{
    opacity: 0.7;
}
    </style>
</head>
<body>

<!--     <div class="navbar">
        <a href="#">Home</a>
        <a href="#">About Us</a>
        <a href="#">Employee Login</a>
    </div>

    <h2>Contact Us</h2> -->
    <nav class="navbar">
				<img class="logo" src="https://cdn-icons-png.flaticon.com/128/13468/13468481.png" alt="image">
				<ul>
					<li><a  href="/">Home</a></li>
					<li><a href="aboutus">About</a></li>
					<li><a class="active" href="contactus">Contact</a></li>
					<li><a href="employeelogin">Employee Login</a></li>
					<li><a href="adminlogin">Admin Login</a></li>
				</ul>
			</nav>
    <div class="container">
        <form id="contactForm" onsubmit="submitContactForm(event)">
            <h1>Contact Us Form</h1>
            <input type="text" id="firstName" placeholder="First Name" name="name" required>
            <input type="text" id="lastName" placeholder="Last Name" required>
            <input type="email" id="email" placeholder="Email" name="email" required>
            <input type="text" id="mobile" placeholder="Mobile" name="subject" required>
            <h4>Type Your Message Here...</h4>
            <textarea id="message" name="message" required></textarea>
            <!-- <input type="submit" value="Send" id="button"> -->
            <button type="submit" id="button">Submit</button>
            
        </form>
    </div>


    <script>
        function submitContactForm(event) {
            event.preventDefault();

            var formData = {
                name: document.getElementById('firstName').value,
                email: document.getElementById('email').value,
                subject: document.getElementById('mobile').value,
                message: document.getElementById('message').value
            };

            fetch('/submitContact', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(formData)
            })
            
            .then(data => {
                // Display an alert based on the response
                console.log(data);
                alert('Contact form submitted successfully!');
            })
            .catch(error => {
                console.error('Error:', error);
                alert('An unexpected error occurred. Please try again later.');
            });
        }
    </script>

</body>
</html>
