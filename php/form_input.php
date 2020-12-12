<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/form.css"/>
    <script defer src="../js/form_script.js"></script>
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
    <title>Form REG-209</title>
</head>
<body>
    <div class="container-fluid">

        <form action="form_print.php" method="post">
            <!-- First Row upper left and right box-->
            <div class="row">
                <div class="col-sm-6 col-md-4">
                </div>
                <div class="col-sm-0 col-md-4">
                    <div class="mx-auto" style="width: 62px;">
                        <img src="../imgs/mfu_black_white_logo.png" width="60px">
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                </div>
            </div>

            <!-- Second Row semester academic year-->
            <div class="row">
                <div class="col d-flex justify-content-center" style="text-align: center; margin-top: 20px;">
                    <div>
                        <h5>DIVISION OF REGISTRAR, MAE FAH LUANG UNIVERSITY</h5>
                        <h4>Request Form for Re-entering Student</h4>
                        <h5>
                            Semester <input type="radio" id="first_sem" name="re_enter_rad" value="First" style="margin-left: 30px;"> <label for="first_sem">First</label>
                            <input type="radio" id="second_sem" name="re_enter_rad" value="Second"> <label for="second_sem">Second</label>
                            <input type="radio" id="summer_sem" name="re_enter_rad" value="Summer"> <label for="summer_sem">Summer</label>
                            <label for="academic_year" style="margin-left: 30px">Academic year</label> <input type="number" size="4" name="re_enter_acad_year">
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
                    <input type="radio" id="under_grad" name="lvl_grad_rad" value="Undergraduate"> <label for="under_grad">Undergraduate student</label>
                    <br>
                    <input type="radio" id="grad_grad" name="lvl_grad_rad" value="Graduate"> <label for="grad_grad">Graduate student</label>
                </div>
            </div>

            <!-- Forth Row Name and StudentID -->
            <div class="row">
                <div class="col-sm-12 col-md-7" style="text-align: right;">
                    <p><label for="name_txt">Name</label>
                    <select name="prefix" id="prefix">
                        <option value="MR.">Mr.</option>
                        <option value="MISS">Miss</option>
                        <option value="MRS.">Mrs.</option>
                    </select>
                     <input type="text" id="name_txt" name="name_txt" size="60" onfocusout="fillInForm()"></p>
                </div>
                <div class="col-sm-12 col-md-5">
                    <p style="display: inline; margin-right: 10px;">Student ID </p>
                    <table class="digit" style="display: inline;">
                        <tr>
                            <td><input class="digitNum" id="digit1" type="text" maxlength="1"></td>
                            <td><input class="digitNum" id="digit2" type="text" maxlength="1"></td> 
                            <td><input class="digitNum" id="digit3" type="text" maxlength="1"></td>
                            <td><input class="digitNum" id="digit4" type="text" maxlength="1"></td>
                            <td><input class="digitNum" id="digit5" type="text" maxlength="1"></td> 
                            <td><input class="digitNum" id="digit6" type="text" maxlength="1"></td>
                            <td><input class="digitNum" id="digit7" type="text" maxlength="1"></td>
                            <td><input class="digitNum" id="digit8" type="text" maxlength="1"></td>
                        </tr>
                    </table>
                    <input type="number" name="submitStudentId" id="submitStudentId" style="display: none;">
                </div>
            </div>

            <!-- Fifth Row Study school, program -->
            <div class="row">
                <div class="col d-flex justify-content-center">
                    <p><label for="school_of">Study in/graduated from School of</label> <select name="school" id="school" style="text-align: center;" onchange="loadPrograms()">
                    <?php printScool() ?>
                    </select>
                        <label for="program_txt">Program of</label> <select name="program" id="program" style="text-align: center;"></select>
                    </p>
                </div>
            </div>

            <!-- Sixth Row mobile phone -->
            <div class="row">
                <div class="col number_to_txt" style="margin-left: 18%;">
                    <p><label for="phone">Mobile Phone</label> <input type="text" id="phone" name="phone"></p>
                </div>
            </div>

            <!-- Seventh Row reason of absence -->
            <div class="row">
                <div class="col-sm-12 col-md-5" style="text-align: right;">
                    <p>I would like to re-entering due to my leave of absence in</p>
                </div>
                <div class="col-sm-12 col-md-1">
                    <input type="radio" id="rad_first_sem" name="absence_rad" value="First"> <label for="rad_first_sem">First</label>
                    <br>
                    <input type="radio" id="rad_second_sem" name="absence_rad" value="Second"> <label for="rad_second_sem">Second</label> 
                </div>
                <div class="col-sm-12 col-md-6">
                    <p>Semester <span>Academic Year <input type="number" name="absence_acad_year" size="4"></span></p>
                </div>
            </div>

            <!-- Eighth Row foot note -->
            <!-- <div class="row" style="margin-top: 60px;">
                <div class="col-sm-12 col-md-6" style="text-align: center;">
                    <p>For your consideration</p>
                </div>
                <div class="col-sm-12 col-md-6" style="margin-top: 40px;">
                    <p>Student's Signature <span><input type="text" name="stu_signature" size="25"></span></p>
                </div>
            </div> -->
            <center style="margin-top: 20px; margin-bottom: 20px;"><input type="submit" value="Submit" onclick="return sumbitStudentId()"></center>
        </form>
    </div>
</body>
</html>