<!DOCTYPE html>
<html>
    <head>
        <title> Update Form Entry </title>
        <style>
            input,select {width: 250px; height: 25px; display: inline-block; margin-bottom: 14px;}
            label{width: 120px; display: inline-block;}
            #show_dean{
                padding-left: 6%;
            }
            input[type=Submit]{width: 100px;}
        </style>
        <script defer src="../js/insert_form_ajax.js"></script>
    </head>
    <body>
        <?php
        //Print Schools
        function printScool(){
            global $conn;
            $sql="SELECT SchoolID, SchoolName FROM School";
            $result = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($result)){
                echo "<option value=\"".$row['SchoolID']."\">".$row['SchoolName']."</option><br>";
            }
        }
        // Include database connection file
        require_once "dbconnect.php";
        $sid = $_GET['sid'];
        $mainSql="SELECT Prefix, FirstName, LastName, Advisor, GPAX, StatusID, ReturnYear, AbsenceYear FROM student WHERE studentID = $sid";
        $result = mysqli_query($conn,$mainSql);
        error_reporting(0);
        ?>
        <h2>Update Entry Data</h2>
        <form action="update_stu.php" method="post">
            <?php
            while($row = mysqli_fetch_assoc($result)) {
            $prefix = $row["Prefix"];
            $fname = $row["FirstName"];
            $lname = $row["LastName"];
            $advisor = $row["Advisor"];
            $gpax = $row["GPAX"];
            $status = $row["StatusID"];
            $re_year = $row["ReturnYear"];
            $abs_year = $row["AbsenceYear"];
            }
            ?>

            <!-- DISPLAY -->
            Student ID: <?= $sid ?>
            <input type="hidden" name="sid" value="<?= $sid ?>"><br><br>

            <label for="prefix">Prefix:</label> <input type="text" name="prefix" id="prefix" value="<?= $prefix ?>"> <br>
            <label for="fname">First Name:</label> <input type="text" name="fname" id="fname" value="<?= $fname ?>"> <br>
            <label for="lname">Last Name:</label> <input type="text" name="lname" id="lname" value="<?= $lname ?>"> <br>
            <label for="school">School:</label> <select name="school" id="school" style="text-align: center;" onchange="loadPrograms()">
            <?php printScool() ?>
            </select><br>
            <label for="program">Program:</label> <select name="program" id="program" style="text-align: center;" >
            </select>
            <br>
            <p>Dean: <span id="show_dean"></span></p>
            <input type="text" id="dean" name="dean" style="display: none;">
            <label for="advisor">Advisor:</label> <input type="text" name="advisor" id="advisor" value="<?= $advisor ?>"> <br>
            <label for="gpax">GPAX:</label> <input type="number" min="0" max="4" step="0.01" name="gpax" id="gpax" value="<?= $gpax ?>"> <br>
            <label for="status">Status:</label> <select name="status" id="status" style="text-align: center;">
                <option value="1" id="stat1">Normal</option>
                <option value="2" id="stat2">Probation1</option>
                <option value="3" id="stat3">Probation2</option>
            </select><br>
            <label for="re_year">Return-Date:</label> <input type="text" id="re_year" name="re_year" value="<?= $re_year ?>">(Semester-Year)<br>
            <label for="abs_year">Absence-Date:</label> <input type="text" id="abs_year" name="abs_year" value="<?= $abs_year ?>">(Semester-Year)
            <br>
            <input type="Submit" value="Update Data" onclick="return confirm('Are you sure?')">
        </form>
    </body>
</html>