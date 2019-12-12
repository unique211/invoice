<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {
	function __construct(){
		parent:: __construct();
		$this->load->model('Main_model','m');	
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");			
	}
	public function index()
	{
		//$this->login();
		if(isset($this->session->userid)){
			$this->session->unset_userdata('userid');  	
			$this->session->unset_userdata('role');  	
			$this->session->unset_userdata('c_id');  	
		}
		$this->load->view("Login");			
	}
	function Login(){
		$username = $this->input->post('username'); 
		$password = $this->input->post('password');
	
		$result = $this->m->can_login($username, $password);
		echo json_encode($result);
	}
	public function dashboard(){
		if((isset($this->session->userid)) && (isset($this->session->role))){
			$this->load->view("Dashboard");
		}else{
			redirect(base_url('Main'));
		}
		
	}
	public function master(){
		$this->load->view("Master");
	}
	public function item_master()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
			$title['title_name'] = "  ";
			$title['title_name1'] = "Item Master";
			//$title['active_menu'] = "v";
			$this->load->view('item_master',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function company()
	{
		 if((isset($this->session->userid)) && (isset($this->session->role)== "superadmin")){
			$title['title_name'] = "  ";
			$title['title_name1'] = "Company";
			//$title['active_menu'] = "v";
			$this->load->view('Company',$title);	
		 }else{
		 	redirect(base_url('Main'));
		 }
	}
	public function supplier_master()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id)) ||  (isset($this->session->role)== "superadmin")){
		$title['title_name'] = "  ";
		$title['title_name1'] = "Supplier Master";
		//$title['active_menu'] = "v";
		$this->load->view('supplier_master',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function customer_master()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))||  (isset($this->session->role)== "superadmin")){
		$title['title_name'] = "  ";
		$title['title_name1'] = "Customer Master";
		//$title['active_menu'] = "v";
		$this->load->view('customer_master',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function barcode_master()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
		$title['title_name'] = "  ";
		$title['title_name1'] = "Barcode Master";
		//$title['active_menu'] = "v";
		$this->load->view('Barcode',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function item_type()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
		$title['title_name'] = "  ";
		$title['title_name1'] = "Item Type";
		//$title['active_menu'] = "v";
		$this->load->view('item_type',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function barcode()
	{
		$this->load->view('barcode');	
	}
	public function item_group()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
		$title['title_name'] = "  ";
		$title['title_name1'] = "Item Group";
		//$title['active_menu'] = "v";
		$this->load->view('item_group',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function item_location()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
			$title['title_name'] = "  ";
			$title['title_name1'] = "Item Location";
			//$title['active_menu'] = "v";
			$this->load->view('item_location',$title);
		}else{
			redirect(base_url('Main'));
		}	
	}
	public function payment_through()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
			$title['title_name'] = "  ";
			$title['title_name1'] = "Payment Through";
			//$title['active_menu'] = "v";
			$this->load->view('payment_through',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function employee()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
			$title['title_name'] = "  ";
			$title['title_name1'] = "Employee";
			//$title['active_menu'] = "v";
			$this->load->view('employee',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function department()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
			$title['title_name'] = "  ";
			$title['title_name1'] = "Department";
			//$title['active_menu'] = "v";
			$this->load->view('department',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function account_group()
	{
		if((isset($this->session->userid)) && (isset($this->session->c_id))){
			$title['title_name'] = "  ";
			$title['title_name1'] = "Account Group";
			//$title['active_menu'] = "v";
			$this->load->view('account_group',$title);	
		}else{
			redirect(base_url('Main'));
		}
	}
	public function purchase(){
		$this->load->view("Purchase");
	}
	public function purchase_bill()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Purchase Bill";
		//$title['active_menu'] = "v";
		$this->load->view('purchase_bill',$title);	
	}
	public function purchase_return()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Purchase Return";
		//$title['active_menu'] = "v";
		$this->load->view('purchase_return',$title);	
	}
	public function sales_bill()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Sales Bill";
		//$title['active_menu'] = "v";
		$this->load->view('sales_bill',$title);	
	}
	public function return_bill()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Return Bill";
		//$title['active_menu'] = "v";
		$this->load->view('return_bill',$title);	
	}
	public function brand()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Brand";
		//$title['active_menu'] = "v";
		$this->load->view('brand_master',$title);	
	}
	public function payment_return()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Payment Return";
		//$title['active_menu'] = "v";
		$this->load->view('payment_return',$title);	
	}
	public function advance_refund()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Advance Refund";
		//$title['active_menu'] = "v";
		$this->load->view('advance_refund',$title);	
	}
	public function bank_details()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Bank Details";
		//$title['active_menu'] = "v";
		$this->load->view('bank_details',$title);	
	}
	public function email()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Email";
		//$title['active_menu'] = "v";
		$this->load->view('Email',$title);	
	}
	public function stock()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Stock Report";
		//$title['active_menu'] = "v";
		$this->load->view('Stock',$title);	
	}
	public function stocksupplier()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Stock Report(supplier Wise)";
		//$title['active_menu'] = "v";
		$this->load->view('StockSupplier',$title);	
	}
	public function profile()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Profile";
		//$title['active_menu'] = "v";
		$this->load->view('Profile',$title);	
	}
	public function changePassword()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Change Password";
		//$title['active_menu'] = "v";
		$this->load->view('ChangePassword',$title);	
	}
	public function salesReport()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Sales Report";
		//$title['active_menu'] = "v";
		$this->load->view('salesReport',$title);	
	}
	public function purchaseReport()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Purchase Report";
		//$title['active_menu'] = "v";
		$this->load->view('purchaseReport',$title);	
	}
	public function salesReportItem()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Sales Report";
		//$title['active_menu'] = "v";
		$this->load->view('salesreportItem',$title);	
	}
	public function profitReport()
	{
		$title['title_name'] = "  ";
		$title['title_name1'] = "Purchase Report";
		//$title['active_menu'] = "v";
		$this->load->view('profitReport',$title);	
	}
}
?>
