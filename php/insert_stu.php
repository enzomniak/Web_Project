<?php
    // Include database connection file
    require_once "dbconnect.php";
    // Get data from input form
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

    // Insert data
    $sql="INSERT INTO student VALUES ($sid, '$prefix', '$fname', '$lname', $school, $program,
                                        $dean, '$advisor', $gpax, $status)";
    $result=mysqli_query($conn, $sql);
    if (!$result){
        die('Error: ' . mysqli_error($conn));
        }
    else {
        header("location: read_table.php");
        }
    mysqli_close($conn);
?>