<?php
    $name = $_GET["name"];
    require_once "dbconnect.php";
    //Query for programs
    $querey="SELECT * FROM student WHERE FirstName = '$name'";
    
    $result = mysqli_query($conn,$querey);
    $student = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($student);
?>