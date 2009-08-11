// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Javascript for getting selected text
/*function disable_paper_color(){
	var x = document.getElementById("order_papertype_id").selectedIndex;
	var selected_text = document.getElementById("order_papertype_id").options[x].text;
	alert(selected_text);	
}*/

function updatePaperColor(y){
	var x = document.getElementById("order_papertype_id").selectedIndex;
	var selected_id = document.getElementById("order_papertype_id").options[x].value;
	var a = y.split(",");

	for (i = 0; i < a.length; i++) {
		if(selected_id == a[i]){
	 		document.getElementById("order_papercolor_id").disabled = true;
			break;	
		}
		else{
			document.getElementById("order_papercolor_id").disabled = false;
		}
  }
}

function clear_folding(j){	
	var a = j.split(",");

	for (i = 0; i < a.length; i++) {
		if ($('order_folding_id_' + a[i]).checked == true) {
			$('order_folding_id_' + a[i]).checked = false
		}	
  }
}

function clear_stapling(j){
	var a = j.split(",");
	
	for (i = 0; i < a.length; i++) {
		if ($('order_stapling_id_' + a[i]).checked == true) {
			$('order_stapling_id_' + a[i]).checked = false
	  }	
	}	
}

function clear_bind(j){
	var a = j.split(",");
	
	for (i = 0; i < a.length; i++) {
		if ($('order_bind_id_' +a[i]).checked == true)
			$('order_bind_id_' +a[i]).checked = false	
	}
}

function clear_front_cover(){
	if ($('order_hard_front_cover_no').checked == true)
		$('order_hard_front_cover_no').checked = false				
	else	
		$('order_hard_front_cover_yes').checked = false
}

function clear_back_cover(j){
	var a = j.split(",");
	
	for (i = 0; i < a.length; i++) {
		if ($('order_hard_back_cover_id_' +a[i]).checked == true)
			$('order_hard_back_cover_id_' +a[i]).checked = false
	}
}