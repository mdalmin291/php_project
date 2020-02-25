<?php
//constructing database connection
require '../database/connection.php';
session_start();
//login function
if (isset($_POST['login'])) {

    $email = $_POST['admin_email'];
    $password = $_POST['admin_password'];
// checking query, the user is blocked or not.
    $sql = "SELECT `admin_email` FROM `admin` WHERE admin_email='$email' AND status = 'active'";

    $result = $conn->query($sql);
    //    if the user is not blocked
    if ($result->num_rows > 0) {
      //        checking login details
        $sql = "SELECT `admin_pin` FROM `admin` WHERE admin_email='$email' AND admin_password = '$password'";
        $result = $conn->query($sql);
        //        if login details are correct
        if ($result->num_rows > 0) {
          //            fectching data from data-table
            while ($row = $result->fetch_assoc()) {
                $pin = $row["admin_pin"];
                $_SESSION['admin_pin'] = $pin;
                //                redirecting to student dashoard
                header('Location:../dashboard/admin.php?admin_pin=' . $pin);
            }
            //       warning alert ! if login details are incorrect
        } else {
            $warning = "SORRY ! INCORRECT LOGIN DETAILS!";
            echo "<script type='text/javascript'>alert('$warning');</script>";
            echo"<script>document.location='admin.php';</script>";
        }
        //  warning alert ! if user is blocked or pin is incorrect
    } else {
        $warning = "SORRY ! You are blocked! Or Incorrect Mail Address !";
        echo "<script type='text/javascript'>alert('$warning');</script>";
        echo"<script>document.location='admin.php';</script>";
    }
}
?>
