<?php
if(empty(trim($_POST["sid"]))){
 // URL doesn't contain id parameter. Redirect to error page
 // header("location: error.php");
 exit();
}
else{
// Include database connection file
require_once "dbconnect.php";
$sid=$_POST['sid'];
$prefix=$_POST['prefix'];
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$school=$_POST['school'];
$program=$_POST['program'];
$dean=$_POST['dean'];
$advisor=$_POST['advisor'];
$gpax=$_POST['gpax'];
$status=$_POST['status'];
$re_year = $_POST["re_year"];
$abs_year = $_POST["abs_year"];

$sql="UPDATE student SET prefix = '$prefix', FirstName = '$fname', LastName = '$lname', SchoolID = $school, 
ProgramID = '$program' , DeanID = '$dean', Advisor = '$advisor', GPAX = $gpax, StatusID = $status, ReturnYear = '$re_year', AbsenceYear = '$abs_year'
WHERE StudentID = $sid";
$result = mysqli_query($conn,$sql);
if (!$result)
 {
 die('Error: ' . mysqli_error($conn));
 }
else {
 header("location: read_table.php");
}
mysqli_close($conn);
}
?>