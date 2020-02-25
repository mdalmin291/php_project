<?php
//access_through_url disabled function
if (!isset($_SERVER['HTTP_REFERER'])) {
    // redirect them to your desired location
    header('location:../login/faculty.php');
    exit;
}
//database connnectiion
require '../database/connection.php';

$success = "";

//receiving member_username with get method
$username = $_GET['member_username'];
//fetching data
$sql = "SELECT *FROM faculty WHERE member_username='$username'";
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

                <title>Resource Management System</title>

                <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
                <meta name="viewport" content="width=device-width" />
                  <!-- mastering css -->
                <?php include './parts/css.php'; ?>

            </head>
            <?php $active2 = 'active'; ?>
            <body>

                <div class="wrapper">

                    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
                         <!--mastering sidebar-->
                        <?php include './parts/faculty/sidebar.php'; ?>
                    </div>

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
                                            <a href="faculty_logout.php">
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
                                    <?php include './parts/faculty/content.php'; ?>

                                    <!--Mastering Profilet-->

                                    <?php include './parts/faculty/profile.php'; ?>


                                </div>
                            </div>
                        </div>
                          <!--footer-->
                        <footer class="footer">
                            <div class="container-fluid">
                                <p class="copyright pull-right">
                                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">Created by @md.al-amin</a>
                                </p>
                            </div>
                        </footer>
                        <!---end of footer-->
                    </div>
                </div>


            </body>
               <!--mastering scripts-->
            <?php include './parts/scripts.php'; ?>

            <script>
                history.pushState(null, null, null);
                window.addEventListener('popstate', function () {
                    history.pushState(null, null, null);
                });
            </script>
        </html>
        <?php
    }
} else {
    echo "0 results";
}
?>
<!--mastering profile update functions-->
<?php
include './query/faculty/updateInfoQuery.php';
include './query/faculty/changeImagequery.php';
$conn->close();
?>
