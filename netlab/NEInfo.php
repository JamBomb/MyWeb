<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<link rel="stylesheet" href="css/pure/tables-min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<link rel="Shortcut Icon" href="favicon.ico" type="image/x-icon" /> 
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="Bookmark" href="favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="css/pure/pure.css">

     
            <!--[if lte IE 8]>
            <link rel="stylesheet" href="css/layouts/side-menu-old-ie.css">
        <![endif]-->
        <!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="css/layouts/side-menu.css">
        <!--<![endif]-->
    <title>Infinera NET Lab  &ndash; Shanghai China &ndash;</title>
    
    
</head>
<body>
<div id="layout">
    <!-- Menu toggle -->
    <a href="#menu" id="menuLink" class="menu-link">
        <!-- Hamburger icon -->
        <span></span>
    </a>

    <div id="menu">
	 <a class="pure-menu-heading" href="NEInfo.php"> Welcome </a>
	 <?php
	 $username = $_POST['UserName'];
	 echo "<b><font color=\"FloralWhite\">".$username."</font></b>";
	 ?>
	 
	<img class="pure-img-responsive" src="image/timg.jpg" alt="Infinera">

        <div class="pure-menu">			
            <ul class="pure-menu-list">
			    <li class="pure-menu-item pure-menu-selected"><a href="NEInfo.php" class="pure-menu-link">Usage</a></li>				
                <li class="pure-menu-item"><a href="#" class="pure-menu-link">mTera</a></li>
                <li class="pure-menu-item"><a href="#" class="pure-menu-link">Nano</a></li>
                <li class="pure-menu-item"><a href="#" class="pure-menu-link">Keystone</a></li>
                <li class="pure-menu-item"><a href="#" class="pure-menu-link">mTera8</a></li>
            </ul>
        </div>
    </div>

    <div id="main">
        <div class="header">
            <h1>Infinera Net Lab </h1>
            <h2>Net Elements Usage of Packet Team@Shanghai China</h2>
        </div>

        <div class="content" >
            <h2 class="content-subhead">What is the NEs usage for Packet Team?</h2>
			<hr />
			<?php
					function ShowNE($db, $row_devices)
					{
						$num = 0; 						
						$string = '<table class="mq-table pure-table pure-table-bordered ">
						          <thead> <tr>
								  <th class="highlight">#</th>
								  <th class="highlight">'.$row_devices['Type'].'</th>
								  <th class="highlight">Usage</th>
								  </tr></thead>
								  <tbody>';
						$sql_DeviceIP = "SELECT * FROM DeviceIP";
						$QueryIP = $db->query($sql_DeviceIP);		  								  
						while($row = $QueryIP->fetch_array())
						{
							if($row['Type'] == $row_devices['Type'])
							{
							 $num++;	
							 $usage = "1/";
							 $sql_DeviceUsage = "SELECT * FROM DeviceUsage WHERE Reserved != 'Available' AND IP = '".$row['IP']."'";	
							 //echo $sql_DeviceUsage;
							$QueryDeviceUsage = $db->query($sql_DeviceUsage);		
							$usage =$QueryDeviceUsage->num_rows;							 
							 $usage .= "/".$row_devices['Slots'];							
							 $string .='<tr>
							            <td>'.$num.'</td>
                                        <td>'.$row['IP'].'</td>            
										<td>'.$usage.'</td>            
                                        </tr>';									
										
							mysqli_free_result($QueryDeviceUsage);
							}							
						}
                        $string .= '</tbody></table>';
						
						  echo $string;	
						  
						mysqli_free_result($QueryIP);						  
						  return $string;
					  }  
	  

					 $db = new mysqli('localhost', 'root', 'Pphy8796', 'NELab');
					  if (mysqli_connect_errno())
					  {
						echo '<p>' . 'Connect INFINERA NET LAB DB error';
						exit;
					  }
					  else
					  {						
						//echo '<p>' . 'Connect INFINERA NET LAB DB successfully' . '</p>'; 
						
						$sql_devices = "SELECT * FROM Devices";
						$query_devices = $db->query($sql_devices);	
						$DeviceTypeTotal = 	$query_devices->num_rows;
						
						echo "<div class=\"pure-g\">";	
						$str_div = "<div class=\"pure-u-1-2\">";
						
						while($row_devices = $query_devices->fetch_array())
						{
							echo $str_div;
							ShowNE($db, $row_devices);
							echo " </div>";								
							echo " <br \>";								
						}
						echo " </div>"; 
						
                   					
						mysqli_free_result($query_devices);		                       						
						mysqli_close($db); 						
					  }	
			?>
			<hr />			
        </div>
    </div>
</div>

<script src="js/ui.js"></script>

</body>
</html>
