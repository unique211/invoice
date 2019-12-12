$(document).ready(function(){
	//alert("HII");	
		
	$('#form').hide();
	$('#dataTable').DataTable();
	$(document).on('click','#btnadd',function(){
		//alert("HII");	
		$('#form').show();
		$('#tbl').hide();		
		$('#column').hide();
	});
	$(document).on('click','#btncancel',function(){
		//alert("HII");	
		$('#form').hide();
		$('#tbl').show();
		$('#column').show();
	});
	
	
});

       

      
    
