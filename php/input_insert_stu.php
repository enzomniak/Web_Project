<!DOCTYPE html>
<html>
    <head>
        <title> Insert Entry </title>
        <style>
            label{width: 120px; display: inline-block;}
            input, select {width: 300px; height: 25px; margin: 10px;}
            #show_dean{padding-left: 7%;}
        </style>
        <script defer src="../js/insert_form_ajax.js"></script>
        <?php
            require_once "dbconnect.php";
            //Print all school
            function printScool(){
                global $conn;
                $sql="SELECT SchoolID, SchoolName FROM School";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
                    echo "<option value=\"".$row['SchoolID']."\">".$row['SchoolName']."</option><br>";
                }
            }
        ?>
    </head>
        <body>
        <h2> Add New Entry</h2>
        <form action="insert_stu.php" method="post" onsubmit="return confirmSubmit()">
            <div>
                <label for="sid">Student ID:</label> <input type="number" name="sid" id="sid"> <br>
                <label for="prefix">Prefix:</label> <input type="text" name="prefix" id="prefix"> <br>
                <label for="fname">First Name:</label> <input type="text" name="fname" id="fname"> <br>
                <label for="lname">Last Name:</label> <input type="text" name="lname" id="lname"> <br>
                <label for="school">School:</label> <select name="school" id="school" style="text-align: center;" onchange="loadPrograms()">
                <?php printScool() ?>
                </select><br>
                <label for="program">Program:</label> <select name="program" id="program" style="text-align: center;">
                </select>
                <br>
                <p>Dean: <span id="show_dean"></span></p>
                <input type="text" id="dean" name="dean" style="display: none;">
                <label for="advisor">Advisor:</label> <input type="text" name="advisor" id="advisor"> <br>
                <label for="gpax">GPAX:</label> <input type="number" min="0" max="4" step="0.01" name="gpax" id="gpax"> <br>
                <label for="status">Status:</label> <select name="status" id="status" style="text-align: center;">
                    <option value="1">Normal</option>
                    <option value="2">Probation1</option>
                    <option value="3">Probation2</option>
                </select>
            </div>
            <div>
                <input type="Submit" value = "Insert Data" style="width: 200px;">
                <input type="Reset" value = "Reset Data" style="width: 200px;">
            </div>
        </form>
    </body>
</html>