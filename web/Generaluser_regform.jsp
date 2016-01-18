<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <title>Public User Register form</title>
	  <link rel="stylesheet" type="text/css" href="css/formcss.css">
      <script type="text/javascript">
	  	function ValidateEmail() {
			var email = document.getElementById("email");
			var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			if (email.value.match(mailformat)) {
				return true;
			} else {
				alert("You have entered an invalid email address!");
				email.focus();
				return false;
			}
		}
		
		function LoadDateTime(){
			var year = document.getElementById("year");
			var month = document.getElementById("month");
			var day = document.getElementById("day");
			
			var option = document.createElement("option");
			for(i=1900;i<2015;i++){
				option.text = i+"";
				year.add(option);
			}
			
		}
      </script>
   </head>
   <body>
      <h1 align="center">Register Form</h1>
      <form action="" method="" onsubmit="" onload="LoadDateTime()" class="regform">
         <h3>User Information</h3>
            <p>
			<label for="username">Username:</label>
			<input type="text" name="uname" size="12" placeholder="e.g. taiman1234"/>

            <label for="passwd">Password:</label>
            <input type="password" name="passwd" size="12" /><br/>
			
				Surname:
               <input type="text" name="surname" placeholder="e.g. Chan" maxlength="30"/><br />
               Given name:<input type="text" name="givenname" placeholder="e.g. Tai Man" maxlength="20"/><br />
               Gender: <input type="radio" name="gender" value="m" checked="checked"/>Male
               <input type="radio" name="gender" value="f" />Female <br />
               <label for="dob">Birthday: </label><input type="date" name="dob"><br/>
               Telephone Number: <input type="text" name="tel" placeholder="e.g. 91234567" maxlength="8" /><br />
               Email Address: <input type="email" name="email" id="email" placeholder="e.g. taiman@email.com" maxlength="50" size="50" onchange="ValidateEmail()"/>
               <br />
            </p>
            <h3>Address</h3>
            <p>
               Flat/Room, Floor, Block
                 <input type="text" name="add_room" placeholder="e.g. Flat 401, 4/F, Block 2" size="20"/>
               <br />
               Garden/Mansion/Estate, Road/Street/Avenue<input type="text" name="" size="20" placeholder="e.g. Hong Kong Estate, 1 Central Street"/>
               <br />
               District<input type="text" name="" size="10" placeholder="e.g. Central"/>
               <br />
               <label for="location">Location</label><br/>
               <select name="location">
                  <option selected="selected">(Please select a location)</option>
                  <option>Hong Kong Island</option>
                  <option>Kowloon</option>
                  <option>New Territories and Islands District</option>
               </select><br/>
            </p>
            <h3>Parent</h3>
            <p>
               Parent Name: <input type="text" name="parent" placeholder="e.g. Chan Tai Tai" maxlength="50"/><br />
               Relation:  <input type="text" name="relation" placeholder="e.g. Father" maxlength="10"/><br />
               Emergency Call:  <input type="text" name="surname" placeholder="e.g. 94567891" maxlength="30"/><br />
            </p>
            <input type="submit" value="Submit" /> <input type="reset" value="Clear Information" />
      </form>
   </body>
</html>