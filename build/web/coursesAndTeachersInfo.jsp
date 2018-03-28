<%-- 
    Document   : coursesAndTeachersInfo
    Created on : Mar 26, 2018, 12:14:14 PM
    Author     : razza
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

        <title>Dashboard .:: Super User ::.</title>

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
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">




        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/css/xedit.css">


        <link media="all" type="text/css" rel="stylesheet" href="http://cse.sust.edu/reunion/css/custom.css">


        <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/google/code-prettify/master/loader/prettify.css"><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>

    </head>
    <body class="skin-blue sidebar-mini">

        <div class="wrapper">

            <header class="main-header">

                <!-- Logo -->
                <a class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>SU</b>ST</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Super Admin</b></span>
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
                                    <img src="images/003.jpg" alt="user" class="user-image"> 

                                    <!--Handle image automatically--> 
                                    <span class="hidden-xs ">Dr Mohammad Reza Selim</span>
                                    <!--Handle name automatically-->
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="images/003.jpg" class="img-circle" alt="user">
                                        <!--Handle image automatically-->
                                        <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->

                                        <p>
                                            Dr Mohammad Reza Selim
                                            <!--Handle name automatically-->
                                            <!-- <small>Member since Nov. 2012</small> -->
                                        </p>
                                        <a href="http://cse.sust.edu/reunion/profile" class="btn btn-default">Profile</a>
                                        <!--Handle Later-->
                                    </li>

                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="change-password-admin.jsp" class="btn btn-default btn-flat">Change Password</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="index.jsp" class="btn btn-default btn-flat">Sign out</a>
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
                        <li class="active">
                            <a href="coursesAndTeachersInfo.jsp">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>

                        <!--                        <li class="">
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
                                                </li>-->
                        <li class="">
                            <a href="">
                                <!--Handle Profile here-->
                                <i class="fa fa-spinner"></i> <span>Profile</span>
                            </a>
                        </li>
                        <!--                        <li>
                                                    <a href="http://cse.sust.edu/reunion/registrant">
                                                        <i class="fa fa-circle-o text-yellow"></i> <span>See All Complete Registration</span>
                                                    </a>
                                                </li>-->
                        <li class="">
                            <a href="">
                                <!--Handle Email Page-->
                                <i class="fa fa-circle-o text-green"></i> <span>Email</span>
                            </a>
                        </li>
                        <hr>

                        <!--                        <li class="">
                                                    <a href="http://cse.sust.edu/reunion/dashboard/nomination">
                                                        <i class="fa fa-circle-o text-red"></i> <span>Submit Alumni Nomination</span>
                                                    </a>
                                                </li>-->



                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside> 
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 698px;">
                <!--                <div class="alert1 alert-danger1  text-center fade in">
                                    Your payment is pending.
                                </div>-->

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









                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Dashboard
                        <!-- <small>Version 2.0</small> -->
                    </h1>
                    <!--                    <ol class="breadcrumb">
                                            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                                            <li class="active">Dashboard</li>
                                        </ol>-->
                </section>

                <!--                <h3 class="content-header">Dr Mohammad Reza Selim
                                    <a href="http://cse.sust.edu/reunion/profile" class="btn btn-md btn-success pull-right margin"> Update Profile</a>
                                    <a href="http://cse.sust.edu/reunion/dashboard/online-payment" class="btn btn-md btn-warning pull-right margin"> Make Online Payment</a>
                                    <a href="http://cse.sust.edu/reunion/dashboard/offline-payment" class="btn btn-md btn-info pull-right margin"> Make Offline Payment</a>
                                </h3>-->
                <h3 class="content-header"> Exam Committee</h3>

                <%String temp = "";%>
                <form action = "ShowComity" method = "GET" style=" margin-left: 60px">

                    <input type = "submit" name="semester" value = "1-1" style="display: inline-block;border-radius: 4px;background-color: #707070;border: none;color: #FFFFFF;text-align: center;font-size: 15px;padding: 20px;width: 130px;height: 60px;transition: all 0.5s;cursor: pointer;margin: 5px;">


                    <input type = "submit" name="semester" value = "1-2" style="display: inline-block;border-radius: 4px;background-color: #707070;border: none;color: #FFFFFF;text-align: center;font-size: 15px;padding: 20px;width: 130px;height: 60px;transition: all 0.5s;cursor: pointer;margin: 5px;">


                    <input type = "submit" name="semester" value = "2-1" style="display: inline-block;border-radius: 4px;background-color: #707070;border: none;color: #FFFFFF;text-align: center;font-size: 15px;padding: 20px;width: 130px;height: 60px;transition: all 0.5s;cursor: pointer;margin: 5px;">

                    <input type = "submit" name="semester" value = "2-2" style="display: inline-block;border-radius: 4px;background-color: #707070;border: none;color: #FFFFFF;text-align: center;font-size: 15px;padding: 20px;width: 130px;height: 60px;transition: all 0.5s;cursor: pointer;margin: 5px;">

                    <input type = "submit" name="semester" value = "3-1" style="display: inline-block;border-radius: 4px;background-color: #707070;border: none;color: #FFFFFF;text-align: center;font-size: 15px;padding: 20px;width: 130px;height: 60px;transition: all 0.5s;cursor: pointer;margin: 5px;">

                    <input type = "submit" name="semester" value = "3-2" style="display: inline-block;border-radius: 4px;background-color: #707070;border: none;color: #FFFFFF;text-align: center;font-size: 15px;padding: 20px;width: 130px;height: 60px;transition: all 0.5s;cursor: pointer;margin: 5px;">

                    <input type = "submit" name="semester" value = "4-1" style="display: inline-block;border-radius: 4px;background-color: #707070;border: none;color: #FFFFFF;text-align: center;font-size: 15px;padding: 20px;width: 130px;height: 60px;transition: all 0.5s;cursor: pointer;margin: 5px;">

                    <input type = "submit" name="semester" value = "4-2" style="display: inline-block;border-radius: 4px;background-color: #707070;border: none;color: #FFFFFF;text-align: center;font-size: 15px;padding: 20px;width: 130px;height: 60px;transition: all 0.5s;cursor: pointer;margin: 5px;">
                </form>

                
                
                
                
                



                <!--<button class="button" style="vertical-align:middle"><span>1 - 1 </span></button>-->

                <h3 class="content-header"> Course List</h3>


                <section class="content">
                    <div class="row" style="margin-left: 50px; margin-right: 50px;">
                        <table class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer" id="sample_1" role="grid" aria-describedby="sample_1_info">
                            <thead>
                                <tr role="row">
                                    <th>
                                        Semester
                                    </th>
                                    <th>
                                        Code
                                    </th>
                                    <th>Title</th>
                                    <th>
                                        Credit
                                    </th>
                                    <th>
                                        Delete
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Connection c = null;
                                    Statement stmt = null;
                                    ResultSet rs = null;
                                    try {
                                        Class.forName("org.postgresql.Driver");
                                        c = DriverManager
                                                .getConnection("jdbc:postgresql://localhost:5432/semestermaintainance",
                                                        "postgres", "123456");

                                        String sql = "SELECT semester,coursecode,coursetitle,coursecredit FROM syllabus ORDER BY semester ASC";
                                        stmt = c.createStatement();
                                        rs = stmt.executeQuery(sql);

                                        while (rs.next()) {
                                            String del = rs.getString(2);
                                %>
                                <tr>
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getFloat(4)%></td>


                                    <td>
                                        <button onclick="popupFunction()">Delete</button>
                                        <!--<p id="demo"></p>-->

                                        <script>
                                            function popupFunction() {
                                                var txt;
                                                if (confirm("Are you sure about deleting?")) {
                                                    txt = "You pressed OK!";
                                                    var xhr = new XMLHttpRequest();
                                                    var key = <%=del%>;
                                                    xhr.open("GET", "DeleteSubject?key=" + encodeURIComponent(key));
                                                    xhr.send(null);
                                                } else {
                                                    txt = "You pressed Cancel!";
                                                }
                                                document.getElementById("demo").innerHTML = txt;
                                            }
                                        </script>

                                    </td>


                                    <!--                                <td><form action="DeletingSubject" method="get">
                                                                            <input type="hidden" name="key" value = "<%=del%>">
                                                                            <input type="submit" class="btn btn-danger" value="Delete">
                                                                        </form>
                                                                    </td>-->
                                    <!--<td><button class="btn btn-danger" >Delete</button></td>-->
                                </tr>
                                <% }
                                        rs.close();
                                        stmt.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        System.err.println(e.getClass().getName() + ": " + e.getMessage());
                                        System.exit(0);
                                    }
                                %>

                            </tbody>

                        </table>
                        <br>
                        <br>
                        <form action = "AddSubject" method="get">
                            <strong>Add New Subject:</strong> 
                            <br>
                            <input type="text" name="newsemester" placeholder="semester" size="25">

                            <input type="text" name="newcode" placeholder="course code" size="25">

                            <input type="text" name="newcoursetitle" placeholder="course title" size="50">

                            <input type="text" name="newcredit" placeholder="credit" size="25">


                            <input type="submit" value="Add to curriculum" style="width:  250;">
                        </form>
                    </div>

                </section>





                <!-- /.content -->




            </div><!-- /.content-wrapper -->

            <!-- Footer Start -->
            <!--        <footer class="main-footer">
                        <div class="pull-right hidden-xs">
                        </div>
                        Powered By: <strong>  CSE Society, SUST  </strong> <br>
                    </footer>-->




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

        <div class="jvectormap-label"></div></body>
</html>
