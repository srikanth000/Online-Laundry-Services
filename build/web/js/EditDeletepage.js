$(document).ready(function()
{
$(".delete").live('click',function()
{
var id = $(this).attr('id');
var b=$(this).parent().parent();
var dataString = 'id='+ id;

	$.ajax({
type: "POST",
url: "delete_ajax.php",
data: dataString,
cache: false,
success: function(e)
{
b.hide();
e.stopImmediatePropagation();
}
		   });
	return false;
});

$(".delete10").live('click',function()
{
var id = $(this).attr('id');
var b=$(this).parent().parent();
var dataString = 'id10='+ id;
//if(confirm("Sure you want to delete this update? There is NO undo!")){
$.ajax({
type: "POST",
url: "delete_ajax.php",
data: dataString,
cache: false,
success: function(e)
{
b.hide();
e.stopImmediatePropagation();
}
		   });
	return false;
//}
});

$(".delete7").live('click',function()
{
var id = $(this).attr('id');
var b=$(this).parent().parent();
var dataString = 'id10='+ id;
if(confirm("Sure you want to delete this update? There is NO undo!"))
{
	$.ajax({
type: "POST",
url: "delete_ajax.php",
data: dataString,
cache: false,
success: function(e)
{
b.hide();
e.stopImmediatePropagation();
}
		   });
	return false;
}
});
$(".delete8").live('click',function()
{

var id = $(this).attr('id');
var dataString = 'id='+ id;
if(confirm("Sure you want to delete this update? There is NO undo!"))
{
	$.ajax({
type: "POST",
url: "delete_ajax.php",
data: dataString,
cache: false,
success: function(e)
{
e.stopImmediatePropagation();
}
		   });
	return false;
}
});
$(".ptexttty").live('click',function()
		{
			
		var ID=$(this).attr('id');

		$("#oneee1_"+ID).hide();
		$("#oneee14_"+ID).hide();
		$("#oneee141_"+ID).hide();
		$("#oneee142_"+ID).hide();
		$("#oneee143_"+ID).hide();
                $("#oneee144_"+ID).hide();
               $("#oneee145_"+ID).hide();
		$("#oneee148_"+ID).hide();
		
		$("#oneee1_input_"+ID).show();
		$("#oneee14_input_"+ID).show();
		$("#oneee141_input_"+ID).show();
		$("#oneee142_input_"+ID).show();
		$("#oneee143_input_"+ID).show();
               $("#oneee144_input_"+ID).show();
                $("#oneee145_input_"+ID).show();
		$("#oneee149_input_"+ID).show();
		})
		$(".editttt_tr").live('change',function(e)
		{
			//alert("getting3");
		var ID=$(this).attr('id');


		var oneee_val=$("#oneee1_input_"+ID).val();
		var oneee4_val=$("#oneee14_input_"+ID).val();
		var oneee41_val=$("#oneee141_input_"+ID).val();
		var oneee42_val=$("#oneee142_input_"+ID).val();
		var oneee43_val=$("#oneee143_input_"+ID).val();
                var oneee44_val=$("#oneee144_input_"+ID).val();
                 var oneee45_val=$("#oneee145_input_"+ID).val();
		$("#oneee149_input_"+ID).hide();
		$("#oneee148_"+ID).show();

		var dataString= 'idd1='+ ID +'&fn='+oneee_val+'&ln='+oneee4_val+'&em='+oneee41_val+'&mo='+oneee42_val+'&dev='+oneee43_val+'&loc='+oneee44_val+'&bra='+oneee45_val;

		if(oneee_val.length>0)
		{

		$.ajax({
		type: "POST",
		url: "live_edit_ajax.php",
		data: dataString,
		cache: false,
		success: function(e)
		{
		$("#oneee1_"+ID).html(oneee_val);
		$("#oneee14_"+ID).html(oneee4_val);
		$("#oneee141_"+ID).html(oneee41_val);
		$("#oneee142_"+ID).html(oneee42_val);
		$("#oneee143_"+ID).html(oneee43_val);
                 $("#oneee144_"+ID).html(oneee44_val);
                  $("#oneee145_"+ID).html(oneee45_val);
		$("#oneee_"+ID).html(oneee_val);
		$("#oneee4_"+ID).html(oneee4_val);
		$("#oneee41_"+ID).html(oneee41_val);
		$("#oneee42_"+ID).html(oneee42_val);
		$("#oneee43_"+ID).html(oneee43_val);
		$("#oneee_input_"+ID).val(oneee_val);
		$("#oneee4_input_"+ID).val(oneee4_val);
		$("#oneee41_input_"+ID).val(oneee41_val);
		$("#oneee42_input_"+ID).val(oneee42_val);
		$("#oneee43_input_"+ID).val(oneee43_val);
		e.stopImmediatePropagation();

		}
		});
		}

		else
		{
		alert('Enter something.');
		}
		

		});
$(".editboxxxy").live("mouseup",function(e)
		{
		e.stopImmediatePropagation();
		});

$(document).mouseup(function()
		{
			$(".editboxxxy1").hide();
		$(".editboxxxy").hide();
		$(".textttt").show();
		$(".editttt_tr").show();
		});


$(".texttty").live('click',function()
		{
			
alert("getting");
		var ID=$(this).attr('id');

		$("#oneee_"+ID).hide();
		$("#oneee4_"+ID).hide();
		$("#oneee41_"+ID).hide();
		$("#oneee42_"+ID).hide();
		$("#oneee43_"+ID).hide();
                $("#oneee44_"+ID).hide();
                $("#oneee45_"+ID).hide();
		$("#oneee48_"+ID).hide();

		$("#oneee_input_"+ID).show();
		$("#oneee4_input_"+ID).show();
		$("#oneee41_input_"+ID).show();
		$("#oneee42_input_"+ID).show();
		$("#oneee43_input_"+ID).show();
               $("#oneee44_input_"+ID).show();
                   $("#oneee45_input_"+ID).show();
		$("#oneee49_input_"+ID).show();
		})
		$(".edittt_tr").live('change',function(e)
		{
			
		var ID=$(this).attr('id');


		var oneee_val=$("#oneee_input_"+ID).val();
alert(oneee_val);
		var oneee4_val=$("#oneee4_input_"+ID).val();
alert(oneee4_val);
		var oneee41_val=$("#oneee41_input_"+ID).val();
		var oneee42_val=$("#oneee42_input_"+ID).val();
		var oneee43_val=$("#oneee43_input_"+ID).val();
               var oneee44_val=$("#oneee44_input_"+ID).val();
                var oneee45_val=$("#oneee45_input_"+ID).val();
		$("#oneee49_input_"+ID).hide();
		$("#oneee48_"+ID).show();
		
		var dataString= 'idd1='+ ID +'&fn='+oneee_val+'&ln='+oneee4_val+'&em='+oneee41_val+'&mo='+oneee42_val+'&dev='+oneee43_val+'&loc='+oneee44_val+'&bra='+oneee45_val;

		if(oneee_val.length>0)
		{
	
		$.ajax({
		type: "POST",
		url: "live_edit_ajax.php",
		data: dataString,
		cache: false,
		success: function(e)
		{
		$("#oneee_"+ID).html(oneee_val);
		$("#oneee4_"+ID).html(oneee4_val);
		$("#oneee41_"+ID).html(oneee41_val);
		$("#oneee42_"+ID).html(oneee42_val);
		$("#oneee43_"+ID).html(oneee43_val);
	        	$("#oneee44_"+ID).html(oneee44_val);  
                      $("#oneee45_"+ID).html(oneee45_val);  
		$("#hidd").html(total);
		e.stopImmediatePropagation();

		}
		});
		
		}

		else
		{
		alert('Enter something.');
		}
		


		});

$(".editboxxx").live("mouseup",function(e)
		{
		e.stopImmediatePropagation();
		});

$(document).mouseup(function()
		{
			$(".editboxxx1").hide();
		$(".editboxxx").hide();
		$(".price").hide();
		$(".texttt").show();
		$(".edittt_tr").show();
		});
		// Edit input box click action

$(".editt_tr").live('click',function()
{
var ID=$(this).attr('id');

$("#seventeen_"+ID).hide();
$("#eighteen_"+ID).hide();
$("#nineteen_"+ID).hide();
$("#twenty_"+ID).hide();
$("#tw_"+ID).hide();
$("#twone_"+ID).hide();
$("#twtwo_"+ID).hide();
$("#twthree_"+ID).hide();
$("#twfour_"+ID).hide();


$("#seventeen_input_"+ID).show();
$("#eighteen_input_"+ID).show();
$("#nineteen_input_"+ID).show();
$("#twenty_input_"+ID).show();
$("#tw_input_"+ID).show();
$("#twone_input_"+ID).show();
$("#twtwo_input_"+ID).show();
$("#twthree_input_"+ID).show();
$("#twfour_input_"+ID).show();

}).live('change',function(e)
{
var ID=$(this).attr('id');

var seventeen_val=$("#seventeen_input_"+ID).val();
var eighteen_val=$("#eighteen_input_"+ID).val();
var nineteen_val=$("#nineteen_input_"+ID).val();
var twenty_val=$("#twenty_input_"+ID).val();
var tw_val=$("#tw_input_"+ID).val();
var twone_val=$("#twone_input_"+ID).val();
var twtwo_val=$("#twtwo_input_"+ID).val();
var twthree_val=$("#twthree_input_"+ID).val();
var twfour_val=$("#twfour_input_"+ID).val();



var dataString= 'idd='+ ID +'&on='+seventeen_val+'&cou='+eighteen_val+'&city='+nineteen_val+'&noe='+twenty_val+'&add1='+tw_val+'&sta='+twone_val+'&ts='+twtwo_val+'&add2='+twthree_val+'&zip='+twfour_val;

if(seventeen_val.length>0)
{

$.ajax({
type: "POST",
url: "live_edit_ajax.php",
data: dataString,
cache: false,
success: function(e)
{

$("#seventeen_"+ID).html(seventeen_val);
$("#eighteen_"+ID).html(eighteen_val);
$("#nineteen_"+ID).html(nineteen_val);
$("#twenty_"+ID).html(twenty_val);
$("#tw_"+ID).html(tw_val);
$("#twone_"+ID).html(twone_val);
$("#twtwo_"+ID).html(twtwo_val);
$("#twthree_"+ID).html(twthree_val);
$("#twfour_"+ID).html(twfour_val);

e.stopImmediatePropagation();

}
});
}

else
{
alert('Enter something.');
}

});

// Edit input box click action
$(".editboxx").live("mouseup",function(e)
{
e.stopImmediatePropagation();
});

// Outside click action
$(document).mouseup(function()
{

$(".editboxx").hide();
$(".textt").show();
});

	$(".edit_tr").live('click',function()
{

var ID=$(this).attr('id');

$("#one_"+ID).hide();
$("#two_"+ID).hide();





$("#one_input_"+ID).show();
$("#two_input_"+ID).show();



}).live('change',function(e)
{
alert("getting");
var ID=$(this).attr('id');

var one_val=$("#one_input_"+ID).val();
var two_val=$("#two_input_"+ID).val();



var dataString = 'id22='+ ID +'&loc='+one_val+'&code='+two_val;


if(one_val.length>0)
{

$.ajax({
type: "POST",
url: "live_edit_ajax.php",
data: dataString,
cache: false,
success: function(e)
{
$("#one_"+ID).html(one_val);
$("#two_"+ID).html(two_val);



e.stopImmediatePropagation();

}
});
}

else
{
alert('Enter something.');
}

});

// Edit input box click action
$(".editbox").live("mouseup",function(e)
{
e.stopImmediatePropagation();
});

// Outside click action
$(document).mouseup(function()
{

$(".editbox").hide();
$(".text").show();
});
		
			
//Pagination			
function loading_show(){
$('#loading').html("").fadeIn('fast');
}
function loading_hide(){
$('#loading').fadeOut('fast');
}                
function loadData(page){
loading_show();                    
$.ajax
({
type: "POST",
url: "load_data.php",
data: "page="+page,
success: function(msg)
{
$("#container").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#container").html(msg);
});
}
});
}
loadData(1);  // For first time page load default results
$('#container .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadData(page);
});           
$('#go_btn').live('click',function(){
var page = parseInt($('.goto').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadData(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.goto').val("").focus();
return false;
}
});
function loadingg_show(){
$('#loadingg').html("").fadeIn('fast');
}
function loadingg_hide(){
$('#loadingg').fadeOut('fast');
}                
function loadDataaa4(page){
loading_show();                    
$.ajax
({
type: "POST",
url: "loaddataa5.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr4").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr4").html(msg);
});
}
});
}
loadDataaa4(1);  // For first time page load default results
$('#containerrr4 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa4(page);
});           
$('#go_btnnn4').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa4(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo4').val("").focus();
return false;
}
});


