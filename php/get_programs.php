<?php
    $sh_id = $_GET["school_id"];
    require_once "dbconnect.php";
    //Query for programs
    $querey="SELECT program.ProgramName, program.ProgramID, dean.DeanName, dean.DeanID 
FROM program INNER JOIN dean 
ON program.SchoolID = dean.SchoolID 
WHERE program.SchoolID = $sh_id";
    
    $result = mysqli_query($conn,$querey);
    $programs = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($programs);
?>