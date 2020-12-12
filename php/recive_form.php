<?php
    // Include database connection file
    require_once "dbconnect.php";
    // Get data from input form
    $re_enter_rad=$_POST['re_enter_rad'];
    $re_enter_acad_year=$_POST['re_enter_acad_year'];

    $lvl_grad_rad=$_POST['lvl_grad_rad'];

    $prefix=$_POST['prefix'];
    $name_txt=$_POST['name_txt'];
    $submitStudentId=$_POST['submitStudentId'];

    $school=$_POST['school'];
    $program=$_POST['program'];

    $phone=$_POST['phone'];

    $absence_rad=$_POST['absence_rad'];
    $absence_acad_year=$_POST['absence_acad_year'];

    $stu_signature=$_POST['stu_signature'];

    if($_POST['gpax']){
        $gpax=$_POST['gpax'];
    }
    else{
        $gpax = 0.00;
    }
    if($_POST['status']){
        $status=$_POST['status'];
    }
    else{
        $status = 4;
    }

    //Format the year
    $re_enter_format = "$re_enter_rad" . "-" . "$re_enter_acad_year";
    $absence_format = "$absence_rad" . "-" . "$absence_acad_year";

    //Format name
    $arr_name = explode(" ", $name_txt);
    $fname = $arr_name[0];
    $lname = $arr_name[1];

    // Insert data
    $sql="INSERT INTO student VALUES ($submitStudentId, '$prefix', '$fname', '$lname', $school, $program,
                                    '$advisor', $gpax, $status, '$re_enter_format', '$absence_format', '$phone', '$lvl_grad_rad')";
    $result=mysqli_query($conn, $sql);
    if (!$result){
        die('Error: ' . mysqli_error($conn));
        }
    else {
        header("location: ../form_print.html");
        }
    mysqli_close($conn);
?>