<?php
    $sh_id = $_GET["school_id"];
    require_once "dbconnect.php";
    $sql="SELECT ProgramName FROM Program WHERE SchoolID = $sh_id";
    $result = mysqli_query($conn,$sql);
    $programs = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($programs);
?>