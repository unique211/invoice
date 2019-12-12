<?php
	include("include/header_link.php");
	include("include/header.php");
	include("include/sidebar.php");
	
?>
<?php
	$title = '';
	$title1 = '';
if(isset($title_name)){
	$title = $title_name;
	$title1 = $title_name1;
}
?>
 <!-- Page wrapper  -->
        <!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div id="column" class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <div  class="panel panel-default">			
					<div class="panel-heading">
		                <button type="button" id="btnadd" data-target="#form" class="mdi mdi-plus-circle  btn btn-info btn-xs"> ADD </button>                  	
					</div>
				</div>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="dashboard">Home /</a></li>&nbsp;	
                        <li class="active"><?php echo $title1 ?></li> 
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
		<div id="form" class="col-md-12">
            <div class="card">
				<input type="hidden" name="userid" id="userid" value="<?php echo $this->session->userdata('id'); ?>"/>
				   <form id="mainform" method="post" class="form-horizontal">
                    <div class="card-body">
                        <h4 class="card-title">Item Master</h4>
					</div>
					<div class="col-md-6" style="float:left;">
						<div class="form-group row">
								<label for="fname" class="col-sm-3 text-left control-label col-form-label">Barcode</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="barcode" placeholder="Barcode">
								</div>
							</div>
                        <div class="form-group row">
                            <label for="fname" class="col-sm-3 text-left control-label col-form-label">Item Code</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" disabled id="item_code" placeholder="Item Code">
                            </div>
                        </div>
						<div class="form-group row">
		                    <label for="publisher1" class="col-sm-3 text-left control-label col-form-label">Item Name</label>
		                    <div class="col-sm-9">
		                        <input type="text" class="form-control" id="item_name" placeholder="Item Name">
		                    </div>
	                    </div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">Item Type</label>
		                    <div class="col-sm-9">
		                        <select class="form-control name" id="name">
										
								</select>
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">Item Group</label>
		                    <div class="col-sm-9">
		                        <select class="form-control item_group" id="item_group">	
								</select>
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="publisher1" class="col-sm-3 text-left control-label col-form-label">HSN Code</label>
		                    <div class="col-sm-9">
		                        <input type="text" class="form-control" id="hsn_code" placeholder="HSN Code">
		                    </div>
	                    </div>
						<div class="form-group row">
		                    <label for="publisher1" class="col-sm-3 text-left control-label col-form-label">Unit</label>
		                    <div class="col-sm-9">
		                        <input type="text" class="form-control" id="unit" placeholder="Unit">
		                    </div>
	                    </div>
						<div class="form-group row">
		                    <label for="publisher1" class="col-sm-3 text-left control-label col-form-label">Location</label>
		                    <div class="col-sm-9">
		                        <select class="form-control location" id="location">	
								</select>
		                    </div>
	                    </div>
						<div class="form-group row">
		                    <label for="publisher1" class="col-sm-3 text-left control-label col-form-label">Brand</label>
		                    <div class="col-sm-9">
		                        <select class="form-control brand" id="comapny">
								
								</select>
		                    </div>
	                    </div>
						<div class="form-group row">
		                    <label for="publisher1" class="col-sm-3 text-left control-label col-form-label">Supplier Name</label>
		                    <div class="col-sm-9">
		                        <select class="form-control supplier_name" id="supplier_name">
								</select>
		                    </div>
	                    </div>
						<div class="form-group row">
							<label for="publisher1" class="col-sm-3 text-left control-label col-form-label">Expiry Date</label>
							<div class="col-sm-8 input-group date e_date" >
								<input type="text" class="form-control input-sm placeholdesize datepicker"  id="e_date" name="e_date" />
								<div class="input-group-addon">
									<span class="mdi mdi-calender"></span>
								</div>
							</div>
		                   
	                    </div>
					</div>
					
					<div class="col-md-6" style="float:right;">
						
                        <div class="form-group row">
                            <label for="fname" class="col-sm-3 text-left control-label col-form-label">Minimum Quantity</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="m_qty" placeholder="Minimum Quantity">
                            </div>
                        </div>
						<div class="form-group row">
		                    <label for="publisher1" class="col-sm-3 text-left control-label col-form-label">Maximum Quantity</label>
		                    <div class="col-sm-9">
		                        <input type="number" class="form-control" id="max_qty" placeholder="Maximum Quantity">
		                    </div>
	                    </div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">Size</label>
		                    <div class="col-sm-9">
		                        <input type="text" class="form-control" id="size" placeholder="Size">
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">Packing</label>
		                    <div class="col-sm-9">
		                        <input type="number" class="form-control" id="packing" placeholder="Packing">
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">Purchase Rate</label>
		                    <div class="col-sm-9">
		                        <input type="number" class="form-control" id="purchase_rate" placeholder="Purchase Rate">
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">MRP</label>
		                    <div class="col-sm-9">
		                        <input type="number" class="form-control" id="mrp" placeholder="MRP">
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">Net Rate</label>
		                    <div class="col-sm-9">
		                        <input type="number" class="form-control" id="net_rate" placeholder="Net Rate">
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">GST%</label>
		                    <div class="col-sm-9">
		                        <input type="number" class="form-control" id="gst" placeholder="GST">
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">Sales Rate</label>
		                    <div class="col-sm-9">
		                        <input type="number" class="form-control" id="sales_rate" placeholder="Sales Rate">
		                    </div>
						</div>
						<div class="form-group row">
		                    <label for="lname" class="col-sm-3 text-left control-label col-form-label">Opening Stock</label>
		                    <div class="col-sm-9">
								<input type="number" class="form-control" id="opening_stock" placeholder="Opening Stock">
								<input type="hidden" class="form-control" id="opening_stock1" >
		                    </div>
						</div>
					</div>
					
					<div class="col-md-12 card-body align-items-center" style="float:left">
                        <div class="modal-footer">
							<input type="hidden" id="saveid" />
							<br>
							<button type="submit" id="save"  class="btn btn-sm btn-success btn-sm pull-right">Save</button>
							<button type="button" id="btndelete" class="btn btn-sm btn-danger pull-left">Delete</button>
							<button type="button" id="btncancel" class="btn btn-sm btn-info pull-right ">Cancel</button>
                        </div>
					</div>
				</form>
            </div>           
		</div>            	
		<div id="tbl" class="row panel">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Records</h5>
						<div class="table-responsive">
							<table id="dataTable" class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>Sr.</th>
										<th style="display:none" >Sr.</th>
										<th>Barcode Code</th>
										<th style="display:none">Item Code</th>
										<th>Item Name</th>
										<th>HSN Code</th>
										<th>Unit</th>
										<th>Expiry Date</th>
										<th style="display:none">Size</th>
										<th>Packing</th>
										<th>GST%</th>
										<th>Sales Rate</th>
										<th>Opening Stock</th>
										<th>Action</th>
										<th style="display:none">Item Code</th>
										<th style="display:none">Item Name</th>
										<th style="display:none">HSN Code</th>
										<th style="display:none">Unit</th>
										<th style="display:none">Expiry Date</th>
										<th style="display:none">Size</th>
										<th style="display:none">Packing</th>
										<th style="display:none">GST%</th>
										<th style="display:none">Sales Rate</th>
										<th style="display:none">Action</th>
									</tr>
								</thead>
								<tbody id="tablebody">
									
								</tbody>        		
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- End Container fluid  -->
	<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
<?php 
	include("include/footer.php");
?>
<script>
var base_url="<?php echo base_url(); ?>";
var table_name="item_master";
var tit="Item Master Details";
</script>
<script>
	$('.date').datepicker({
        'todayHighlight':true,
        format: 'dd/mm/yyyy',
        autoclose: true,
    });
    var date = new Date();
    date = date.toString('dd/MM/yyyy');
    $("#e_date").val(date);
</script>
<script src="<?php echo base_url(); ?>dist/js/item_master.js"></script>
<script src="<?php echo base_url(); ?>dist/js/dynamic.js"></script>
