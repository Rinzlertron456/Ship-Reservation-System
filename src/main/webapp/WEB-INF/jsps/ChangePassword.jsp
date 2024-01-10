<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Change Password</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:400,700'>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
}

body {
  background-image: url("https://wallpaperaccess.com/full/1266157.jpg");
  background-size: cover;
  font-family: 'Rubik', sans-serif;
  display: flex;
    justify-content: center;
    align-items: center;
    height: 90vh;
}

.login-form {
  background: #fff;
  width: 500px;
  margin: auto;
  display: -webkit-box;
  display: flex;
 /*  -webkit-box-orient: vertical;
  -webkit-box-direction: normal; */
          flex-direction: column;
          justify-content: center;
          
  border-radius: 4px;
  box-shadow: 0 2px 25px rgba(0, 0, 0, 0.2);
}
.login-form h1 {
  padding: 35px 35px 0 35px;
  font-weight: 300;
}
.login-form .content {
  padding: 35px;
  text-align: center;
}
.login-form .input-field {
  padding: 12px 5px;
}
.login-form .input-field input {
  font-size: 16px;
  display: block;
  font-family: 'Rubik', sans-serif;
  width: 100%;
  padding: 10px 1px;
  border: 0;
  border-bottom: 1px solid #747474;
  outline: none;
  -webkit-transition: all .2s;
  transition: all .2s;
}
.login-form .input-field input::-webkit-input-placeholder {
  text-transform: uppercase;
}
.login-form .input-field input::-moz-placeholder {
  text-transform: uppercase;
}
.login-form .input-field input:-ms-input-placeholder {
  text-transform: uppercase;
}
.login-form .input-field input::-ms-input-placeholder {
  text-transform: uppercase;
}
.login-form .input-field input::placeholder {
  text-transform: uppercase;
}
.login-form .input-field input:focus {
  border-color: #222;
}
.login-form a.link {
  text-decoration: none;
  color: #747474;
  letter-spacing: 0.2px;
  text-transform: uppercase;
  display: inline-block;
  margin-top: 20px;
}
.login-form .action {
  display: -webkit-box;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
          flex-direction: row;
}
.login-form .action button {
  width: 100%;
  border: none;
  padding: 18px;
  font-family: 'Rubik', sans-serif;
  font-size:1.2rem;
  cursor: pointer;
  text-transform: uppercase;
  background: #de6d40;
  color: #000;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 0;
  letter-spacing: 0.2px;
  outline: 0;
  -webkit-transition: all .3s;
  transition: all .3s;
}
.login-form .action button:hover {
  background: #f07b4c;
}
.login-form .action button:nth-child(2) {
  background: #d8d8d8;
  color: #fff;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 4px;
}
.login-form .action button:nth-child(2):hover {
  background: #3c4d6d;
}
</style>
</head>
<body>

<div class="login-form">
  <form action="changePassword" method="post"  >
    <h1>Change Password</h1>
    <div class="content">
      <div class="input-field">
        <input type="email" placeholder="email" name="email" autocomplete="nope" required="required">
      </div>
      <div class="input-field">
        <input type="password" placeholder="NewPassword" name="NewPassword" autocomplete="new-password"  required="required">
      </div>
    </div>
    <div class="action">
   <!--  <button> <a href="/registerPage">Register</a> </button> -->
    <button type=submit> Change</button>
    </div>
  </form>
</div>


 

</body>
</html>