<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>Capture The Flag 2015</title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/ctf.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="greentext glow" href="#">Capture The Flag :~#</a>
                    <a class="blink_me glow">&nbsp;_</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <form method="POST" action="Login" class="navbar-form navbar-right">
                        <div class="form-group">
                            <input required type="text" name="user" placeholder="Team Name" class="form-control">
                        </div>
                        <div class="form-group">
                            <input required type="password" name="pass" placeholder="Password" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-success ">Sign in</button>
                    </form>
                </div>
                <!--/.navbar-collapse -->
            </div>
        </nav>
        <hr>
        <hr>
        <div class="container-fluid">
            <!-- Example row of columns -->
            <div class="row">
                <div class="col-md-8" height="100%">
                    <img class="img-responsive" alt="Responsive image" src="poster.jpg">
                </div>
                <div class="col-md-4 well greenonblack regform">
                    <form method="post" action="Registration">
                        <div class="form-group glow">
                            <h1><strong >Register</strong></h1>
                        </div>
                        <div class="form-group bg-warning">
<%
                    try {

                    if (request.getParameter("prob") != null) {
                            String prob = request.getParameter("prob");

                            if (prob.equals("teamExist")) {
                                out.print(">Team Name already exists! Try new one.");
                            } else if (prob.equals("incomplete")) {
                                out.print(">Alert! One or more entry was left bank.<p><t>Please Re-enter the data");
                            } else if (prob.equals("length")) {
                                out.print(">Alert! Data Insertion length Exceed.<p>One or more entry has more characters than allowed.");
                            } else if (prob.equals("idExist")) {
                                
                                String msg=">Alert! Member";
                                if (request.getParameter("name") != null)
                                    msg+="("+request.getParameter("name").toString()+")";
                                msg+=" Already Exists.<p> In case of problem, Plz contact Organisers.";
                              out.print(msg);
                            } else if (prob.equals("passUnMatch")) {
                                out.print("> Password didn't match.");
                            } else if (prob.equals("phone")) {
                                out.print("> Invalid Phone Format(Enter 10 digits Only)");
                            }
                        }
                    } catch (Exception e) {
                    }
                %>                        

                        </div>
                        <div class="form-group">
                            <input required type="text" class="form-control" name="tname" placeholder="*Team Name">
                        </div>
                        <div class="form-group">
                            <input required type="password" class="form-control" name="pass" placeholder="*Password">
                        </div>
                        <div class="form-group">
                            <input required type="password" class="form-control" name="repass" placeholder="*Re-type Password">
                        </div>
                        <div class="form-group row">
                            <div class="col-md-4">
                                <input required type="text" class="form-control " name="aid1" placeholder="*AnweshaID I">
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control " name="aid2" placeholder="AnweshaID II">
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control " name="aid3" placeholder="AnweshaID III">
                            </div>
                        </div>
                        <div class="form-group">
                            <input required type="text" class="form-control" name="college" placeholder="*College Name">
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3">
                              <input  class="form-control" readonly="" value="+91" >
                            </div>
                            <div class="col-md-9">
                            <input  pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" class="form-control" name="phone" placeholder="Phone (10 digits only)">
                            </div>
                        </div>
                        <div class="form-group">
                            <input required type="email" class="form-control" name="email" placeholder="*E-mail ID">
                        </div>
                        <button type="submit" class="btn btn-danger">Sign Up</button>
                            <div class="form-group alert-success">
                <%
                    try {

                    if (request.getParameter("info") != null) {
                            String prob = request.getParameter("info");

                            if (prob.equals("done")) {
                                out.print("> Registration Successful.");
                            }
                    }
                    }catch(Exception e)
                                    {
                                    
                                    }
                    %>
                    </form>
                </div>
            </div>
            <hr>
            <footer>
                <p>&copy; CTF-IIT Patna 2015</p>
            </footer>
        </div>
        <!-- /container -->

        <!-- Bootstrap core JavaScript
                ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>
