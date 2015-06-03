var cal= function(){
	var o1=document.getElementById("bill_operation_1_Amount").value;
	var o2=document.getElementById("bill_operation_2_Amount").value;
	var o3=document.getElementById("bill_operation_3_Amount").value;
	var o4=document.getElementById("bill_operation_4_Amount").value;
	var o5=document.getElementById("bill_operation_5_Amount").value;
	var total=Number(o1)+Number(o2)+Number(o3)+Number(o4)+Number(o5);
	//alert("Total is "+total);
	document.getElementById('bill_total').innerHTML=("="+total);

}