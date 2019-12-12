<?php
include("include/header_link.php");
include("include/header.php");
include("include/sidebar.php");

?>
<style type="text/css">
#chart-container {
    width: 100%;
    height: auto;
}
#chart-container2 {
    width: 100%;
    height: auto;
}
</style>
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Dashboard</h4>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Sales Cards  -->
        <!-- ============================================================== -->
        <?php if ($this->session->role == "admin") { ?>
        <div class="row">
            <!-- Column -->
            <div class="col-md-6 col-lg-3 col-xlg-3">
                <div class="card card-hover">
                <a class="sidebar-link" href="<?php echo base_url();?>Main/sales_bill" aria-expanded="false">
                    <div class="box bg-cyan text-center">
                        <div class="col-md-3" style="float:left;margin-top:20px;margin-bottom:20px;">
                            <h3 class="font-light text-white pull-left"><i class="fas fa-chart-line"></i></h2>
                        </div>
                        <div style="text-align:right;">
                            <h1 id="sales" class="text-white"></h1>
                            <h4 class="font-light text-white">Total Sales</h4>
                        </div>
                    </div>
        </a>
                </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3 col-xlg-3">
          
                <div class="card card-hover">
                <a class="sidebar-link" href="<?php echo base_url();?>Main/purchase_bill" aria-expanded="false">
                    <div class="box bg-success col-md-12 text-center">
                        <div class="col-md-3" style="float:left;margin-top:20px;margin-bottom:20px;">
                            <h3 class="font-light text-white pull-left">
                                <i class="fas fa-shopping-cart"></i>
                            </h3>
                        </div>
                        <div style="text-align:right;">
                            <h1 id="purchase" class="text-white"></h1>
                            <h4 class="font-light text-white">Total Purchase</h4>
                        </div>
                    </div>
                    </a>
                </div>
            
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3 col-xlg-3">
                <div class="card card-hover">
                <a class="sidebar-link" href="<?php echo base_url();?>Main/supplier_master" aria-expanded="false">
                    <div class="box bg-warning">
                        <div class="col-md-3" style="float:left;margin-top:20px;margin-bottom:20px;">
                            <h3 class="font-light text-white pull-left"><i class="fas fa-people-carry"></i></h3>
                        </div>
                        <div style="text-align:right;">
                            <h1 id="supplier" class="text-white"></h1>
                            <h4 class="font-light text-white">Total Supplier</h4>
                        </div>
                    </div>
                </a>
                </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3 col-xlg-3">
                <div class="card card-hover">
                <a class="sidebar-link" href="<?php echo base_url();?>Main/customer_master" aria-expanded="false">
                    <div class="box bg-danger text-center">
                        <div class="col-md-3" style="float:left;margin-top:20px;margin-bottom:20px;">
                            <h3 class="font-light text-white pull-left"><i class="fas fa-user"></i></h3>
                        </div>
                        <div style="text-align:right;">
                            <h1 id="customer" class="text-white"></h1>
                            <h4 class="font-light text-white">Total Customer</h4>
                        </div>
                    </div>
                </a>
                </div>
            </div>
        </div>

        <!-- ============================================================== -->
        <!-- Sales chart -->
        <!-- ============================================================== -->

        <!-- <div class="col-sm-12" style="border:1px solid black;"> -->
        <div class="col-sm-7" style="border:0px solid black;float:left;">
            <div id="chart-container">
                <canvas id="bar-chart"></canvas>
            </div>
        </div>
        <!-- <canvas id="bar-chart" width="1024px" height="450px"></canvas> 
                        <canvas id="bar-chart" style="display: block; width: 600px; height: 400px;"></canvas>-->
        <div class="col-sm-5" style="border:0px solid blue;float:left;">
            <div class="panel panel-bd lobidisable">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4>Today's Report</h4>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="message_inner">
                        <div class="message_widgets">

                            <table class="table table-bordered table-striped table-hover">
                                <tbody>
                                    <tr>
                                        <th>Today's Report</th>
                                        <th>Total</th>
                                    </tr>
                                    <tr>
                                        <th>Total Sales</th>
                                        <td id="tsales"></td>
                                    </tr>
                                    <tr>
                                        <th>Total Purchase</th>
                                        <td id="tpurchase"></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <?php
		} else {
			?>


        <!-- Recent comment and chats -->
        <!-- ============================================================== -->
        <div class="row">
            <!-- Column -->
            <div class="col-md-6 col-lg-4 col-xlg-4">
                <div class="card card-hover">
                <a class="sidebar-link" href="<?php echo base_url();?>Main/company" aria-expanded="false">
                    <div class="box bg-cyan text-center">
                        <div class="col-md-3" style="float:left;margin-top:20px;margin-bottom:20px;">
                            <h3 class="font-light text-white pull-left"><i class="fas fa-chart-line"></i></h2>
                        </div>
                        <div style="text-align:right;">
                            <h1 id="tot_company" class="text-white"></h1>
                            <h4 class="font-light text-white">Total Company</h4>
                        </div>
                    </div>
                    </a>
                </div>
            </div>
         
            <!-- Column -->
            <div class="col-md-6 col-lg-4 col-xlg-4">
                <div class="card card-hover">
                <a class="sidebar-link" href="<?php echo base_url();?>Main/supplier_master" aria-expanded="false">
                    <div class="box bg-warning">
                        <div class="col-md-3" style="float:left;margin-top:20px;margin-bottom:20px;">
                            <h3 class="font-light text-white pull-left"><i class="fas fa-people-carry"></i></h3>
                        </div>
                        <div style="text-align:right;">
                            <h1 id="tot_supplier" class="text-white"></h1>
                            <h4 class="font-light text-white">Total Supplier</h4>
                        </div>
                    </div>
        </a>
                </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-4 col-xlg-4">
                <div class="card card-hover">
                <a class="sidebar-link" href="<?php echo base_url();?>Main/customer_master" aria-expanded="false">
                    <div class="box bg-danger text-center">
                        <div class="col-md-3" style="float:left;margin-top:20px;margin-bottom:20px;">
                            <h3 class="font-light text-white pull-left"><i class="fas fa-user"></i></h3>
                        </div>
                        <div style="text-align:right;">
                            <h1 id="tot_customer" class="text-white"></h1>
                            <h4 class="font-light text-white">Total Customer</h4>
                        </div>
                    </div>
                </a>
                </div>
            </div>
        </div>

        <!-- ============================================================== -->
        <!-- Sales chart -->
        <!-- ============================================================== -->

        <!-- <div class="col-sm-12" style="border:1px solid black;"> -->
        <div class="col-sm-7" style="border:0px solid black;float:left;width:100%;">
            <div id="chart-container2">
                <canvas id="bar-chart2"></canvas>
            </div>
        </div>
        <!-- <canvas id="bar-chart" width="1024px" height="450px"></canvas> 
                        <canvas id="bar-chart" style="display: block; width: 600px; height: 400px;"></canvas>-->
        <div class="col-sm-5" style="border:0px solid blue;float:left;width:100%;">
            <div class="panel panel-bd lobidisable">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4>Today's Report</h4>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="message_inner">
                        <div class="message_widgets">

                            <table class="table table-bordered table-striped table-hover">
                                <tbody>
                                    <tr>
                                        <th>Today's Report</th>
                                        <th>Total</th>
                                    </tr>
                                    <tr>
                                        <th>Total Sales</th>
                                        <td id="tsales2"></td>
                                    </tr>
                                    <tr>
                                        <th>Total Purchase</th>
                                        <td id="tpurchase2"></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <?php
			}
			?>
        <!-- ============================================================== -->
        <!-- Recent comment and chats -->
        <!-- ============================================================== -->

        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->

        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
    <?php
	include("include/footer.php");
	?>
    <!--Dashboard JS -->
    <script src="<?php echo base_url(); ?>dist/js/Dashboard.js"></script>
    <script>
    var base_url = "<?php echo base_url(); ?>";
    var role = "<?php echo $this->session->role; ?>";
    </script>