<%-- 
    Document   : change-password-admin
    Created on : Mar 26, 2018, 12:50:08 PM
    Author     : razza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="author" content="">
        <meta name="csrf-token" content="k1vOijQWxXCe4R6uLmv4svcpATNrGY6UCtGLTyQ0">
        <link rel="icon" href="http://cse.sust.edu/reunion/favicon.ico?v=2">

        <title>Change Password .:: SUST CSE Silver Jubilee Celebration &amp; Grand Reunion ::.</title>

        <!-- Bootstrap 3.3.5 -->
        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/bootstrap/css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link media="all" type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

        <!-- Ionicons -->
        <link media="all" type="text/css" rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

        <!-- jvectormap -->
        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/plugins/jvectormap/jquery-jvectormap-1.2.2.css">

        <!-- Theme style -->
        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/dist/css/AdminLTE.min.css">

        <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/dist/css/skins/_all-skins.min.css">

        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/plugins/datatables/dataTables.bootstrap.css">



        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/css/xedit.css">


        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/css/custom.css">


        <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/google/code-prettify/master/loader/prettify.css"><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}
        </style>
    </head>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">

                <!-- Logo -->
                <a href="http://cse.sust.edu/reunion" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>SU</b>ST</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>SUST CSE Reunion</b></span>
                </a>

                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">

                        <ul class="nav navbar-nav">



                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <!-- <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> -->
                                    <img src="http://cse.sust.edu/reunion/photos/1519374066997362.jpg" alt="user" class="user-image">
                                    <span class="hidden-xs ">Abdur Razzak Rana</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="http://cse.sust.edu/reunion/photos/1519374066997362.jpg" class="img-circle" alt="user">
                                        <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->

                                        <p>
                                            Abdur Razzak Rana
                                            <!-- <small>Member since Nov. 2012</small> -->
                                        </p>
                                        <a href="http://cse.sust.edu/reunion/profile" class="btn btn-default">Profile</a>
                                    </li>
                                    <!-- Menu Body -->
                                    <!-- <li class="user-body">
                                      <div class="col-xs-4 text-center">
                                        <a href="" class="btn btn-default btn-flat">Change Password</a>
                                      </div>
                                      <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                      </div>
                                      <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                      </div>
                                    </li> -->
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="http://cse.sust.edu/reunion/change-password" class="btn btn-default btn-flat">Change Password</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="http://cse.sust.edu/reunion/logout" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>                  <!-- Control Sidebar Toggle Button -->
                            <!-- <li>
                              <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                            </li> -->

                        </ul>
                    </div>

                </nav>
            </header><aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar" style="height: auto;">
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="">
                            <a href="http://cse.sust.edu/reunion/dashboard">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>

                        <li class="">
                            <a href="http://cse.sust.edu/reunion/dashboard/online-payment">
                                <i class="fa fa-dollar "></i> <span>Payment</span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="">
                                    <a href="http://cse.sust.edu/reunion/dashboard/online-payment"><i class="fa fa-thumbs-up"></i>Online Payment</a>
                                </li>
                                <li class="">
                                    <a href="http://cse.sust.edu/reunion/dashboard/offline-payment"><i class="fa fa-thumbs-up"></i>Offline Payment</a>
                                </li>
                            </ul>
                        </li>
                        <li class="">
                            <a href="http://cse.sust.edu/reunion/profile">
                                <i class="fa fa-spinner"></i> <span>Profile</span>
                            </a>
                        </li>
                        <li>
                            <a href="http://cse.sust.edu/reunion/registrant">
                                <i class="fa fa-circle-o text-yellow"></i> <span>See All Complete Registration</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="http://cse.sust.edu/reunion/dashboard/contact">
                                <i class="fa fa-circle-o text-green"></i> <span>Contact</span>
                            </a>
                        </li>
                        <hr>

                        <li class="">
                            <a href="http://cse.sust.edu/reunion/dashboard/nomination">
                                <i class="fa fa-circle-o text-red"></i> <span>Submit Alumni Nomination</span>
                            </a>
                        </li>



                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside> 
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 698px;">
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert1 alert-danger1  text-center fade in">
                            Your payment is pending.
                        </div>

                        <style>
                            .alert1 {
                                padding: 15px;
                                margin-bottom: 20px;
                                border: 1px solid transparent;
                            }
                            .alert-danger1 {
                                border : 2px solid RED;
                                font-size: 20px;
                                border-radius: 10px;
                            }
                            .alert-warn1 {
                                border : 2px solid YELLOW;
                                font-size: 20px;
                                border-radius: 10px;
                            }

                            .alert-success1 {
                                border : 1px solid GREEN;
                                border-radius: 5px;
                            }
                        </style>








                        <section class="panel">
                            <header class="panel-heading">
                                Change Password
                            </header>
                            <div class="panel-body">
                                <form method="POST" action="http://cse.sust.edu/reunion/change-password" accept-charset="UTF-8" class="form-horizontal"><input name="_token" type="hidden" value="k1vOijQWxXCe4R6uLmv4svcpATNrGY6UCtGLTyQ0">

                                    <div class="form-group">
                                        <label for="password" class="col-md-2 control-label">New Password*</label>
                                        <div class="col-md-4">
                                            <input class="form-control" placeholder="New Password" name="password" type="password" value="" id="password">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password_confirmation" class="col-md-2 control-label">Confirm Password*</label>
                                        <div class="col-md-4">
                                            <input class="form-control" placeholder="Confirm Password" name="password_confirmation" type="password" value="" id="password_confirmation">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <input class="btn btn-primary" type="submit" value="Reset Password">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </section>
                    </div>
                </div>
            </div><!-- /.content-wrapper -->

            <!-- Footer Start -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                </div>
                Powered By: <strong>  CSE Society, SUST  </strong> <br>
            </footer>




            <!-- jQuery 2.1.4 -->
            <script src="http://cse.sust.edu/reunion/plugins/jQuery/jQuery-2.1.4.min.js"></script>

            <!-- Bootstrap 3.3.5 -->
            <script src="http://cse.sust.edu/reunion/bootstrap/js/bootstrap.min.js"></script>

            <!-- FastClick -->
            <script src="http://cse.sust.edu/reunion/plugins/fastclick/fastclick.min.js"></script>

            <!-- AdminLTE App -->
            <script src="http://cse.sust.edu/reunion/dist/js/app.min.js"></script>

            <!-- Sparkline -->
            <script src="http://cse.sust.edu/reunion/plugins/sparkline/jquery.sparkline.min.js"></script>

            <!-- jvectormap -->
            <script src="http://cse.sust.edu/reunion/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>

            <script src="http://cse.sust.edu/reunion/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

            <!-- SlimScroll 1.3.0 -->
            <script src="http://cse.sust.edu/reunion/plugins/slimScroll/jquery.slimscroll.min.js"></script>

            <!-- ChartJS 1.0.1 -->
            <script src="http://cse.sust.edu/reunion/plugins/chartjs/Chart.min.js"></script>

            <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
            <script src="http://cse.sust.edu/reunion/dist/js/pages/dashboard2.js"></script>

            <script src="http://cse.sust.edu/reunion/plugins/datatables/jquery.dataTables.js"></script>

            <script src="http://cse.sust.edu/reunion/plugins/datatables/dataTables.bootstrap.js"></script>


            <script src="http://cse.sust.edu/reunion/dist/js/demo.js"></script>

            <script src="http://cse.sust.edu/reunion/js/xedit.js"></script>

            <script src="http://cse.sust.edu/reunion/js/prettify.js"></script>

            <script src="http://cse.sust.edu/reunion/js/my.js?v=12"></script>




        </div><!-- ./wrapper -->

        <style>
            .table {
                max-width: 95%;
            }
        </style>

        <div class="jvectormap-label"></div>
    </body>
</html>
