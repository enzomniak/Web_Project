<?php
if(empty(trim($_GET["sid"]))){
 // URL doesn't contain id parameter. Redirect to error page
 // header("location: error.php");
 exit();
}
else{
// Include database connection file
require_once "dbconnect.php";
$sid = $_GET["sid"];
$sql="DELETE FROM Student WHERE StudentID = $sid";
$result = mysqli_query($conn,$sql);
if (!$result){
 die('Error: ' . mysqli_error($conn));
}
else {
 header("location: read_table.php");
}
mysqli_close($conn);
}
?>