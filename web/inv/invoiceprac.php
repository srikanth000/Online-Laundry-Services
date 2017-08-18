<?php
session_start();
include("../config.php");
$sql=mysql_query("select * from invoice_list where invoice_idd='".$_GET['id']."'");
$row=mysql_fetch_array($sql);
$w_id=$row['wash_id'];
$cus_id=$row['cus_id'];
$inv=$row['invoicenumber'];
$sql1=mysql_query("select * from custumers where cus_id='$cus_id'");
$row1=mysql_fetch_array($sql1);
if(isset($_POST['submit']))
{
extract($_POST);

//mysql_query("insert into custumers(first_name,email,mobile,invno,user_id,assignto)values('$cn','$email','$mobile','$inv','".$_SESSION['user']."','$ass')");
//$cus_id=mysql_insert_id();
for($i=0;$i<count($idd);$i++)
{
//echo $idd[$i];
mysql_query("update custumersmat set material='$itemName[$i]',quan='$quantity[$i]',total='$total[$i]',inv_id='$invoice',price='$price[$i]' where cusm_id='$idd[$i]'");

}
$datee= date('Y-m-d', strtotime($datee));
mysql_query("update custumers set first_name='$cn',email='$email',mobile='$mobile',address='$address' where cus_id='$cus'");
mysql_query("update invoice_list set total_amount='$tot',paid_amount='$ap',amount_due='$ad',delivery_date='$datee',wash_id='$ass' where invoicenumber='$invoice'");
//mysql_query("insert into notes(user_id,description,cus_id,insertdate)values('".$_SESSION['user']."','invoice has created please confirm','$cus_id',now())");
header("location:../printinvoice.php?id=$cus"); 
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<head>
<title>Welcome to FabRinz...</title>
<link rel="stylesheet" href="../css/global.css">
    <link href="css/jquery-ui.min.css" rel="stylesheet">
    
<script type="text/javascript">
function validation(){
 var ok = true;

    var form = document.forms.form;

    var fullname = form.clientCompanyName.value;
    if (fullname == null || fullname == "") {
	//document.getElementById("clientCompanyName").className = "place";
     document.getElementById('clientCompanyName').placeholder="Enter Custumer Name";
     document.getElementById('clientCompanyName').focus();
        ok = false;
    }else{
	//document.getElementById("clientCompanyName").className = "";
	}
    var invoiceDate = form.datetimepicker3.value;
    if (invoiceDate == null || invoiceDate == "") {
	//document.getElementById("invoiceDate").className = "place";
     document.getElementById('datetimepicker3').placeholder="Select Invoice Date";
     document.getElementById('datetimepicker3').focus();
        ok = false;
    }else{
	//document.getElementById("invoiceDate").className = "";
	}
    var clientAddress = form.clientAddress.value;
    if (clientAddress == null || invoiceDate == "") {
	//document.getElementById("clientAddress").className = "place";
     document.getElementById('clientAddress').placeholder="Enter Address";
     document.getElementById('clientAddress').focus();
        ok = false;
    }else{
	//document.getElementById("clientAddress").className = "";
	}
   var mobile=document.getElementById('mobile').value;
   var mobile_pattern=/^[7-9][0-9]{9}$/i;
	if(mobile_pattern.test(mobile)){
	}else{
		document.getElementById('clientAddress').placeholder="Enter Email";
		document.getElementById('mobile').focus();
		return false;
	}
	
	var email=document.getElementById('email').value;
   var email_pattern=/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
	if(email_pattern.test(email)){
	}else{
		document.getElementById('email_pattern').placeholder="Enter Email";
		document.getElementById('email_pattern').focus();
		return false;
	}
	
	
//	var pattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
	
	
    
	if(document.getElementById('ass').selectedIndex == 0){
    	var e = document.getElementById("ass");
       	
    	e.options[e.selectedIndex].text="Invalid Entry";
    	//document.getElementById("demostate").className = "selectcolor";
        document.getElementById('ass').focus();
        ok=false;        

    }
	
	
	

	return ok;
}
</script>
<!--<script type="text/javascript" src="jquery/min.js"></script>-->
<link rel="stylesheet" href="css/jquery.datetimepicker.css">

</head>
  <body>
  
	<?php include('../includes/storeheader.php'); ?>
<div id="nav">
  <?php include('storeslistt.php');?>
</div>
<div id="main">
<form action="invoiceprac.php" METHOD="post" id="form" name="form" onsubmit="return validation();">
<input type="hidden" name="invoice" value="<?php echo $row['invoicenumber'];?>"/>
<input type="hidden" name="cus" value="<?php echo $row1['cus_id'];?>"/>
<table width="100%" border="1px">
  <tr>
    <td><input type="text" id="clientCompanyName" placeholder="Custumer Name" name="cn" value="<?php echo $row1['first_name'];?>">
    </td>
    <td><input type="text" id="datetimepicker3" placeholder="Delivery Date" name="datee" value="<?php echo $row['delivery_date'];?>">
    </td>
  </tr>
  <tr>
    <td><textarea id="clientAddress" placeholder="Your Address" name="address" ><?php echo $row1['address'];?></textarea>
    </td>
    <td><input type="text"  id="mobile" placeholder="Mobile" name="mobile" value="<?php echo $row1['mobile'];?>">
    </td>
  </tr>
  <tr>
    <td><input type="email" id="email" placeholder="Email" name="email" value="<?php echo $row1['email'];?>">
    </td>
    <td><span id="demostate"><select name="ass" id="ass">
        <option>Select User</option>
        <?php $sql1=mysql_query("select * from users where status=2"); while($row1=mysql_fetch_array($sql1)){?>
        <option value="<?php echo $row1['user_id'];?>" <?php if($w_id==$row1['user_id']) echo "selected='selected'";?>><?php echo $row1['first_name'];?></option>
        <?php } ?>
      </select></span>
    </td>
  </tr>
</table>
<table id="add" border="1px" style="width:100%; margin-top:15px;" align="center">
  <tr class="trheads">
    <td><input id="check_all" type="checkbox"/></td>
    <td>Item Name</td>
    <td>Price</td>
    <td>Quantity</td>
    <td>Total</td>
  </tr>
<?php
$swer=mysql_query("select * from custumersmat where inv_id='".$inv."'");
while($reo=mysql_fetch_array($swer))
{
?>
  <tr>
                            
                            
                            
                            
    <td><input class="case" type="checkbox"/></td>
    <td><input type="text" data-type="productName" name="itemName[]" id="itemName_1" class="form-control autocomplete_txt" autocomplete="off" value="<?php echo $reo['material'];?>"><input type="hidden" name="idd[]" value="<?php echo $reo['cusm_id'];?>"/></td>
    <td><input type="number" name="price[]" id="price_1" autocomplete="off" class="form-control changesNo" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;"  value="<?php echo $reo['price'];?>"></td>
    <td><input type="number" name="quantity[]" id="quantity_1" autocomplete="off" class="form-control changesNo" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" value="<?php echo $reo['quan'];?>"></td>
    <td><input type="number" name="total[]" id="total_1" class="form-control totalLinePrice" autocomplete="off" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" value="<?php echo $reo['total'];?>"></td>
  </tr>
<?php } ?>
  </tbody>
  
</table>
<?php
$sql=mysql_query("select * from invoice_list where invoice_idd='".$_GET['id']."'");
$row=mysql_fetch_array($sql);
?>
  <table border="1px" style="margin-top:20px; width:100%;">
    <tr class="trheads">
      <td colspan="2" align="center">Subtotal</td>
      <td colspan="2" align="center">Total</td>
      <td colspan="2" align="center">Amount Paid</td>
      <td colspan="2" align="center">Amount Due</td>
    </tr>
    <tr>
      <td>INR</td>
      <td><input type="text" class="form-control" id="subTotal" placeholder="Subtotal" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" value="<?php echo $row['total_amount'];?>">
      </td>
      <td>INR</td>
      <td><input type="number" class="form-control" id="totalAftertax" placeholder="Total" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="tot" value="<?php echo $row['total_amount'];?>">
      </td>
      <td>INR</td>
      <td><input type="number" class="form-control" id="amountPaid" placeholder="Amount Paid" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="ap" value="<?php echo $row['paid_amount'];?>">
      </td>
      <td>INR</td>
      <td><input type="number" id="amountDue" class="form-control amountDue" placeholder="Amount Due" onKeyPress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="ad" value="<?php echo $row['amount_due'];?>">
      </td>
    </tr>
    <tr>
      <td>Notes: </td>
      <td colspan="7"><textarea class="form-control" rows='5' id="notes" placeholder="Your Notes"></textarea>
      </td>
    </tr>
    <tr>
      <td style="border-right:hidden;"><input type="submit" name="submit" value="Submit"/>
      </td>
    </tr>
  </table>
</form>
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/auto.js"></script>
<script src="js/jquery.datetimepicker.js"></script>
<script> 

/*
window.onerror = function(errorMsg) {
$('#console').html($('#console').html()+'<br>'+errorMsg)
}*/
$('#datetimepicker').datetimepicker({
dayOfWeekStart : 1,
lang:'en',
disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
startDate:	'2015/04/05'
});
$('#datetimepicker').datetimepicker({value:'2015/04/15',step:05});

$('.some_class').datetimepicker();

$('#default_datetimepicker').datetimepicker({
formatTime:'H:i',
formatDate:'d.m.Y',
defaultDate:'2015/04/05', // it's my birthday
defaultTime:'',
timepickerScrollbar:false
});

$('#datetimepicker10').datetimepicker({
step:5,
inline:true
});
$('#datetimepicker_mask').datetimepicker({
mask:'9999/19/39 29:59'
});

$('#datetimepicker1').datetimepicker({
datepicker:false,
format:'H:i',
step:5
});
$('#datetimepicker2').datetimepicker({
yearOffset:222,
lang:'ch',
timepicker:false,
format:'d/m/Y',
formatDate:'Y/m/d',
minDate:'-1970-01-02', // yesterday is minimum date
maxDate:'+1970-01-02' // and tommorow is maximum date calendar
});
$('#datetimepicker3').datetimepicker({
inline:false,
timepicker:false,
format:'d-m-Y',
formatDate:'d/m/Y',
minDate:'-1970-01-02', // yesterday is minimum date
//maxDate:'+1970-01-02' // and tommorow is maximum date calendar
});
$('#datetimepicker4').datetimepicker();
$('#open').click(function(){
$('#datetimepicker4').datetimepicker('show');
});
$('#close').click(function(){
$('#datetimepicker4').datetimepicker('hide');
});
$('#reset').click(function(){
$('#datetimepicker4').datetimepicker('reset');
});
$('#datetimepicker5').datetimepicker({
datepicker:false,
allowTimes:['12:00','13:00','15:00','17:00','17:05','17:20','19:00','20:00'],
step:5
});
$('#datetimepicker6').datetimepicker();
$('#destroy').click(function(){
if( $('#datetimepicker6').data('xdsoft_datetimepicker') ){
$('#datetimepicker6').datetimepicker('destroy');
this.value = 'create';
}else{
$('#datetimepicker6').datetimepicker();
this.value = 'destroy';
}
});
var logic = function( currentDateTime ){
if( currentDateTime.getDay()==6 ){
this.setOptions({
minTime:'11:00'
});
}else
this.setOptions({
minTime:'8:00'
});
};
$('#datetimepicker7').datetimepicker({
onChangeDateTime:logic,
onShow:logic
});
$('#datetimepicker8').datetimepicker({
onGenerate:function( ct ){
$(this).find('.xdsoft_date')
.toggleClass('xdsoft_disabled');
},
//minDate:'-1970/01/2',
//maxDate:'+1970/01/2',
//minDate:'-1970/01/01',
minDate: 0,
maxDate:'+1970/01/01',
timepicker:false,
format:'d-m-Y',
formatDate:'Y/m/d',
});
$('#datetimepicker9').datetimepicker({
onGenerate:function( ct ){
$(this).find('.xdsoft_date.xdsoft_weekend')
.addClass('xdsoft_disabled');
},
weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014'],
timepicker:false
});
var dateToDisable = new Date();
dateToDisable.setDate(dateToDisable.getDate() + 2);
$('#datetimepicker11').datetimepicker({
beforeShowDay: function(date) {
if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
return [false, ""]
}

return [true, ""];
}
});
$('#datetimepicker12').datetimepicker({
beforeShowDay: function(date) {
if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
return [true, "custom-date-style"];
}

return [true, ""];
}
});
$('#datetimepicker_dark').datetimepicker({theme:'dark'})


</script>
<?php include('../includes/footer.php'); ?>
