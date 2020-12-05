<!DOCTYPE html>
<html>
    <head>
        <title> View Entries </title>
    </head>
    <body>
        <?php
        // Include database connection file
        require_once "dbconnect.php";
        $sid = $_GET['sid'];
        $sql="
        SELECT student.StudentID, student.Prefix ,student.FirstName, student.LastName, student.Advisor, student.GPAX,
        student.ReturnYear, student.AbsenceYear, school.SchoolName, program.ProgramName, dean.DeanName, status.StatusName
        
        FROM student
        INNER JOIN school
        ON student.SchoolID = school.SchoolID
        INNER JOIN program
        ON student.ProgramID = program.ProgramID
        INNER JOIN dean
        ON student.DeanID = dean.DeanID
        INNER JOIN status
        ON student.StatusID = status.StatusID
        WHERE studentID = $sid";
        $result = mysqli_query($conn,$sql);
        ?>
        <h2>Student Data</h2>

        <?php
        //Show result
        $row = mysqli_fetch_assoc($result);
        foreach($row as $x => $x_value){ //Get the key and it's value
            if ($x_value == null){
                $x_value = "null";
            }
            $x_value = (string) $x_value;
            echo "<p>$x: " . "$x_value </p>";
        }
        ?>
    </body>
</html>