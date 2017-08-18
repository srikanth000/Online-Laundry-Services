<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<!doctype html>

<html class="no-js" lang="en">
<!--<![endif]-->
<!-- the "no-js" class is for Modernizr. -->
<head>
<meta charset="utf-8">
<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->

<!-- Important stuff for SEO, don't neglect. (And don't dupicate values across your site!) -->
<title> Terms & Conditions | Fabrinz- Laundry Services</title>
<meta name="description" content="Fabrinz- On-Demand Laundry & Dry Cleaning Services."/>
<meta name="keywords" content="laundry, dry cleaning, washing, ironing, laundry mobile app, laundry india, fabrinz, doorstep laundry, online laundry" />
       <!-- Don't forget to set your site up: http://google.com/webmasters -->
<meta name="google-site-verification" content="" /> 
<!-- Who owns the content of this site? -->

<!--  Mobile Viewport
	http://j.mp/mobileviewport & http://davidbcalhoun.com/2010/viewport-metatag
	device-width : Occupy full width of the screen in its current orientation
	initial-scale = 1.0 retains dimensions instead of zooming out if page height > device height
	maximum-scale = 1.0 retains dimensions instead of zooming in if page width < device width (wrong for most sites)
	-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
<link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="assets/css/jquery.datetimepicker.css"/>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/schedule-validation.js"></script>
<!-- Google Analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-57639059-1', 'auto');
  ga('send', 'pageview');

</script>
<script>

            window.fbAsyncInit = function() {
                FB.init({
                    appId:'905243722836879',//fabrinzapp
                    cookie: true, // enable cookies to allow the server to access the session
                    xfbml: true, // parse social plugins on this page
                    version: 'v2.1' // use version 2.1
                });


                FB.getLoginStatus(function(response) {
                //    statusChangeCallback(response);
                });

            };

            // Load the SDK asynchronously
            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));



            // This is called with the results from from FB.getLoginStatus().
            function statusChangeCallback(response) {
                console.log('statusChangeCallback');
                console.log(response);
                if (response.status === 'connected') {
                    console.log('Welcome!  Fetching your information.... ');
                    FB.api('/me', function(response) {
                        //alert(JSON.stringify(response));
                        $("#firstname").val(response.first_name);
                        $("#lastname").val(response.last_name);
                        $("#email").val(response.email);
                       // $("fabrinz_login").submit();
                       $("#t").val("facebook");
                       document.getElementById("fabrinz_login").submit();
                        // form.submit();
                        
                      //  $("#loginmsg").html("welcome " + response.name+"(<a href='javascript:fbLogoutUser()'>Logout</a>)");
                    });
                } else if (response.status === 'not_authorized') {
                    //document.getElementById('status').innerHTML = 'Please log ' +   'into this app.';
                } else {
                    //document.getElementById('status').innerHTML = 'Please log ' +   'into Facebook.';
                }
            }

            function checkFacebookLoginState() {
                FB.login(function(response) {
                    FB.getLoginStatus(function(response) {
                        statusChangeCallback(response);
                    });
                }, {scope: 'public_profile,email'});
            }

            function fbLogoutUser() {
                FB.getLoginStatus(function(response) {
                    if (response && response.status === 'connected') {
                        FB.logout(function(response) {
                            $("#firstname").val("");
                            $("#lastname").val("");
                            $("#email").val("");
                            $("#t").val("Direct");
                           
                        });
                    }
                });
            }
        </script>
<style>
.bspace {
}
.auto {
	float: none;
	margin: auto;
}
</style>
<!--Start of Zopim Live Chat Script-->
        <script type="text/javascript">
            window.$zopim || (function(d, s) {
                var z = $zopim = function(c) {
                    z._.push(c)
                }, $ = z.s =
                        d.createElement(s), e = d.getElementsByTagName(s)[0];
                z.set = function(o) {
                    z.set.
                            _.push(o)
                };
                z._ = [];
                z.set._ = [];
                $.async = !0;
                $.setAttribute("charset", "utf-8");
                $.src = "//v2.zopim.com/?34pFg37IxoUIqgTDaof9FiHRaJeO9M2D";
                z.t = +new Date;
                $.
                        type = "text/javascript";
                e.parentNode.insertBefore($, e)
            })(document, "script");
        </script>
        <!--End of Zopim Live Chat Script-->
       <!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','//connect.facebook.net/en_US/fbevents.js');

