<?php
//access_through_url disabled function
if (!isset($_SERVER['HTTP_REFERER'])) {
    // redirect them to your desired location
    header('location:../login/admin.php');
    exit;
}
//database connnectiion
require '../database/connection.php';

$success = "";
//receiving admin pin with get method
$pin = $_GET['admin_pin'];
//fetching data
$sql = "SELECT *FROM admin WHERE admin_pin='$pin'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
    while ($row = $result->fetch_assoc()) {
        ?>
        <!doctype html>
        <html lang="en">
            <head>
                <meta charset="utf-8" />
                <link rel="icon" type="image/png" href="assets/img/school.jpg">
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

                <title>Human Resource Management System</title>

                <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
                <meta name="viewport" content="width=device-width" />

                <?php include './parts/css.php'; ?>

            </head>
            <?php $active2 = 'active'; ?>
            <body>

                <div class="wrapper">

                    <!--mastering sidebar-->
                    <?php include './parts/admin/sidebar.php'; ?>

                    <div class="main-panel">
                        <nav class="navbar navbar-default navbar-fixed">
                            <div class="container-fluid">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="#">User</a>
                                </div>
                                <div class="collapse navbar-collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li>
                                            <a href="admin_logout.php">
                                                <p>Log out</p>
                                            </a>
                                        </li>
                                        <li class="separator hidden-lg hidden-md"></li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <div class="content">
                            <div class="container-fluid">
                                <div class="row">
                                    <!--Mastering Content-->
                                    <?php include './parts/admin/content.php'; ?>

                                    <!--Mastering Profilet-->

                                    <?php include './parts/admin/profile.php'; ?>


                                </div>
                            </div>
                        </div>

                        <footer class="footer">
                            <div class="container-fluid">
                                <p class="copyright pull-right">
                                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">made by @md.al-amin</a>
                                </p>
                            </div>
                        </footer>

                    </div>
                </div>


            </body>
            <!--masterin scripts-->
            <?php include './parts/scripts.php'; ?>


        </html>
        <?php
    }
} else {
    echo "0 results";
}
?>

<!--mastering profile update functions-->
<?php
include './query/admin/updateInfoQuery.php';
include './query/admin/changeImagequery.php';
$conn->close();
?>
