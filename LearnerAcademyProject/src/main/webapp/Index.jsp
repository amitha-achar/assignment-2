<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Learner Academy</title>

<script>
function enableSubmit(){
let inputs = document.getElementsByClassName('required'); // Enter your class name for a required field, this should also be reflected within your form fields.
let btn = document.querySelector('input[type="submit"]');
let isValid = true;

for (var i = 0; i < inputs.length; i++){
let changedInput = inputs[i];

if (changedInput.value.trim() === "" || changedInput.value === null){
isValid = false;
break;
}
}
btn.disabled = !isValid;
}
</script>
 
</head>
<body>
<h1><marquee direction="right" >Welcome to Learner Academy</marquee></h1>

<div align="center">

<h2> Login</h2></div>
<form action="login.jsp">
<div align="center">
User Name :</div><div align="center"> <input type="text" name="user" class="required" onkeyup="enableSubmit()"> </div><br>
<div align="center">Password: </div><div align="center">  <input type="password" name="pwd" class="required" onkeyup="enableSubmit()"/></div><br>
<div align="center">


<input type="submit"  value="Login" disabled="disabled"/></div>
</form>
<img alt="" src="C:/Users/lenovo/OneDrive/Desktop/Lacademy.png"/>
</body>
</html>