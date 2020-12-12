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
    $advisor=$_POST['advisor'];
    $gpax=$_POST['gpax'];
    $status=$_POST['status'];
    $re_year=$_POST['re_year'];
    $abs_year=$_POST['abs_year'];
    $phone=$_POST['phone'];
    $stu_lvl=$_POST['stu_lvl'];

    // Insert data
    $sql="INSERT INTO student VALUES ($sid, '$prefix', '$fname', '$lname', $school, $program,
                                    '$advisor', $gpax, $status, '$re_year', '$abs_year', '$phone', '$stu_lvl')";
    $result=mysqli_query($conn, $sql);
    if (!$result){
        die('Error: ' . mysqli_error($conn));
        }
    else {
        header("location: read_table.php");
        }
    mysqli_close($conn);
?>