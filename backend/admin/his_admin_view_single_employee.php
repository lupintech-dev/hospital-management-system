<?php
  session_start();
  include('assets/inc/config.php');
  include('assets/inc/checklogin.php');
  check_login();
  $aid=$_SESSION['ad_id'];
?>

<!DOCTYPE html>
<html lang="en">

<?php include('assets/inc/head.php');?>

<body>

    <div id="wrapper">

        <?php include("assets/inc/nav.php");?>
        <?php include("assets/inc/sidebar.php");?>

        <?php
            $doc_id=$_GET['doc_id'];
            $ret="SELECT * FROM his_docs WHERE doc_id=?";
            $stmt= $mysqli->prepare($ret);
            $stmt->bind_param('i',$doc_id);
            $stmt->execute();
            $res=$stmt->get_result();
            $doc_number=$_GET['doc_number'];
            while($row=$res->fetch_object())
            {
        ?>
        <div class="content-page">
            <div class="content">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Employees</a></li>
                                        <li class="breadcrumb-item active">View Employee</li>
                                    </ol>
                                </div>
                                <h4 class="page-title"><?php echo $row->doc_fname;?> <?php echo $row->doc_lname;?>'s Profile</h4>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6 col-xl-6">
                            <div class="card-box text-center">
                                <img src="<?php echo !empty($row->doc_dpic) ? '../doc/assets/images/users/'.$row->doc_dpic : '../doc/assets/images/users/defaultimg.jpg'; ?>" 
                                     class="rounded-circle avatar-lg img-thumbnail" alt="profile-image">

                                <div class="text-centre mt-3">
                                    <p class="text-muted mb-2 font-13"><strong>Full Name :</strong> <span class="ml-2"><?php echo $row->doc_fname;?> <?php echo $row->doc_lname;?></span></p>
                                    <p class="text-muted mb-2 font-13"><strong>Department :</strong> <span class="ml-2"><?php echo $row->doc_dept;?></span></p>
                                    <p class="text-muted mb-2 font-13"><strong>Employee Number :</strong> <span class="ml-2"><?php echo $row->doc_number;?></span></p>
                                    <p class="text-muted mb-2 font-13"><strong>Email :</strong> <span class="ml-2"><?php echo $row->doc_email;?></span></p>
                                </div>

                            </div>
                        </div>

                        <div class="col-lg-6 col-xl-6">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Body Temperature</th>
                                            <th>Heart Rate/Pulse</th>
                                            <th>Respiratory Rate</th>
                                            <th>Blood Pressure</th>
                                            <th>Date Recorded</th>
                                        </tr>
                                    </thead>
                                    <?php
                                        $vit_pat_number = $_GET['doc_number'];
                                        $ret2 = "SELECT * FROM his_vitals WHERE vit_pat_number = ?";
                                        $stmt2 = $mysqli->prepare($ret2);
                                        $stmt2->bind_param('s', $vit_pat_number);
                                        $stmt2->execute();
                                        $res2 = $stmt2->get_result();
                                        while($vrow = $res2->fetch_object()) {
                                            $mysqlDateTime = $vrow->vit_daterec;
                                    ?>
                                        <tbody>
                                            <tr>
                                                <td><?php echo $vrow->vit_bodytemp;?>°C</td>
                                                <td><?php echo $vrow->vit_heartpulse;?>BPM</td>
                                                <td><?php echo $vrow->vit_resprate;?>bpm</td>
                                                <td><?php echo $vrow->vit_bloodpress;?>mmHg</td>
                                                <td><?php echo date("Y-m-d", strtotime($mysqlDateTime));?></td>
                                            </tr>
                                        </tbody>
                                    <?php }?>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <?php include('assets/inc/footer.php');?>
        </div>
        <?php }?>

    </div>

    <div class="rightbar-overlay"></div>
    <script src="assets/js/vendor.min.js"></script>
    <script src="assets/js/app.min.js"></script>

</body>
</html>