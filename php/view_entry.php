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
        $sql="SELECT * FROM Student WHERE StudentID = $sid";
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