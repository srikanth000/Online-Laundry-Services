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
<form action="index.php" METHOD="post">
      	<div class='row'>
      		<div class='col-xs-12 col-sm-4 col-md-4 col-lg-4'>
      			<div class="form-group">
					<input type="text" class="form-control" id="clientCompanyName" placeholder="Custumer Name" name="cn" >
				</div>
				<div class="form-group">
					<textarea class="form-control" rows='3' id="clientAddress" placeholder="Your Address" name="address"></textarea>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="clientCompanyName" placeholder="Email" name="email">
				</div>

      		</div>
      		<div class='col-xs-12 col-sm-offset-3 col-md-offset-3 col-lg-offset-3 col-sm-4 col-md-4 col-lg-4'>
      			<div class="form-group">
					<input type="text" class="form-control" id="invoiceNo" placeholder="Invoice No" name="inv" value="<?php echo $str1;?>">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="invoiceDate" placeholder="Invoice Date" name="date">
				</div>
				<div class="form-group">
					<input type="text" class="form-control amountDue"  placeholder="Mobile" name="mobile"> 
				</div>
<div class="form-group">
<select name="ass" id="ass"><option>Select User</option><option value="<?php echo $row['user_id'];?>"></option>></select>
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
						<tr>
						<td><input class="case" type="checkbox"/></td>
							<td><input type="text" data-type="productCode" name="itemNo[]" id="itemNo_1" class="form-control autocomplete_txt" autocomplete="off"></td>
							
							<td><input type="text" data-type="productName" name="itemName[]" id="itemName_1" class="form-control autocomplete_txt" autocomplete="off"></td>
							<td><input type="number" name="price[]" id="price_1" class="form-control changesNo" autocomplete="off" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;"></td>
							<td><input type="number" name="quantity[]" id="quantity_1" class="form-control changesNo" autocomplete="off" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;"></td>
							<td><input type="number" name="total[]" id="total_1" class="form-control totalLinePrice" autocomplete="off" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;"></td>
						</tr>
					</tbody>
				</table>
      		</div>
      	</div>
      	<div class='row'>
      		<div class='col-xs-12 col-sm-3 col-md-3 col-lg-3'>
      			<button class="btn btn-danger delete" type="button">- Delete</button>
      			<button class="btn btn-success addmore" type="button">+ Add More</button>
      		</div>
      		<div class='col-xs-12 col-sm-offset-4 col-md-offset-4 col-lg-offset-4 col-sm-5 col-md-5 col-lg-5'>
				<form class="form-inline">
					<div class="form-group">
						<label>Subtotal: &nbsp;</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="number" class="form-control" id="subTotal" placeholder="Subtotal" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;">
						</div>
					</div>
					
					<div class="form-group">
						<label>Total: &nbsp;</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="number" class="form-control" id="totalAftertax" placeholder="Total" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="tot">
						</div>
					</div>
					<div class="form-group">
						<label>Amount Paid: &nbsp;</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="number" class="form-control" id="amountPaid" placeholder="Amount Paid" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="ap">
						</div>
					</div>
					<div class="form-group">
						<label>Amount Due: &nbsp;</label>
						<div class="input-group">
							<div class="input-group-addon">$</div>
							<input type="number" class="form-control amountDue" id="amountDue" placeholder="Amount Due" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" name="ad">
						</div>
					</div>
				
			</div>
      	</div>
      	<h2>Notes: </h2>
      	<div class='row'>
      		<div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
      			<div class="form-group">
					<textarea class="form-control" rows='5' id="notes" placeholder="Your Notes"></textarea>
				</div>
      		</div>
      	</div>		
    </div>
<div><input type="submit" name="submit" value="submit"/></div>
</form>
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
    <script src="js/a`uto.js"></script>
  </body>
</html>




