<?php
session_start();
include("../config.php");
$str="select ifnull(max(cus_id)+1,0) as maxval from custumers";
$res=mysql_query($str);
$row1=mysql_fetch_assoc($res);
$str1="fabric-".$row1['maxval'];
$sql=mysql_query("select * from custumers where invno='".$_GET['id']."'");
$row=mysql_fetch_array($sql);
if(isset($_POST['submit']))
{
extract($_POST);

mysql_query("insert into notes(description,user_id,invno)values('$notes','".$_SESSION['user']."','$invv')");

header("location:invoice2.php?id=$invv");
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="jquery totalautocomplete invoice, jquery autocomplete invoice module, invoice using jqueryautocomplete, jquery invoice module  autocomplete, invoice using jquery autocomplete">
    <meta name="keywords" content="jquery autocomplete invoice, jquery autocomplete invoice module, invoice using jqueryautocomplete, jquery invoice module  autocomplete, invoice using jquery autocomplete">
    <meta name="author" content="muni">
    <link rel="icon" href="../../favicon.ico">

    <title>Invoice System Using jQuery Autocomplete</title>

    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700|Noto+Serif:400,700"> 
    <!-- Bootstrap core CSS -->
    <link href="css/jquery-ui.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/datepicker.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
     <link href="css/grid.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  
	<div id="header">
        
            <!-- Header. Status part -->
            <div id="header-status">
            <img src="img/logofr.png"/ id="logofr">
                <div class="container_12">
                    <div class="grid_8">
					&nbsp;
                    </div>
                    <div class="grid_4">
                        <a href="" id="logout">
                        Logout
                        </a>
                    </div>
                </div>
                <div style="clear:both;"></div>
            </div> <!-- End #header-status -->
            
            <!-- Header. Main part -->
            <div id="header-main">
                <div class="container_12">
                    <div class="grid_12">
                        <!--<div id="logo">
                            <ul id="nav">
                                <li id="current"><a href="">Dashboard</a></li>
                                <li><a href="">Articles</a></li>
                                <li><a href="">Files</a></li>
                                <li><a href="">Profile</a></li>
                                <li><a href="">Settings</a></li>
                            </ul>
                        </div>--><!-- End. #Logo -->
                    </div><!-- End. .grid_12-->
                    <div style="clear: both;"></div>
                </div><!-- End. .container_12 -->
            </div> <!-- End #header-main -->
            <div style="clear: both;"></div>
            <!-- Sub navigation -->
            <div id="subnav">
                <div class="container_12">
                    <div class="grid_12">
                        <ul>
                             <li><a href="../welcomewash.php">Dashboard</a></li>
                            <li><a href="../viewcustumers1.php">View Custumer</a></li>
                            <li><a href="../viewinvoices1.php">View Invoices</a></li>
                        </ul>
                        
                    </div><!-- End. .grid_12-->
                </div><!-- End. .container_12 -->
                <div style="clear: both;"></div>
            </div> <!-- End #subnav -->
        </div>

    <!-- Begin page content -->
    <div class="container content">
    	<div class='row'>
    		<div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
    			
    		</div>
    	</div>
        
      	<!--<h2>From,</h2>
    	<div class='row'>
      		<div class='col-xs-12 col-sm-4 col-md-4 col-lg-4'>
      			<div class="form-group">
					<input type="email" class="form-control" id="companyName" placeholder="Company Name">
				</div>
				<div class="form-group">
					<textarea class="form-control" rows='3' id="companyAddress" placeholder="Your Address"></textarea>
				</div>
      		</div>
      	</div>-->
<form action="invoice2.php" METHOD="post">
      	<div class='row'>
      		<div class='col-xs-12 col-sm-4 col-md-4 col-lg-4'>
      			<div class="form-group">
					<input type="text" class="form-control" id="clientCompanyName" placeholder="Custumer Name" name="cn" disabled value="<?php echo $row['first_name'];?>"  >
				</div>
				<div class="form-group">
					<textarea class="form-control" rows='3' id="clientAddress" placeholder="Your Address" name="address" disabled><?php echo $row['address'];?></textarea>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="clientCompanyName" placeholder="Email" name="email" disabled value="<?php echo $row['email'];?>">
				</div>

      		</div>
      		<div class='col-xs-12 col-sm-offset-3 col-md-offset-3 col-lg-offset-3 col-sm-4 col-md-4 col-lg-4'>
      			<div class="form-group">
					<input type="text" class="form-control" id="invoiceNo" placeholder="Invoice No" name="inv" disabled value="<?php echo $row['invno'];?>">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="invoiceDate" placeholder="Invoice Date" name="date" disabled>
				</div>
				<div class="form-group">
					<input type="text"  placeholder="Mobile" name="mobile" disabled value="<?php echo $row['mobile'];?>"> 
				</div>
<div class="form-group">
<select name="ass" disabled id="ass"><option>Select User</option><?php $sqll=mysql_query("select * from users where status=2"); while($roww=mysql_fetch_array($sqll)){?><option value="<?php echo $roww['user_id'];?>" <?php if($row['assignto']==$roww['user_id']) echo "selected='selected'";?>><?php echo $row['first_name'];?></option><?php } ?></select>
      		</div>
      	</div>
        </div>
      	<h2>&nbsp;</h2>
      	<div class='row'>
      		<div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
      			<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th width="2%"><input id="check_all" class="formcontrol" type="checkbox"/></th>
							<th width="15%">Item No</th>
							<th width="38%">Item Name</th>
							<th width="15%">Price</th>
							<th width="15%">Quantity</th>
							<th width="15%">Total</th>
						</tr>
					</thead>
					<tbody>
<?php
$swer=mysql_query("select * from custumersmat where inv_id='".$_GET['id']."'");
while($reo=mysql_fetch_array($swer))
{
?>
						<tr>
						<td><input class="case" type="checkbox"/></td>
							<td><input type="text" data-type="productCode" name="itemNo[]" disabled id="itemNo_1" class="form-control autocomplete_txt" autocomplete="off" value="<?php echo $reo['cusm_id'];?>"></td>
							
							<td><input type="text" data-type="productName" name="itemName[]" disabled id="itemName_1" class="form-control autocomplete_txt" autocomplete="off" value="<?php echo $reo['material'];?>"></td>
							<td><input type="number" name="price[]" disabled id="price_1" class="form-control changesNo" autocomplete="off" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" value="<?php echo $reo['price'];?>"></td>
							<td><input type="number" name="quantity[]" disabled id="quantity_1" class="form-control changesNo" autocomplete="off" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" value="<?php echo $reo['quan'];?>"></td>
							<td><input type="number" name="total[]" disabled id="total_1" class="form-control totalLinePrice" autocomplete="off" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" value="<?php echo $reo['total'];?>"></td>
						</tr>
<?php } ?>
					</tbody>
				</table>
      		</div>
      	</div>
      
      		<div class='col-xs-12 col-sm-offset-4 col-md-offset-4 col-lg-offset-4 col-sm-5 col-md-5 col-lg-5'>
				<form class="form-inline">
					<div class="form-group">
						<label>Subtotal: &nbsp;</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="number" disabled class="form-control" id="subTotal" placeholder="Subtotal" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" value="<?php echo $row['totalprice'];?>">
						</div>
					</div>
					
					<div class="form-group">
						<label>Total: &nbsp;</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="number"  class="form-control" id="totalAftertax" placeholder="Total" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="tot" disabled value="<?php echo $row['totalprice'];?>">
						</div>
					</div>
					<div class="form-group">
						<label>Amount Paid: &nbsp;</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="number" class="form-control" id="amountPaid" placeholder="Amount Paid" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="ap" disabled value="<?php echo $row['amount_paid'];?>">
						</div>
					</div>
					<div class="form-group">
						<label>Amount Due: &nbsp;</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="number" class="form-control amountDue" id="amountDue" placeholder="Amount Due" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="ad" disabled value="<?php echo $row['due'];?>">
						</div>
					</div>
             </div>
             
                </div>
			    <h2>Notes: </h2>
      	<div class='row'>
      		<div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
      			<div class="form-group">
					<textarea class="form-control" rows='5' id="notes" placeholder="Your Notes" name="notes"><?php $rret=mysql_query("select * from notes where invno='".$_GET['id']."'"); while($rretrow=mysql_fetch_array($rret)){  echo $rretrow['description']; } ?></textarea>
				</div>
      		</div>
      	</div>
<input type="hidden" name="invv" value="<?php echo $_GET['id'];?>"/>
	<div><input type="submit" name="submit" value="submit"/></div>
 </form>
 
</div>
	<h2>&nbsp;</h2>
    <footer class="footer">
      <div class="container">
        <p class="text-muted text-center" style="color:#fff"></p>
      </div>
    </footer>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/auto.js"></script>
  </body>
</html>




