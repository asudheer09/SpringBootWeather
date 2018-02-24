<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Static content -->
<link rel="stylesheet" href="/resources/style.css">
<script type="text/javascript" src="/resources/app.js"></script>
<script type="text/javascript" src="/resources/jquery-3.3.1.min.js"></script>

<script>
$(document).ready(function(){

    $("#submit").click(function(){
    	var cityName=$("#name").val().trim();
    	 $.ajax({
             url: '/weather',
             type: 'post',
             data: {
            	 city: cityName
             },
             success: function(data) {
            	var messages = JSON.parse(data);// Turns the String into an Object you can manipulate 
                var description=messages['weather'][0]['description'];
            	var city=messages.name;
            	var countryCode=messages.sys.country;
                 $("#description").append(description);
                 $("#countrycode").append(countryCode);
                 $("#cityw").append(city);
             }
         });
    });
    
    $("#clear").click(function(){
    	 $("#description").hide();
         $("#countrycode").hide();
         $("#cityw").hide();
         $("#name").val('')
    });
	
});
</script>
<title>Spring Boot</title>
</head>
<body>
  <h1>Spring Boot - MVC weather application example</h1>
  <hr>

  <div class="form">
      <table>
        <tr>
          <td>Enter City</td>
          <td><input id="name" name="city"></td>
          <td><input type="submit" value="Get Weather" id="submit"></td>
          <td><input type="button" value="Clear" id="clear"></td>
        </tr>
      </table>
  </div>

	<table style="width:500px">
		<caption>Weather Report</caption>
		<tr>
			<th>Country Code</th>
			<th>City</th>
			<th>Weather</th>
		</tr>
		<tr>
			<td id="countrycode"></td>
			<td id="cityw"></td>
			<td id="description"></td>
		</tr>
	</table>
</body>
</html>