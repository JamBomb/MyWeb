<!DOCTYPE html>
<html lang="en">   
<head>
    <meta charset="UTF-8">
    <title>Login INFINERA NET LAB</title>
    <link rel="stylesheet" href="css/pure/pure-min.css">
	 <link rel="stylesheet" href="css/style.css">
	<link rel="Shortcut Icon" href="favicon.ico" type="image/x-icon" /> 
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="Bookmark" href="favicon.ico" type="image/x-icon" />
</head>
<body style="background:url(image/bg.png)">
<div class="wrapper">
    <div class="header">Welcome to Infinera Net Lab</div>
    <form id="form_login" action="NEInfo.php" method="post">
        <ul>
            <li>
				<div  align="center"> <image src="image/user.png" /> </div>
                <div class="text">
					 <?php
					  $db = new mysqli('localhost', 'root', 'Pphy8796', 'NELab');
					  if (mysqli_connect_errno())
					  {
						echo '<p>' . 'Connect INFINERA NET LAB DB error';
						exit;
					  }
					  else
					  {
						//echo '<p>' . 'Connect INFINERA NET LAB DB successfully' . '<p>';  
						
						$sql = "SELECT * FROM User";
						$query = $db->query($sql);
						
						echo " <label id=\"lblSelect\">
								<select name=\"UserName\" id=\"SelectUser\" title=\"Please Select User\">
								<option>Guest</option>";
						while($row = $query->fetch_array())
						{
							echo "<option>".$row['Name']."</option>";
						}
						echo "</select>
                			 </label>"; 					
					
						mysqli_free_result($query);	
						mysqli_close($db); 						
					  }	
					?>			
                </div>
			</li>                   			
            <li class="remember"> <input type="checkbox">Remember me</li>
            <li> <a href="">Forget me</a> </li>
            <li> <input type="button" value="Login in" onclick="checkinfo()"> </li>
        </ul>
    </form>  
	<script type="text/javascript">
	function checkinfo()
	{
     	var onSelectUser = document.getElementById("SelectUser").value; 
           // alert(onSelectUser);		
     	document.getElementById("form_login").submit();
    }

	</script>
</div>
</body>   
</html>