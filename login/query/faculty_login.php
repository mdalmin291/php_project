<?php
//constructing database connection
require '../database/connection.php';
session_start();
//login function
if (isset($_POST['login'])) {

    $pin = $_POST['member_pin'];
    $password = $_POST['member_password'];
    // checking query, the user is blocked or not.
    $sql = "SELECT `member_pin` FROM `faculty` WHERE member_pin='$pin' AND status = 'active'";
    //    if the user is not blocked
    $result = $conn->query($sql);
      // checking login details
    if ($result->num_rows > 0) {
        $sql = "SELECT `member_username` FROM `faculty` WHERE member_pin='$pin' AND member_password = '$password'";
        $result = $conn->query($sql);
     //     if login details are correct
        if ($result->num_rows > 0) {
        //   fectching data from data-table
            while ($row = $result->fetch_assoc()) {
                $username = $row["member_username"];
                $_SESSION['member_username'] = $username;
                // redirecting to faculty dashoard
                header('Location:../dashboard/faculty.php?member_username=' . $username);
            }
            //       warning alert ! if login details are incorrect
        } else {
            $warning = "SORRY ! INCORRECT LOGIN DETAILS!";
            echo "<script type='text/javascript'>alert('$warning');</script>";
            echo"<script>document.location='faculty.php';</script>";
        }
        //  warning alert ! if user is blocked or pin is incorrect
    } else {
        $warning = "SORRY ! You are blocked! Or Incorrect Pin Number !";
        echo "<script type='text/javascript'>alert('$warning');</script>";
        echo"<script>document.location='faculty.php';</script>";
    }
}
?>
