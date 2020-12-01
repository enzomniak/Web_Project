<!doctype html>
<html lang="en">
 <head>
 <!-- Required meta tags -->
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrinkto-fit=no">
 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dis
t/css/bootstrap.min.css" integrity="sha384-
TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="an
onymous">
 <title> Read Data from Database </title>
 </head>
     <body>
        <?php
        // Include database connection file
        require_once "dbconnect.php";
        // Database query.
        $sql = "SELECT StudentID, Prefix, FirstName, LastName, ProgramID FROM Student";
        $result = mysqli_query($conn,$sql);
        ?>
        <div class="container">
            <div class="page-header">
                <h2>Student Form Entries</h2>
            </div>

            <div class= "float-right">
                <a href="input_insert_stu.php" class="btn btn-success" role="button">Add New Entry</a>
            </div>

            <br>
            <table class="table table-striped">
                <tr>
                    <th>Student ID</th>
                    <th>Prefix</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>ProgramID</th>
                    <th>Action</th>
                </tr>
                <?php
                if (mysqli_num_rows($result) > 0) {
                    // output data of each row
                    while($row = mysqli_fetch_assoc($result)) {
                    $sid = $row["StudentID"];
                    $prefix = $row["Prefix"];
                    $first_name = $row["FirstName"];
                    $last_name = $row["LastName"];
                    $program_id = $row["ProgramID"];
                ?>
                <tr>
                    <td><?= $sid ?></td>
                    <td><?= $prefix ?></td>
                    <td><?= $first_name ?></td>
                    <td><?= $last_name ?></td>
                    <td><?= $program_id ?></td>
                    <td>
                    <a href="view_entry.php?sid=<?= $sid ?>" class="btn btn-info" role="button">View</a>
                    <a href="input_update_emp.php?eid=<?= $emp_id ?>" class="btn btn-info" role="button">Update</a>
                    <a href="delete_stu.php?sid=<?= $sid ?>" class="btn btn-info" role="button" onClick="return confirm
                    ('Delete this employee?')">Delete</a>
                    </td>
                </tr>
                <?php
                }
                } else {
                echo "0 results";
                }
                mysqli_close($conn);
                ?>
            </table>
        </div>
        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-
        DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="an
        onymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundl
        e.min.js" integrity="sha384-
        ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="an
        onymous"></script>
    </body>
</html>