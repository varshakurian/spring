<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

      <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
  body
{
  background-color:black;
}
h2
{
  text-decoration:underline;
}

#table1
{
  
  
  background-color:grey;
  top:15em;
}
  
</style>

<script type="text/JavaScript">
$(document).ready(function()
{
  $("#abc").click(function()

{

    var x = $("#a1").val();
    if (x == "") {
        alert("first  Name must be filled out");
        return false;}

var x1 = $("#a2").val();
    if (x1 == "") {
        alert("last  Name must be filled out");
        return false;}



    });
});
</script>
</head>
<body>
<form action="" method="post" name="f1" enctype="multipart/form-data"  >

<div class="container-fluid" style="background-color:grey">

<div class="row"><br>
<div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    First Name
    </div>
    <div class="col-sm-2 hidden-sm col-xs-2 col-md-2 col-lg-2">

    <input name="firstname" type="text" id="a1">
    </div>
    </div>
    <div class="row"><br>
    <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    Last Name
    </div>
    <div class="col-sm-2 hidden-sm col-xs-2 col-md-2 col-lg-2">

    <input name="lastname" type="text" id="a2">
    </div>
    </div>
  
   <div class="row"><br>
   <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    Address
    </div>
    <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    <textarea name="address" cols="20" rows="5"></textarea>
  </div>
  </div>
  
  <div class="row"><br>
   <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    
    </div>
    
   <div class="row"><br>
  <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    Gender
    </div>
    <div class="col-sm-2 hidden-sm col-xs-2 col-md-2 col-lg-2">

    
    <input type="radio" name="gender" id="radio" value="male">Male
    <input type="radio" name="gender" id="radio" value="female">Female
   </div>
   </div>
   
   
   
    
    <div class="row"><br>
  <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    Email
    </div>
    <div class="col-sm-2 hidden-sm col-xs-2 col-md-2 col-lg-2">

    <input name="email" type="text">
  </div>
  </div>
  
  <div class="row"><br>
   <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    Contact
    </div>
    <div class="col-sm-2 hidden-sm col-xs-2 col-md-2 col-lg-2">

    <input name="contact" type="text">
  </div>
  </div>
  
  <div class="row"><br>
  <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    
    District
    </div>
    
    <div class="col-sm-2 hidden-sm col-xs-2 col-md-2 col-lg-2">

    <input name="district" type="text">
  </div>
  </div>
  
  <div class="row"><br>
  <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    Place
    </div>
    <div class="col-sm-2 hidden-sm col-xs-2 col-md-2 col-lg-2">

    <input name="place" type="text">
  </div>
  </div>
  
  <div class="row"><br>
  <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    Image
    </div>
    <div class="col-sm-2 hidden-sm col-xs-2 col-md-2 col-lg-2">

    <input name="filename" type="file">
  </div>
  </div>
    
    <div class="row"><br>
   <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    <input name="submit" type="submit" value="Register" id="abc">
    </div>
    <div class="col-sm-1 hidden-sm col-xs-1 col-md-1 col-lg-1">

    <input name="reset" type="reset" value="Reset">
   </div>
   </div>
   
   </div>
   
</form>

</body>
</html>