function loadDataaa5(page){                   
$.ajax
({
type: "POST",
url: "loaddataa6.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr5").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr5").html(msg);
});
}
});
}
loadDataaa5(1);  // For first time page load default results
$('#containerrr5 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa5(page);
});           
$('#go_btnnn5').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa5(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});
function loadDataaa6(page){                   
$.ajax
({
type: "POST",
url: "loaddataa7.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr6").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr6").html(msg);
});
}
});
}
loadDataaa6(1);  // For first time page load default results
$('#containerrr6 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa6(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa6(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});
function loadDataaa7(page){                   
$.ajax
({
type: "POST",
url: "loaddataa8.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr7").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr7").html(msg);
});
}
});
}
loadDataaa7(1);  // For first time page load default results
$('#containerrr7 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa7(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa7(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});

function loadDataaa8(page){                   
$.ajax
({
type: "POST",
url: "loaddataa9.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr8").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr8").html(msg);
});
}
});
}
loadDataaa8(1);  // For first time page load default results
$('#containerrr8 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa8(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa8(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});
function loadDataaa9(page){                   
$.ajax
({
type: "POST",
url: "loaddataa10.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr9").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr9").html(msg);
});
}
});
}
loadDataaa9(1);  // For first time page load default results
$('#containerrr9 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa9(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa9(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});
function loadDataaa10(page){                   
$.ajax
({
type: "POST",
url: "loaddataa11.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr10").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr10").html(msg);
});
}
});
}
loadDataaa10(1);  // For first time page load default results
$('#containerrr10 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa10(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa10(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});

function loadDataaa11(page){                   
$.ajax
({
type: "POST",
url: "loaddataa12.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr11").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr11").html(msg);
});
}
});
}
loadDataaa11(1);  // For first time page load default results
$('#containerrr11 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa11(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa11(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}

});
function loadDataaa12(page){                   
$.ajax
({
type: "POST",
url: "loaddataa13.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr12").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr12").html(msg);
});
}
});
}
loadDataaa12(1);  // For first time page load default results
$('#containerrr12 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa12(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa12(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});
function loadDataaa13(page){                   
$.ajax
({
type: "POST",
url: "loaddataa14.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr13").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr13").html(msg);
});
}
});
}
loadDataaa13(1);  // For first time page load default results
$('#containerrr13 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa13(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa13(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});
function loadDataaa14(page){                   
$.ajax
({
type: "POST",
url: "loaddataa15.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr14").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr14").html(msg);
});
}
});
}
loadDataaa14(1);  // For first time page load default results
$('#containerrr14 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa14(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa14(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});
function loadDataaa15(page){                   
$.ajax
({
type: "POST",
url: "loaddataa16.php",
data: "page="+page,
success: function(msg)
{
$("#containerrr15").ajaxComplete(function(event, request, settings)
{
loading_hide();
$("#containerrr15").html(msg);
});
}
});
}
loadDataaa15(1);  // For first time page load default results
$('#containerrr15 .pagination li.active').live('click',function(){
var page = $(this).attr('p');
loadDataaa15(page);
});           
$('#go_btnnn6').live('click',function(){
var page = parseInt($('.gotooo4').val());
var no_of_pages = parseInt($('.total').attr('a'));
if(page != 0 && page <= no_of_pages){
loadDataaa15(page);
}else{
alert('Enter a PAGE between 1 and '+no_of_pages);
$('.gotooo5').val("").focus();
return false;
}
});
});

