<div class="sidebar-wrapper">
    <div class="logo">
        <a href="" class="simple-text">
                Resource Management System
            </a>
    </div>

    <ul class="nav">
        <li class="<?php echo $active1; ?>">
            <a href="student.php?student_username=<?php echo $row['student_username'] ?>">
                <i class="pe-7s-graph"></i>
                <p>Dashboard</p>
            </a>
        </li>
        <li class="<?php echo $active2; ?>">
            <a href="student_updateInfo.php?student_username=<?php echo $row['student_username'] ?>">
                <i class="pe-7s-user"></i>
                <p>User Profile</p>
            </a>
        </li>
        <li class="<?php echo $active3; ?>">
            <a href="student_post.php?student_username=<?php echo $row['student_username'] ?>">
                <i class="pe-7s-note2"></i>
                <p>Create POST</p>
            </a>
        </li>
    </ul>
</div>