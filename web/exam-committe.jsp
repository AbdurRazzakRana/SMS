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

        <title>Exam Comity .:: Super User ::.</title>

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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                max-width: 300px;
                margin: auto;
                text-align: center;
                font-family: arial;
            }

            .title {
                color: grey;
                font-size: 18px;
            }

            button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                background-color: #000;
                text-align: center;
                cursor: pointer;
                width: 100%;
                font-size: 18px;
            }

            a {
                text-decoration: none;
                font-size: 22px;
                color: black;
            }

            button:hover, a:hover {
                opacity: 0.7;
            }
        </style>
    </head>
    <body class="skin-blue sidebar-mini">
        <%
                            HttpSession tempSession = request.getSession();
                            String semester = (String) tempSession.getAttribute("selectedSemester");
                            System.out.println("Hello Teacher:"+tempSession.getAttribute("selectedTeacher"));
                        %>










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

                        <li class="">
                            <a href="">
                                <!--Handle Profile here-->
                                <i class="fa fa-spinner"></i> <span>Profile</span>
                            </a>
                        </li>

                        <li class="">
                            <a href="">
                                <!--Handle Email Page-->
                                <i class="fa fa-circle-o text-green"></i> <span>Email</span>
                            </a>
                        </li>
                        <hr>

                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside> 
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 698px;">
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


<!--            <div class="card">
                        <img src="images/001.jpg" alt="MZI" style="width:100%">
                        <h1>John Doe</h1>
                        <p class="title">CEO & Founder, Example</p>
                        <p>Harvard University</p>
                        <p><button>Contact</button></p>
                         </div>-->
                        

            <section class="content-header">
                <h1 style="text-align: center;">
                        
                    <strong><%=semester%> Exam Comity Members:</strong>
                        <br>
                        <br>
                    </h1>

                    <%
                        
                        Connection c = null;
                        Statement stmt = null;
                        ResultSet rs = null;
                    try{
                        Class.forName("org.postgresql.Driver");
                        c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/semestermaintainance", "postgres", "123456");
                        c.setAutoCommit(false);

                        stmt = c.createStatement();
                        String sem = "";
                        if (semester.contains("1-1")) {
                            sem = "oneone";
                        } else if (semester.contains("1-2")) {
                            sem = "onetwo";
                        } else if (semester.contains("2-1")) {
                            sem = "twoone";
                        } else if (semester.contains("2-2")) {
                            sem = "twotwo";
                        } else if (semester.contains("3-1")) {
                            sem = "threeone";
                        } else if (semester.contains("3-2")) {
                            sem = "threetwo";
                        } else if (semester.contains("4-1")) {
                            sem = "fourone";
                        } else if (semester.contains("4-2")) {
                            sem = "fourtwo";
                        }
                        System.out.println(sem);
                        String sql = "SELECT * FROM teacherinfo WHERE teacherinfo.teacherid in (SELECT examcomity.teacherid FROM examcomity WHERE "+sem+">0 ORDER BY "+sem+" DESC);";
                        rs = stmt.executeQuery(sql);
                    
                        String name = "";
                        String designation = "";
                        String rank = "";
                        String cheif = "Chairman of the exam committe";
                        String member = "Member";
                        String position = "";
                        int i=0;

                        while(rs.next()){
                            name = rs.getString(2);
                            designation = rs.getString(3);
                            rank = rs.getString(4);
                            System.out.println(rank);
                            if(i==0)position = cheif;
                            else position = member;
                            i++;
                      %>
                      
                      <div class="card">
                          
                          <img src="images/<%=rank%>.jpg" alt=<%=name%> style="width:100%">
                        <h1><%=name%></h1>
                        <p class="title"><%=designation%></p>
                        <p><%=position%></p>
                        <a href="AllTeachers.jsp" ><button>Change</button></a>
                         </div>
                        <br>
                        <br>
                     
                    <%
                        }
                       
                    %>
                </ul>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    <%    
                    } catch(Exception ex){
                        ex.printStackTrace();
                    
                    } finally{
                        rs.close();
                        stmt.close();
                        c.commit();
                        c.close();
                    }

                    %>     



                    
















                </section>




                <!-- Content Header (Page header) -->
                

                <!--                <h3 class="content-header">Dr Mohammad Reza Selim
                                    <a href="http://cse.sust.edu/reunion/profile" class="btn btn-md btn-success pull-right margin"> Update Profile</a>
                                    <a href="http://cse.sust.edu/reunion/dashboard/online-payment" class="btn btn-md btn-warning pull-right margin"> Make Online Payment</a>
                                    <a href="http://cse.sust.edu/reunion/dashboard/offline-payment" class="btn btn-md btn-info pull-right margin"> Make Offline Payment</a>
                                </h3>-->


















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



        <div class="jvectormap-label"></div></body>
</html>
