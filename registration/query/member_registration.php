<?php
//database connection
require '../database/connection.php';
$success = '';
$warning = '';
//registration function
if (isset($_POST['submit'])) {
  //    form data variables
    $name = $_POST['member_name'];
    $type = $_POST['member_type'];
    $faculty = $_POST['faculty_name'];
    $pin = $_POST['member_pin'];
    $email = $_POST['member_email'];
    $username = $_POST['member_username'];
    $password = $_POST['member_password'];
    $cpassword = $_POST['confirm_password'];
    //image upload
    $directory = '../gallery/faculty/';
    $image = $directory . basename($_FILES['member_image']['name']);
    move_uploaded_file($_FILES['member_image']['tmp_name'], $image);

   //   checking query; data exists or not
    $check = "SELECT * FROM `faculty_auth_info` WHERE member_name = '$name' AND member_type='$type' AND faculty_name = '$faculty' AND member_pin = '$pin'  ";
    $result = $conn->query($check);
       //if authentication data exists ;
    if ($result->num_rows > 0) {
        $sql = "INSERT INTO `faculty`(`member_name`, `member_type`, `faculty_name`, `member_pin`, `member_email`, `member_username`, `member_password`, `member_image`) VALUES ('$name','$type','$faculty','$pin','$email','$username','$password','$image')";
        if ($conn->query($sql) === TRUE) {
            $success = "Registration Process Completed Successfully !";
            echo "<script type='text/javascript'>alert('$success');</script>";
            echo"<script>document.location='faculty.php';</script>";
        }
//        if data is duplicate;warning alert
         else {
            $message = "Data Already Exist";
            echo "<script type='text/javascript'>alert('$message');</script>";
            echo"<script>document.location='faculty.php';</script>";
        }
       }
//    if authentication data not exists ;warning alert
    else {
        $warning = "NO DATA MATCHED !";
        echo "<script type='text/javascript'>alert('$warning');</script>";
        echo"<script>document.location='faculty.php';</script>";
    }
}
?>
