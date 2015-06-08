	var cal = function() {
	var o1 = document.getElementById("bill_operation_1_amount").value;
	var o2 = document.getElementById("bill_operation_2_amount").value;
	var o3 = document.getElementById("bill_operation_3_amount").value;
	var o4 = document.getElementById("bill_operation_4_amount").value;
	var o5 = document.getElementById("bill_operation_5_amount").value;
	var total = Number(o1)+Number(o2)+Number(o3)+Number(o4)+Number(o5);
	//alert(total);
	document.getElementById('bill_total').value=total;
};