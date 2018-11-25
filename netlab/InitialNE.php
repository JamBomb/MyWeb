<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<link rel="stylesheet" href="css/pure/tables-min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<link rel="Shortcut Icon" href="favicon.ico" type="image/x-icon" /> 
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="Bookmark" href="favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="css/pure/pure-min.css">
     
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
    <div id="main">
        <div class="content">
            <h2 class="content-subhead">Initialize NEs DB</h2>
			<hr />
			<?php
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
					
					while($row_devices = $query_devices->fetch_array())
					{
						$sql_DeviceIP = "SELECT * FROM DeviceIP";
						$query_DeviceIP = $db->query($sql_DeviceIP);																				
						$num = 0; 						
						$string = '<table class="pure-table pure-table-bordered pure-table-striped">
							  <thead> <tr>
							  <td>#</td>
							  <td>'.$row_devices['Type'].'</td>
							  <td>Usage</td>
							  </tr></thead>
							  <tbody>';
							  
						while($row = $query_DeviceIP->fetch_array())
						{
							if($row['Type'] == $row_devices['Type'])
							{
							 $num++;	
							 $usage = "1/".$row_devices['Slots'];
							 $string .='<tr>
										<td>'.$num.'</td>
										<td>'.$row['IP'].'</td>            
										<td>'.$usage.'</td>            
										</tr>';									
										
							 
								for ($x=1; $x<=$row_devices['Slots']; $x++)
								{
									//$sql_init = "INSERT INTO `DeviceUsage` (`ID`, `IP`, `Slot`, `Reserved`) VALUES (NULL,  , \'Available\')";
									$sql_init = "INSERT INTO `DeviceUsage` (`ID`, `IP`, `Slot`, `Reserved`) VALUES (NULL, '".$row['IP']."','".$x."', 'Available');";
									//echo $sql_init;
									$result =  $db->query($sql_init);									
									if($result)
									{

									}
									else
									{
										echo "insert DeviceUsage db error！";
									}
								}  								
							
							}							
						}
						$string .= '</tbody></table>';
					
						echo $string;	
						
						
						echo '<br />';
					}
										
					mysqli_free_result($query_devices);
					mysqli_free_result($query_DeviceIP);
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
