<%-- 
    Document   : mainview
    Created on : Jun 12, 2014, 6:02:21 PM
    Author     : Master
--%>

<%@page import="main.Nekretnine"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MojRačun pregled</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Core CSS - Include with every page -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/datepicker.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
        <link href="css/morris-0.4.3.min.css" rel="stylesheet">
        <link href="css/timeline.css" rel="stylesheet">
        <!-- Page-Level Plugin CSS - Notifications -->

        <!-- SB Admin CSS - Include with every page -->
        <link href="css/sb-admin.css" rel="stylesheet">
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery-2.1.0.min.js"></script>
        <script src="js/jquery-ui-1.10.4.custom.min.js"></script>        
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    </head>

    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <% Nekretnine user = (Nekretnine) session.getAttribute("user");%>
                    <h3>Dobrodošli u <%=user.getImenek()%>! </h3>
                </div>
                <!-- Desni meni -->
                <ul class="nav navbar-top-links navbar-right">
                    
                    <%@include file="assets/desnimeni.jspf" %> 
                </ul>
                <!-- Levi meni -->
                <%@include file="assets/levimeni.jspf" %> 
            </nav>
            
            <div id="page-wrapper">
                <%@include file="assets/popup.jspf" %> 
                <%@include file="assets/kasicaelementi.jspf" %> 
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Pregled</h1><p>${poruka}</p>
                    </div>
                </div>
                <!-- Grafikoni -->
                <div class="row">
                    <div class="col-lg-8">
                        <%@include file="assets/mainview/areachart.jspf" %> 
                        <%@include file="assets/mainview/barchart.jspf" %>
                    </div>
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-cogs fa-fw"></i> Moji računi alati
                            </div>
                            <div class="panel-body">
                                <div class="list-group">
                                    <%@include file="assets/mainview/mojiracunialati.jspf" %>
                                </div>
                                <a href="#" class="btn btn-default btn-block" data-toggle="modal" data-target="#myModalTimeline">Timeline</a>
                                <%@include file="assets/timeline.jspf" %>
                            </div>
                        </div>
                        <!-- Djevrek grafikon -->
                        <%@include file="assets/mainview/djevrek.jspf" %>
                    </div>
                </div>
            </div>
        </div>   
    
    <!-- /#wrapper -->
    <!-- Core Scripts - Include with every page -->
    <!-- Core Scripts - Include with every page -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/metisMenu/jquery.metisMenu.js"></script>

    <!-- Page-Level Plugin Scripts - Notifications -->
    <script src="js/morris/raphael-2.1.0.min.js"></script>
    <script src="js/morris/morris.js"></script>
    <!-- SB Admin Scripts - Include with every page -->
    <script src="js/sb-admin.js"></script>
    <script src="js/demo/dashboard-demo.js"></script>
    <script src="js/demo/highcharts.js"></script>
    <script src="js/demo/exporting.js"></script>
    <!-- Page-Level Demo Scripts - Notifications - Use for reference -->
    <script>
        // tooltip demo
        $('.tooltip-demo').tooltip({
            selector: "[data-toggle=tooltip]",
            container: "body"
        })

        // popover demo
        $("[data-toggle=popover]")
                .popover()
    </script>
    <script>
        Morris.Donut({
            element: 'donut-racuni',
            data: [
                {label: "Infostan", value: <%=racInf%>},
                {label: "Struja", value: <%=racStr%>},
                {label: "Ostalo", value: <%=racOst%>},
                {label: "Telefon", value: <%=racTel%>}
            ]
        });

        Morris.Bar({
            element: 'morris-bar',
            data: [
                {y: 'Januar', a: <%=pr1%>, b: <%=pr1n%>},
                {y: 'Februar', a: <%=pr2%>, b: <%=pr2n%>},
                {y: 'Mart', a: <%=pr3%>, b: <%=pr3n%>},
                {y: 'April', a: <%=pr4%>, b: <%=pr4n%>},
                {y: 'Maj', a: <%=pr5%>, b: <%=pr5n%>},
                {y: 'Jun', a: <%=pr6%>, b: <%=pr6n%>},
                {y: 'Jul', a: <%=pr7%>, b: <%=pr7n%>},
                {y: 'Avgust', a: <%=pr8%>, b: <%=pr8n%>},
                {y: 'Septembar', a: <%=pr9%>, b: <%=pr9n%>},
                {y: 'Oktobar', a: <%=pr10%>, b: <%=pr10n%>},
                {y: 'Novembar', a: <%=pr11%>, b: <%=pr11n%>},
                {y: 'Decembar', a: <%=pr12%>, b: <%=pr12n%>}
            ],
            xkey: 'y',
            ykeys: ['a', 'b'],
            labels: ['Plaćeni računi', 'Neplaćeni računi']
        });

        Morris.Area({
            element: 'area-example',
            data: [
                {y: '2013 Q4', a: <%=dataLp6[5]%>, b: <%=dataLp6i[5]%>, c: <%=dataLp6s[5]%>},
                {y: '2014 Q1', a: <%=dataLp6[4]%>, b: <%=dataLp6i[4]%>, c: <%=dataLp6s[4]%>},
                {y: '2014 Q2', a: <%=dataLp6[3]%>, b: <%=dataLp6i[3]%>, c: <%=dataLp6s[3]%>},
                {y: '2014 Q3', a: <%=dataLp6[2]%>, b: <%=dataLp6i[2]%>, c: <%=dataLp6s[2]%>},
                {y: '2014 Q4', a: <%=dataLp6[1]%>, b: <%=dataLp6i[1]%>, c: <%=dataLp6s[1]%>},
                {y: '2015 Q1 ', a: <%=dataLp6[0]%>, b: <%=dataLp6i[0]%>, c: <%=dataLp6s[0]%>}

            ],
            xkey: 'y',
            ykeys: ['a', 'b', 'c'],
            labels: ['Uplata', 'Isplata', 'Stanje']
        });
        
    
        Morris.Donut({
            element: 'annual-one',
            data: [
                {label: "Infostan", value: 12},
                {label: "Struja", value: 33},
                {label: "Ostalo", value: 12},
                {label: "Telefon", value: 13}
            ]
        });
        
    </script>

</body>
</html>
