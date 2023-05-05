<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Sign Up Page</title>
    <style>
      
body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
}
.container {
display: flex;
justify-content: center;
align-items: center;
height: 100vh;
}

form {
display: flex;
flex-direction: column;
align-items: center;
background-color: #ffffff;
padding: 20px;
border-radius: 10px;
box-shadow: 0px 0px 10px #b3b3b3;
}

#login-form {
display: flex;
flex-direction: column;
align-items: center;
margin-bottom: 150px;
}

#signup-form {
display: flex;
flex-direction: column;
align-items: center;
margin-bottom: 150px;
}

h1 {
text-align: center;
margin-bottom: 20px;
}

input[type="text"],
input[type="email"],
input[type="password"] {
width: 100%;
padding: 10px;
margin-bottom: 20px;
font-size: 16px;
border-radius: 5px;
border: none;
box-shadow: 0px 0px 5px #b3b3b3;
}

button[type="submit"] {
width: 100%;
padding: 10px;
margin-top: 20px;
font-size: 16px;
background-color: #4CAF50;
color: #ffffff;
border-radius: 5px;
border: none;
cursor: pointer;
}

button[type="submit"]:hover {
background-color: #3e8e41;
}

#login-form, #signup-form {
display: none;
}

#signup-form {
display: flex;
}
    </style>
  
  </head>
  <body>
    <div class="container">
      <div id="signup-form">
        <h1>Sign Up</h1>
        <form>
          <input type="text" id="username" placeholder="Username" required>
          <input type="email" id="email" placeholder="Email" required>
          <input type="password" id="password" placeholder="Password" required>
          <input type="password" id="confirm-password" placeholder="Confirm Password" required>
          <button type="submit">Submit</button>
          <p id="switch-form">Already have an account? <a href="login.html">Login</a></p>
          <div id="message"></div>
          
        </form>
      </div>
    </div>
    <script>
    const form = document.querySelector("form");
    form.addEventListener("submit", function(event) {
      event.preventDefault();
      const username = document.getElementById("username").value;
      const email = document.getElementById("email").value;
      const password = document.getElementById("password").value;
      const confirmPassword = document.getElementById("confirm-password").value;
      const message = document.getElementById("message");

      if (!username || !email || !password || !confirmPassword) {
        message.innerHTML = "All fields are required.";
        return;
      }

      if (password !== confirmPassword) {
        message.innerHTML = "Passwords do not match.";
        return;
      }

      const xhr = new XMLHttpRequest();
      xhr.open("POST", "/signup", true);
      xhr.setRequestHeader("Content-Type", "application/json");
      xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
          const response = JSON.parse(xhr.responseText);
          if (response.status === "success") {
            message.innerHTML = "Sign up successful!";
            window.location.href = "ideaadventurer.jsp";
          } else {
            message.innerHTML = "Error occurred while inserting data.";
          }
        }
      };
      xhr.send(JSON.stringify({ username, email, password }));
    });


    </script>
    
  </body>
</html>

