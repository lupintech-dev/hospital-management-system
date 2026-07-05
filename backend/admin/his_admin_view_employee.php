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

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Topbar Start -->
                <?php include('assets/inc/nav.php');?>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
                <?php include("assets/inc/sidebar.php");?>
            <!-- Left Sidebar End -->

            <div class="content-page">
                <div class="content">
                    <div class="container-fluid">
                        
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboard</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Employee</a></li>
                                            <li class="breadcrumb-item active">View Employee</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Employee Details</h4>
                                </div>
                            </div>
                        </div>     

                        <div class="row">
                            <div class="col-12">
                                <div class="card-box">
                                    <div class="mb-2">
                                        <div class="row">
                                            <div class="col-12 text-sm-center form-inline">
                                                <div class="form-group">
                                                    <input id="demo-foo-search" type="text" placeholder="Search" class="form-control form-control-sm" autocomplete="on">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="table-responsive">
                                        <table id="demo-foo-filtering" class="table table-bordered toggle-circle mb-0" data-page-size="7">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Picture</th>
                                                <th data-toggle="true">Name</th>
                                                <th data-hide="phone">Number</th>
                                                <th data-hide="phone">Email</th>
                                                <th data-hide="phone">Action</th>
                                            </tr>
                                            </thead>
                                            <?php
                                                $ret="SELECT * FROM his_docs ORDER BY RAND()"; 
                                                $stmt= $mysqli->prepare($ret);
                                                $stmt->execute();
                                                $res=$stmt->get_result();
                                                $cnt=1;
                                                while($row=$res->fetch_object())
                                                {
                                            ?>
                                                <tbody>
                                                <tr>
                                                    <td><?php echo $cnt;?></td>
                                                    <td>
                                                        <img src="<?php echo !empty($row->doc_dpic) ? '../doc/assets/images/users/'.$row->doc_dpic : '../doc/assets/images/users/defaultimg.jpg'; ?>" 
                                                             class="rounded-circle" style="width:40px;height:40px;object-fit:cover;" alt="pic">
                                                    </td>
                                                    <td><?php echo $row->doc_fname;?> <?php echo $row->doc_lname;?></td>
                                                    <td><?php echo $row->doc_number;?></td>
                                                    <td><?php echo $row->doc_email;?></td>                                                    
                                                    <td><a href="his_admin_view_single_employee.php?doc_id=<?php echo $row->doc_id;?>&&doc_number=<?php echo $row->doc_number;?>" class="badge badge-success"><i class="mdi mdi-eye"></i> View</a></td>
                                                </tr>
                                                </tbody>
                                            <?php $cnt = $cnt + 1; }?>
                                            <tfoot>
                                            <tr class="active">
                                                <td colspan="8">
                                                    <div class="text-right">
                                                        <ul class="pagination pagination-rounded justify-content-end footable-pagination m-t-10 mb-0"></ul>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <?php include('assets/inc/footer.php');?>
            </div>
        </div>

        <div class="rightbar-overlay"></div>
        <script src="assets/js/vendor.min.js"></script>
        <script src="assets/libs/footable/footable.all.min.js"></script>
        <script src="assets/js/pages/foo-tables.init.js"></script>
        <script src="assets/js/app.min.js"></script>
        
    </body>
</html>