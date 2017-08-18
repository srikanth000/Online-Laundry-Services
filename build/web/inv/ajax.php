<?php
/*
Site : http:www.smarttutorials.net
Author :muni
*/
session_start();
require_once 'config.php';
if(!empty($_POST['type'])){
	$type = $_POST['type'];
	$name = $_POST['name_startsWith'];
	$query = "SELECT material,cost FROM material where material  LIKE '".$name."%' and location_id='".$_SESSION['location']."' and branch_id='".$_SESSION['branch']."'";
	$result = mysqli_query($con, $query);
	$data = array();
	while ($row = mysqli_fetch_assoc($result)) {
		$name = $row['material'].'|'.$row['material'].'|'.$row['cost'];
		array_push($data, $name);
	}	
	echo json_encode($data);
exit;
}


