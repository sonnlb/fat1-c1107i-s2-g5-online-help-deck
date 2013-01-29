
  // Handler for .ready() called.
  // });ddgo();
  // 
  //
  //
jQuery(document).ready(function ($) {
show_zip_required(false);
$('.state_list').hide();
$('.demo_country select').change( function(){
	show_zip_required(false);
	var value = $(this).val();
	var parentdiv = $(this).closest('ul').attr("id");
	if(value == 'United States'){ show_states_us(parentdiv); show_zip_required(true); }
		
	else if(value =='India'){ show_states_india(parentdiv) }
	else if(value == 'Australia'){ show_states_australia(parentdiv) }
	else if(value == 'Canada'){ show_states_canada(parentdiv) }
	else{
		hide_all_but();
	}
/*switch(value){
	case "US":
		show_states_us( parent );
		break;
	}*/
});
function show_zip_required(required){
 if(required){
   $('.zip-code.gfield_contains_required input').val('');
 
  $('.zip-code.gfield_contains_required').show();
  $('.zip-code.not-required').hide();
 }	
 else{
  //$('.zip-code.gfield_contains_required input').val('00000');  
  //$('.zip-code.gfield_contains_required').animate({opacity: 0});
  $('.zip-code.gfield_contains_required').hide();
  $('.zip-code.not-required').show();
}
}

function show_states_us( parentdiv ){
	$('.demo_states_us').show();
	hide_all_but('us');
}

function show_states_canada( parentdiv ){
	$('.demo_states_ca').show();
	hide_all_but('ca');
}

function show_states_india( parentdiv ){
	$('.demo_states_india').show();
	hide_all_but('india');
}

function show_states_australia( parentdiv ){
	$('.demo_states_australia').show();
	hide_all_but('australia');
}




function hide_all_but(value){
	if( value != 'us' ){ $('.demo_states_us').hide()}
	if( value != 'ca' ){ $('.demo_states_ca').hide()}
	if( value != 'australia' ){ $('.demo_states_australia').hide()}
	if( value != 'india' ){ $('.demo_states_india').hide()}
}

});
