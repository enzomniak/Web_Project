<?php
    // Include database connection file
    require_once "dbconnect.php";
    // Get data from input form
    $school_of=$_POST['school_of'];
    // $box_no_left=$_POST['box_no_left'];
    // $box_date_left=$_POST['box_date_left'];
    // $box_time_left=$_POST['box_time_left'];
    // $box_record_left=$_POST['box_record_left'];
    $top_rad=$_POST['top_rad'];
    $grad_rad=$_POST['grad_rad'];
    $name_txt=$_POST['name_txt'];
    $middle_school_of=$_POST['middle_school_of'];
    $program_txt=$_POST['program_txt'];
    $phone=$_POST['phone'];
    $ab_rad=$_POST['ab_rad'];
    $re_rad=$_POST['re_rad'];
    $re_acad_year=$_POST['re_acad_year'];
    $ab_acad_year=$_POST['ab_acad_year'];
    $stu_signature=$_POST['stu_signature'];
    $submitStudentId=$_POST['submitStudentId'];
    $prefix = "Mr.";

    //Format the year
    $re_year = "$re_rad" . "-" . "$re_acad_year";
    $ab_year = "$ab_rad" . "-" . "$ab_acad_year";

    //Format name
    $arr_name = explode(" ", $name_txt);
    $fname = $arr_name[0];
    $lname = $arr_name[1];

    ///////////                               CONTINUE HERE                                       ///////
    // Insert data
    $sql="INSERT INTO student VALUES ($submitStudentId, '$prefix', '$fname', '$lname', $middle_school_of, $program_txt,
                                        $dean, '$advisor', $gpax, $status, '$re_year', '$abs_year')";
    $result=mysqli_query($conn, $sql);
    if (!$result){
        die('Error: ' . mysqli_error($conn));
        }
    else {
        header("location: ../index.html");
        }
    mysqli_close($conn);
?>