$(document).ready(function(){
	$('#form').hide();
	$('#facultyTable').DataTable();
	$(document).on('click','#btnadd',function(){
		$('#form').show();
		$('#tbl').hide();		
		$('#column').hide();
	});
	$(document).on('click','#btncancel',function(){
		$('#form').hide();
		$('#tbl').show();
		$('#column').show();
	});
	$('#gender input').on('change', function() {
		console.log($('input[name=gender]:checked', '#addFaculty').val());
	});
	$(document).on('submit','#addFaculty',function(e){
		e.preventDefault();

		var url=base_url+"LMS/adddata";
		var barcode=$('#barcode').val();
		var fname=$('#fname').val();
		var lname=$('#lname').val();
		var dob=$('#dob').val();
		var gender=$('input[name=gender]:checked', '#addFaculty').val();
		var email=$('#email').val();
		var mobile=$('#mobile').val();
		var address=$('#address').val();
		var department=$('#department').val();
		var uname=$('#uname').val();
		var pwd=$('#password').val();
		var id=$('#saveid').val();
		var role=$('#role').val();

		$.ajax({
			type:"POST",
			url : base_url+"LMS/adddata",
			data:{
				id:id,
				barcode:barcode,
				fname:fname,
				lname:lname,
				dob:dob,
				gender:gender,
				email:email,
				mobile:mobile,
				address:address,
				department:department,
				uname:uname,
				pwd:pwd,
				table_name:'faculty'
			},
			dataType : 'json',
			async:false,
			success: function(data){
				var data = data;
				alert(data);
				$.ajax({
					type:"POST",
					url : base_url+"LMS/adddata",
					data:{
						id:id,
						data:data,
						uname:uname,		
						pwd:pwd,
						role:role,
						table_name:'user_managment'
					},
					dataType : 'json',
					async:false,
					success: function(data){
						$('#addFaculty')[0].reset();
						$('#tbl').show();
						$('#column').show();
						$('#form').hide();
					},
					error:function(){				
						alert("from error");
					}
				});
				datashow();
			},
			error:function(){
				alert("from");
			}
		});
	});
	datashow();
	function datashow(){
	
		$.ajax({
			type:"POST",
			url:base_url+"LMS/ShowData",
			data:{		
				table_name: 'faculty'
			},
			dataType:"JSON",
			async:false,
			success: function(data){	
				console.log('data'+data);
				//console.log(data);
				var data=eval(data);
				$('#facultytbody').html('');
				var table="";
				for(var i=0;i<data.length;i++)
				{
					table+='<tr>'+
					'<td id="id_'+data[i].id+'">'+data[i].id+'</td>'+
					'<td id="barcode_'+data[i].id+'">'+data[i].barcode+'</td>'+
					'<td id="fname_'+data[i].id+'">'+data[i].fname+'</td>'+
					'<td id="lname_'+data[i].id+'">'+data[i].lname+'</td>'+
					'<td hidden id="dob_'+data[i].id+'">'+data[i].dob+'</td>'+
					'<td id="gender_'+data[i].id+'">'+data[i].gender+'</td>'+
					'<td id="email_'+data[i].id+'">'+data[i].email+'</td>'+
					'<td id="mobile_'+data[i].id+'">'+data[i].mobile+'</td>'+
					'<td hidden id="address_'+data[i].id+'">'+data[i].address+'</td>'+
					'<td id="department_'+data[i].id+'">'+data[i].department+'</td>'+
					'<td id="username_'+data[i].id+'">'+data[i].username+'</td>'+
					'<td hidden id="password_'+data[i].id+'">'+data[i].password+'</td>'+
					'<td ><input type="button" name="edit" value="Edit" class="edit_data btn-primary" id='+data[i].id+'>'+
					'<input type="button" name="delete" value="Delete" class="delete_data btn-danger" id='+data[i].id+'></td>'+
	                 		'</tr>' ;
				}
				$('#facultytbody').append(table);
			
			}
			
		});
	
	}
	
	$(document).on('click','.edit_data',function(e){
		e.preventDefault();
		//alert("Hii");
		$('#form').show();
		$('#tbl').hide();
		$('#column').hide();
		$('.modal-title').text("Edit Faculty info");
		$('#btnsave').text('Update');
		
		var id1 = $(this).attr('id');
		var barcode = $('#barcode_'+id1).html();
		var fname = $('#fname_'+id1).html();
		var lname = $('#lname_'+id1).html();
		var dob = $('#dob_'+id1).html();
		var gender = $('#gender_'+id1).html();
		var email = $('#email_'+id1).html();
		var mobile = $('#mobile_'+id1).html();
		var address = $('#address_'+id1).html();
		var department = $('#department_'+id1).html();
		var username = $('#username_'+id1).html();
		var password = $('#password_'+id1).html();
			
		$('#saveid').val(id1);
		$('#barcode').val(barcode);
		$('#fname').val(fname);
		$('#lname').val(lname);
		$('#dob').val(dob);
		$('#gender').val(gender);
		$('#email').val(email);
		$('#mobile').val(mobile);
		$('#address').val(address);
		$('#department').val(department);
		$('#uname').val(username);
		$('#password').val(password);
	});
	$(document).on('click','.delete_data',function(){
		var id1 = $(this).attr('id');
		$('#saveid').val(id1);
		if(confirm("Are you sure you want to delete")){
			$.ajax({
				type:"post",
				url:base_url+"LMS/deleteData",
				dataType:"json",
				data:{
					id:id1,
					table_name:'faculty'
				},
				success: function(data){
					datashow();
				}
			});
		}
		else{
			return false;
		}
	});
});

       

      
    
