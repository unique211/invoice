 <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin5">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav" class="p-t-30">
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link active" href="<?php echo base_url();?>Main/dashboard" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Dashboard</span></a></li>
						<li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="<?php echo base_url();?>Main/master" aria-expanded="false"><i class="mdi mdi-plus"></i><span class="hide-menu">Master </span></a>
                  
						    <ul aria-expanded="false" class="collapse  first-level">
                                
                            <?php
                            if($this->session->role == "superadmin"){
                            ?>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/company" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Company </span></a>
                                </li>
                            <?php
                            }else if($this->session->role == "admin"){
                            ?>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/item_master" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Item Master </span></a>
                                </li>

                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/supplier_master" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Supplier Master </span></a>
                                </li>
                                
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/customer_master" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Customer Master </span></a>
                                </li>

                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/barcode_master" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Barcode Master </span></a>
                                </li>

                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/brand" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Brand </span></a>
                                </li>

                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/item_type" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Item Type </span></a>
                                </li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/item_group" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Item Group </span></a>
                                </li>
                                    
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/item_location" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Item Location </span></a>
                                </li>
                                    
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/payment_through" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Payment Through </span></a>
                                </li>
                                    
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/employee" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Employee </span></a>
                                </li>
                                    
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/department" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Department </span></a>
                                </li>
                                    
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/account_group" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Account Group </span></a>
                                </li>
                            
                            </ul>
						</li>
						<li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="<?php echo base_url();?>Main/purchase" aria-expanded="false"><i class="mdi mdi-cart"></i><span class="hide-menu">Purchase / Sales </span></a>
                  
							<ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/purchase_bill" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Purchase Bill </span></a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/purchase_return" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Purchase Return </span></a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/sales_bill" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu">Sales Bill </span></a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/return_bill" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Return Bill </span></a></li>
                                
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="<?php echo base_url();?>Main/purchase" aria-expanded="false"><i class="mdi mdi-cash"></i><span class="hide-menu">Transaction </span></a>
                  
							<ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/payment_return" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Payment Return </span></a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/advance_refund" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Advance Refund </span></a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/bank_details" aria-expanded="false"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Bank Details </span></a></li>
                            </ul>
                        </li>
                  <!--      <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link active" href="<?php echo base_url();?>Main/email" aria-expanded="false"><i class="mdi mdi-email"></i><span class="hide-menu">E-Mail</span></a></li> -->

                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="<?php echo base_url();?>Main/stock" aria-expanded="false"><i class="ti-bar-chart"></i><span class="hide-menu">Stock </span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/stock" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Stock Report </span></a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/stocksupplier" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Stock Report (Supplier wise) </span></a></li>
                            </ul>
                        </li>

                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="<?php echo base_url();?>Main/salesReport" aria-expanded="false"><i class="ti-book"></i><span class="hide-menu">Report </span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/salesReport" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Sales Report </span></a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/purchaseReport" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Purchase Report </span></a></li>
                                <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/salesReportItem" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Sales Report(Item Wise) </span></a></li>
                             <!--   <li class="sidebar-item"><a class="sidebar-link" href="<?php echo base_url();?>Main/profitReport" aria-expanded="false"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Purchase Report </span></a></li> -->
                            </ul>
                        </li>

                        <?php }
                            ?>

                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