fbq('init', '1619496634975726');
fbq('track', "PageView");</script>
</head>

<body>
<div class="wrapper">
  <!--  Start Of Header -->
  <%@include file="headerweb.jsp" %>
  <!--  End Of Header --> 
  <div>
      <%@include file="nevbarweb.jsp" %>
    <div class="clr1 cspace tc">
      <h1 class='rmar'>Schedule a Service</h1>
      <div class="small">Fabrinz Services at your doorstep</div>
      <span class='dwnarr'><a href="fabrinz_custm_login.jsp"><img src='assets/images/png/dwnarro.png' /></a></span> </div>
  </div>
  <section class="clearfix"> 
    <!-- BANNER -->
    <div class="banner clearfix"> 
      
      <!-- mp-menu -->
      <%@include file="mpMenu.jsp" %>
      <!-- /mp-menu -->
      
      <div class="scroller" ><!-- this is for emulating position fixed of the nav -->
        <div class="scroller-inner"> 
          <!-- Top Navigation -->
          
          <div class="content clearfix">
            <div class="clearfix">
              <p><a href="#" id="primary-menu-toggle" class="menu-toggle"></a></p>
            </div>
            <div class="grbg">
              <h1 class="rmar">Terms of Conditions</h1>
            </div>
          </div>
        </div>
        <!-- /scroller-inner --> 
      </div>
      <!-- /scroller --> 
      
    </div>
    <!-- /pusher -->
    
    <div class="bspace clearfix bigs">
    
      <p>1. <strong>Program Sponsor.</strong> Fabrinz Privilege Card Program (?the Privilege Card?) is operated by Laundry Project India Pvt Ltd and is applicable to participating stores in India. This covers ?Fabrinz? Laundry & Dry Cleaning services and ?Sparrow?Shoe and Bag Laundry services.</p>
      <p>2. <strong>Membership Eligibility and Fee.</strong> Membership in the Program is contingent on these Privilege Program Terms and Conditions. You may maintain only one account. There is no enrollment fee for this Privilege Card. The Privilege Card is and will remain the property of Laundry Project India Pvt Ltd and must be returned on demand. It is not a payment card or credit card.?</p>
      <p>3. <strong>Program Availability.</strong> Laundry Project India Pvt Ltd reserves the right to restrict, suspend, discontinue or cancel this Privilege Program at management?s exclusive discretion. Laundry Project India Pvt Ltd will make every reasonable effort to provide advance notice of its action(s) to all active members. Laundry Project India Pvt Ltd accepts no responsibility should any active member(s) not receive advance notice of its intention to restrict, suspend, discontinue or cancel the Privilege Program.</p>
      <p>4. <strong>Non Transferability of Customer Privilege Cards.</strong> Customer Privilege Cards are not transferable. The Cardholder is prohibited from transferring their card to any other person for the purpose of receiving benefit of another customer?s purchases. The cardholder is also prohibited from transferring in any way whatsoever the benefit of redeeming points accumulated on the account. Only the registered Cardholder may redeem points and INR value equivalent on credit in the account.</p>
      <p>5. <strong>Membership Cancellation.</strong> Laundry Project India Pvt Ltd reserves the right to cancel any membership in the Privilege Program and revoke any and all unredeemed Privilege Program points collected by any member(s) for reasons that include, but are not limited to: 1) violation of any or all of these Terms and Conditions; 2) misrepresentation of any information or any misuse of this Privilege Program; 3) violation of any national law or regulation in connection with the use of membership privileges; 4) failure to pay for purchases; 5) a cheque to a participating store or brand is returned for insufficient funds or is invalid for any reason; 6) a debit or credit card payment to a participating store is contested for any reason and payment stopped; 7) commission of fraud or abuse involving any portion of this Privilege Program; 8) more than one active account per member; or 9) action, in any other way, to the detriment of the Privilege Program or any of its alliances; all as may be determined by Laundry Project India Pvt Ltd in its sole discretion.</p>
      <p>6. <strong>Changes in Terms and Conditions.</strong> Laundry Project India Pvt Ltd reserves the right to make any changes to the program (whether material or otherwise), including the ways in which points are earned and redeemed and the eligible items, the expiry of accrued points, the limits, to modify or cancel Privilege Program Terms and Conditions (including the number of Fabrinz Privilege Card points issued for a Qualifying Purchase), regulations, benefits, conditions of participation, rewards and reward levels in whole or part at any time, even though changes may affect the value of points or rewards already accumulated; all as may be determined by Laundry Project India Pvt Ltd in its sole discretion. You will be bound by any such changes.</p>
      <p>7. <strong>Notice of Changes.</strong> Any such changes will be shown in these Terms and Conditions on the www.Fabrinzlaundry.com web site and will be effective immediately unless stated otherwise. A notice that a change has been made will be placed on the web site for a reasonable period of time. Any changes to any printed version of the Terms and Conditions will be contained in the next reprinting of that printed version. Laundry Project India Pvt Ltd will attempt to notify active members regarding major Program changes, but will not be liable for failure to do so, and all members will nevertheless be bound. An active member is defined as any member having point activity (accrual or redemption) within the last 12 months.</p>
      <p>8. <strong>Legal rights.</strong> Neither the Program nor any benefit offered by the Program creates, constitutes or gives rise to any legal or contractual rights by members against Laundry Project India Pvt Ltd.</p>
      <p>9. <strong>Points have no value.</strong> Laundry Project India Pvt Ltd Privilege points are not redeemable for cash or any other form of credit and have no value until presented for redemption in accordance with the terms and conditions of this Program. Points have no fixed or ascertainable cash value. Members have no ownership interest in accrued points and accrued points do not constitute property of the members. Use of the word "earn" in marketing materials in relation to Laundry Project India Pvt Ltd points shall mean "collect" and shall not infer that the points have any value until they are presented for redemption. Points may not be purchased or sold and are not transferable except as otherwise stated herein.</p>
      <p>10. <strong>Communications Not Received.</strong> Laundry Project India Pvt Ltd is not liable for loss of misdirected correspondence, requests, or Reward Certificates that may be incomplete, illegal, delayed, lost or stolen.</p>
      <p>11. <strong>No Guarantees on Merchandise & Services.</strong> Laundry Project India Pvt Ltd, its parent, subsidiaries, affiliates, franchisees, and agents make no guarantees, warranties or representations of any kind, expressed or implied, with respect to items of merchandise, and shall not be liable for any loss, expense (including without limitation, any legal fees), accident or inconvenience that may arise in connection with the use of such items or as a result of any defect or failure of such items.</p>
      <p>12. <strong>Restricted by Law.</strong>This Program or participation therein is not valid and/or the awarding of Laundry Project India Pvt Ltd points and/or the granting of rewards is void where prohibited or restricted by law.</p>
      <p>13. <strong>Program Violations.</strong> Program violations, fraud or abuse in relation to points or reward usage is subject to appropriate administrative and/or legal action by appropriate governmental authorities and by Laundry Project India Pvt Ltd, including, without limitation, the forfeiture of all point transfers, rewards, vouchers, or merchandise issued pursuant to point redemptions and any accrued points in your account, as well as cancellation of the account and your future participation in the Program.</p>
      <p>14. <strong>Other Point Awards.</strong> Laundry Project India Pvt Ltd points may be distributed as rewards, recognition, or incentives by Laundry Project India Pvt Ltd to customers, and also by other companies with whom Laundry Project India Pvt Ltd has agreements to their employees and customers.</p>
      <p>15. <strong>Program Interpretation.</strong> Interpretations of Program Terms & Conditions shall be at the sole discretion of Laundry Project India Pvt Ltd. Laundry Project India Pvt Ltd reserves the right to add, modify, delete or otherwise change these Terms and Conditions or any rules related to the Program at its sole discretion, with or without notice.</p>
      <p>16. <strong>Registration of Privilege Card is mandatory.</strong> Customer Privilege Cards must be registered online at the website www.Fabrinzlaundry.com in order that earned points are eligible for redemption. Failure to register the Customer Privilege Card will restrict the cardholder from redeeming any earned points until such time as it is properly registered. Should it be determined that an unregistered Customer Privilege Card has been used to purchase items, that card will be immediately cancelled without any notice. Laundry Project India Pvt Ltd will consider that unregistered Customer Privilege Card as improperly acquired and improperly used, thus subject to cancellation.</p>
      <p>17. <strong>Earning and Redeeming Points for Purchases.</strong> The Member may earn one (1) point for every 100 Rs spend.</p>
      <p>18. <strong>No Points awarded on settlements using previously earned Points.</strong> Laundry Project India Pvt Ltd will not award points on purchases settled using previously earned points. Should a check be settled in whole or in part using previously earned points, only that portion of the check settled by cash, debit or credit card and gift vouchers will earn points. That part of the check settled with previously earned points will not accrue any further points.</p>
      <p>19. <strong>Customer Privilege Program and the Internet.</strong> The Customer Privilege Program is inseparably associated with Internet availability. As such, the Customer Privilege Program is susceptible to down time whenever the Internet is offline. Laundry Project India Pvt Ltd accepts no responsibility for Internet communication challenges that negatively impact its Customer Privilege Program. Laundry Project India Pvt Ltd will make every effort to ensure that customers receive points earned on purchases transacted during times when the Internet is unavailable. However, there can be no redemption of points during times when the Internet is unavailable.</p>
      <p>20. <strong>Lost or Stolen Cards.</strong> In the event of loss or theft of your Privilege Card, it is your responsibility to advise Laundry Project India Pvt Ltd as soon as possible. Laundry Project India Pvt Ltd accepts no responsibility for any unauthorized use of the card. Laundry Project India Pvt Ltd will make reasonable efforts to void the card and reduce the member?s exposure to further loss of points but accepts no responsibility for same. Furthermore, Laundry Project India Pvt Ltd will not make any restoration of points in the event of a lost or stolen card. The Customer Privilege Card is a bearer card and, as such, the cardholder should treat the Customer Privilege Card with the same protection and safety measures as if it were cash.</p>
      <p>20. <strong>Purchase of packages and usage :</strong>The customer can use the card to purchase bulk packages that can be used for the service as per terms and conditions of each package. </p>
      <p>21. <strong>Usage between packages :</strong>The customer is free to use any garment / service against money loaded onto the card against a specific package and for calculation the rack rates mentioned will be deducted against that particular item or service.</p>
      <p>22. <strong>Usage of card between cities :</strong>The customer can use the card to avail services of the brand at any of its outlets/through home delivery across any city in India where the service is available. Incase of preloaded cards, the prices for the garment or the service will be the local city prices that are applicable.</p>
      <p>23. <strong>Liability clause : </strong> Please be assured that Fabrinz-On-Demand will use utmost efforts to ensure that Ironing, Washing, Drying, Folding and DryCleaning services are maintained at the highest level of quality. Fabrinz-On-Demand service is provided subject to your ?customer compliance? and acceptance with the terms and conditions set forth as follows. Garment Care / Missing or Damaged goods Fabrinz-On-Demand assumes no liability for damage due to normal wear and tear, fading or shrinkage during washing and drying. Fabrinz / Sparrow shall not be held responsible for loss or damage to any personal or noncleanable items left in the clothing or bags such as money, jewellery or anything else. In the unlikely event of damage or loss Fabrinz / Sparrow laundry shall do everything possible to remedy the issue. We ask that each customer notify within 24 hours of receipt of delivery of any lost or damaged garments from the particular. Claims recorded beyond 24 hours will not be eligible for any consideration. The claim must be accompanied by original receipt/ bill copy. Failure to do so constitutes waiver of the claim for any loss or damages from that delivery. The liability of the company is limited to a maximum of 5 times the value of the service charges applied.</p>
      <p>23. <strong>Payment clause</strong> :You hereby confirm that understand that use of the Services may result in payments by you for the services you receive from Laundry Project and also a Third Party Provider ("Charges"). After you have received services obtained through your use of the Service, Fabrinz will facilitate payment of the applicable Charges on behalf of the Third Party Provider, as such Third Party Provider's limited payment collection agent, using the preferred payment method designated in your Account, and will send you a receipt by email. Payment of the Charges in such manner shall be considered the same as payment made directly by you to the Third Party Provider. Charges will be inclusive of applicable taxes where required by law. Charges paid by you are final and non-refundable, unless otherwise determined by Fabrinz. </p>
      <p>All Charges are due immediately and payment will be facilitated by Fabrinz using the preferred payment method designated in your Account. If your primary Account payment method is determined to be expired, invalid or otherwise not able to be charged, you agree that Fabrinz may, as the Third Party Provider's limited payment collection agent, use a secondary payment method in your Account, if available.</p>
      <p>Fabrinz reserves the right to establish, remove and/or revise Charges for any or all aspects of the Services at any time in Fabrinz's sole discretion. Further, you acknowledge and agree that Charges applicable in certain geographical areas may increase substantially during times of high demand of the Services. Fabrinz will use reasonable efforts to inform you of Charges that may apply, provided that you will be responsible for Charges incurred under your Account regardless of your awareness of such Charges or the amounts thereof. Fabrinz may from time to time provide certain users with promotional offers and discounts that may result in different Charges for the same or similar Services, and you agree that such promotional offers and discounts, unless also made available to you, shall have no bearing on your use of the Services or the Charges applied to you. You may elect to cancel your request for Services from a Third Party Provider at any time prior to such Third Party Provider's arrival, in which case you may be charged a cancellation fee.</p>
      <p>24. <strong>Cancellation policy :</strong>If you are unavailable at home during pickup, please let us know 2 hours in advance for cancelling and rescheduling the appointment. If the management decides the garment cannot be processed, we will cancel the order and refund the amount to Fabrinz wallet.</p>
      <p>25. <strong>Refund policy :</strong>Refunds for services/packages shall be provided after the sole discretion of the management. The refund amount will be added to the Fabrinz wallet. No refunds shall be made for packages unused. </p>
    </div>
    
    <!-- APPLICATION -->
    <div class="bspace">
      <div class="clearfix">
        <div class="col5">
          <h2>Your laundry is only a touch away!</h2>
          <ul class="stop">
            <li> <a class="icon icon-photo" href="https://play.google.com/store/apps/details?id=com.Fabrinz.laundry1" target="_blank"><img src="assets/images/g-play.jpg" /> </a> <a class="icon icon-photo spac" href="https://itunes.apple.com/us/app/id918974892" target="_blank"><img src="assets/images/ap-store.jpg" /></a> </li>
          </ul>
        </div>
          <div class="col7"> <img src="assets/images/Fabrinz_jabong.jpg" /> </div>
      </div>
    </div>
    <!-- FOOTER -->
    <%@include file="footerweb.jsp" %>
  </section>
</div>
<script>
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});

			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
	</script> 
<script src="assets/js/owl.carousel.min.js"></script> 
<script src="assets/js/jquery.drawer.js"></script> 
<script>
		
		$(function() {
			$('#primary-menu-toggle').drawer({
				menu: '#primary-menu',
				push: '.content',
				class: 'menu-open'
			});
		});
		
		var mtop = $('.header').height();
		$('.menu').css('top',mtop);
		$('#down').slideUp();
		$('#slide').click(function(){
			$('#down').slideDown(300);
		});
		$('#primary-menu-toggle, #down a').click(function() {
			$('#down').slideUp();
		});
		
		
		//$('.banner').height(bheight);
		//var bheight = $('.banner').outerHeight();
		//$('.menu').height(bheight);
		
		
		$(document).ready(function() {
 
		$("#owl-demo").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
 
      items : 4,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3]
 
  });
 
});
$('.dwnarr, .rwnarr').click(function() {
	$('#schedule').slideToggle();
});

	</script> 
<script src="assets/js/jquery.datetimepicker.js"></script> 
<script>
   $('#datetimepicker10').datetimepicker({
	step:5,
	inline:true
});
</script>
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 945558947;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" 

src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/945558947/?value=0&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
</body>
</html>
