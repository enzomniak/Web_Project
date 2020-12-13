<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/form.css"/>
    <script defer src="../js/print_form_script.js"></script>
    <title>Form print</title>
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

        $schoolID=$_POST['school'];
        $programID=$_POST['program'];

        $phone=$_POST['phone'];

        $absence_rad=$_POST['absence_rad'];
        $absence_acad_year=$_POST['absence_acad_year'];

        //Default values
        $advisor = "";
        $gpax = 0.00;
        $status = 4;
        // if($_POST['gpax']){
        //     $gpax=$_POST['gpax'];
        // }
        // else{
        //     $gpax = 0.00;
        // }
        // if($_POST['status']){
        //     $status=$_POST['status'];
        // }
        // else{
        //     $status = 4;
        // }
    
        //Format the year
        $re_enter_format = "$re_enter_rad" . "-" . "$re_enter_acad_year";
        $absence_format = "$absence_rad" . "-" . "$absence_acad_year";
    
        //Format name
        $arr_name = explode(" ", $name_txt);
        $fname = $arr_name[0];
        $lname = $arr_name[1];
    
        // Insert data
        $sql="INSERT INTO student VALUES ($submitStudentId, '$prefix', '$fname', '$lname', $schoolID, $programID,
                                        '$advisor', $gpax, $status, '$re_enter_format', '$absence_format', '$phone', '$lvl_grad_rad')";
        $insertSql=mysqli_query($conn, $sql);
        if (!$insertSql){
            die('Error: ' . mysqli_error($conn));
            }
        else{
            //Get school and program name
            $sql="SELECT program.ProgramName, school.SchoolName FROM program
            INNER JOIN school
            ON program.SchoolID = school.SchoolID
            WHERE program.ProgramID = $programID";

            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($result);
            $schoolName = $row["SchoolName"];
            $programName = $row["ProgramName"];
        }
        mysqli_close($conn);
    ?>
</head>
<body>
    <div class="container-fluid">

            <!-- First Row upper left and right box-->
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="upper_left_box">
                        <input type="text" id="school_of" name="school_of" size="25" value="<?= $schoolName ?>" style="border-bottom-style: none;">
                        <h5>Mae Fah Luang University</h5>
                        <div style="text-align: left;">
                            <label for="box_no_left">No</label> <input type="text" id="box_no_left" name="box_no_left">
                            <label for="box_date_left">Date</label> <input type="text" id="box_date_left" name="box_date_left"><br>
                            <label for="box_time_left">Time</label> <input type="text" id="box_time_left" size="4" name="box_time_left"> 
                            <label for="box_record_left">Recorded By</label> <input type="text" id="box_record_left" name="box_record_left">    
                        </div>
                    </div>
                </div>
                <div class="col-sm-0 col-md-4" style="margin-top: 8%;">
                    <div class="mx-auto" style="width: 62px;">
                        <img src="../imgs/mfu_black_white_logo.png" width="60px">
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="upper_right_box">
                        <h5> The Division of Registrar
                        <br>Mae Fah Luang University</h5>
                        <div style="text-align: left;">
                            <label for="box_no_left">No</label> <input type="text" id="box_no_right" name="box_no_right">
                            <label for="box_date_left">Date</label> <input type="text" id="box_date_right" name="box_date_right"><br>
                            <label for="box_time_left">Time</label> <input type="text" id="box_time_right" size="4" name="box_time_right"> 
                            <label for="box_record_left">Recorded By</label> <input type="text" id="box_record_right" name="box_record_right">    
                        </div>
                    </div>
                </div>
            </div>

            <!-- Second Row semester academic year-->
            <div class="row">
                <div class="col d-flex justify-content-center" style="text-align: center; margin-top: 20px;">
                    <div>
                        <h5>DIVISION OF REGISTRAR, MAE FAH LUANG UNIVERSITY</h5>
                        <h4>Request Form for Re-entering Student</h4>
                        <h5>
                            Semester <input type="radio" id="first_sem" name="re_rad" value="First" style="margin-left: 30px;"> <label for="first_sem">First</label>
                            <input type="radio" id="second_sem" name="re_rad" value="Second"> <label for="second_sem">Second</label>
                            <input type="radio" id="summer_sem" name="re_rad" value="Summer"> <label for="summer_sem">Summer</label>
                            <label for="academic_year" style="margin-left: 30px">Academic year</label> <input type="number" size="4" name="re_acad_year" value="<?= $re_enter_acad_year ?>">
                        </h5>
                    </div>
                </div>
            </div>

            <!-- Third Row to the registrar -->
            <div class="row">
                <div class="col-md-8 mt-3">
                    <h5 style="margin-left: 200px;">(1) To the Registrar</h5>
                </div>
                <div class="col-md-1 mt-3">
                    <p>Student level</p>
                </div>
                <div class="col-md-3">
                    <input type="radio" id="under_grad" name="grad_rad" value="Undergraduate"> <label for="under_grad">Undergraduate student</label>
                    <br>
                    <input type="radio" id="grad_grad" name="grad_rad" value="Graduate"> <label for="grad_grad">Graduate student</label>
                </div>
            </div>

            <!-- Forth Row Name and StudentID -->
            <div class="row">
                <div class="col-sm-12 col-md-7" style="text-align: right;">
                    <p><label for="name_txt">Name <?= $prefix ?></label> <input type="text" id="name_txt" name="name_txt" size="60" value="<?= $name_txt ?>"></p>
                </div>
                <div class="col-sm-12 col-md-5">
                    <p style="display: inline; margin-right: 10px;">Student ID </p>
                    <input type="number" size="20" value="<?= $submitStudentId ?>">
                </div>
            </div>

            <!-- Fifth Row Study school, program -->
            <div class="row">
                <div class="col d-flex justify-content-center">
                    <p><label for="middle_school_of">Study in/graduated from School of</label> <input type="text" id="middle_school_of" name="middle_school_of" size="50" value="<?= $schoolName ?>">
                        <label for="program_txt">Program of</label> <input type="text" id="program_txt" name="program_txt" size="40" value="<?= $programName ?>">
                    </p>
                </div>
            </div>

            <!-- Sixth Row mobile phone -->
            <div class="row">
                <div class="col number_to_txt" style="margin-left: 18%;">
                    <p><label for="phone">Mobile Phone</label> <input type="number" id="phone" name="phone" value="<?= $phone ?>"></p>
                </div>
            </div>

            <!-- Seventh Row reason of absence -->
            <div class="row">
                <div class="col-sm-12 col-md-5" style="text-align: right;">
                    <p>I would like to re-entering due to my leave of absence in</p>
                </div>
                <div class="col-sm-12 col-md-1">
                    <input type="radio" id="rad_first_sem" name="ab_rad" value="First"> <label for="rad_first_sem">First</label>
                    <br>
                    <input type="radio" id="rad_second_sem" name="ab_rad" value="Second"> <label for="rad_second_sem">Second</label> 
                </div>
                <div class="col-sm-12 col-md-6">
                    <p>Semester <span>Academic Year <input type="number" name="ab_acad_year" size="4" value="<?= $absence_acad_year ?>"></span></p>
                </div>
            </div>

            <!-- Eighth Row foot note -->
            <div class="row" style="margin-top: 60px;">
                <div class="col-sm-12 col-md-6" style="text-align: center;">
                    <p>For your consideration</p>
                </div>
                <div class="col-sm-12 col-md-6" style="margin-top: 40px;">
                    <p>Student's Signature <span><input type="text" name="stu_signature" size="25"></span></p>
                </div>
            </div>
    </div>
</body>
</html>