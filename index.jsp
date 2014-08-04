<%-- 
    Document   : index
    Created on : Jun 12, 2014, 9:11:48 AM
    Author     : Master
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        
        <script src="js/bootstrap.min.js"></script>
        
        <title>Moji računi početna strana</title>

        <!-- Bootstrap core CSS  -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="css/grayscale.css" rel="stylesheet">
  
        <!-- Custom Theme CSS -->

    </head>
    <body id="page-top" data-spy="scroll" data-target=".navbar-custom">

        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="#page-top">
                        <i class="fa fa-play-circle"></i>  <span class="light">Početak</span>
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>
                        <li class="page-scroll">
                            <a href="#nekretnina">Nektretnine</a>
                        </li>
                        <li class="page-scroll">
                            <a href="#izmena">Izmena</a>
                        </li>
                        <li class="page-scroll">
                            <a href="#about">O nama</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        
        <!-- wellcome -->
        <section class="intro">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h1 class="brand-heading" style="-webkit-text-stroke: 1px black;
                                color: white;
                                text-shadow:
                                -1px -1px 0 #000,  
                                1px -1px 0 #000,
                                -1px 1px 0 #000,
                                1px 1px 0 #000;"><font color="white">Moji računi</font>
                            </h1>
                            <%@include file="assets/pickhome.jspf" %>
                        </div>
                    </div>
                </div>
            </div>
        </section>
                        
        <!-- nekretnine -->                
        <section id="nekretnina" class="container content-section text-center">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2>Nekretnine</h2>
                    <div class="panel-body text-center">
                       <%@include file="assets/listhome.jspf" %> 
                    </div>
                </div>
            </div>
        </section>
                                
                                
        <!-- izmena -->
        <section id="izmena" class="content-section text-center">
            <div class="pregled-section ">
                <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2>Izmena</h2>
                    <p>${poruka}</p>
                    <div class="panel-body text-center ">
                       <p><%@include file="assets/homeedit.jspf"%></p> 
                    </div>
                </div>
                </div>
            </div>
        </section>
        
        
        <section id="about" class="container content-section text-center">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Moji računi</h2>
                    <p>Bojan Madov & Danijela Alurović</p>
                    <p>Projekat iz predmeta Programski sistemi jun 2014. god.</p>

                </div>
            </div>
        </section>

        <!-- Core JavaScript Files -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    

    <!-- Custom Theme JavaScript -->
    <script src="js/grayscale.js"></script>
       
    </body>

</html>
