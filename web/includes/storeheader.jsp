<div id="header">
<div id="logobg">
<img src="img/logologin.png" style="width:160px;">
</div>
<div id="logoutbg">
<table style="margin-top:20px;">
<tr>
<td>
<script src="js/jquery.js" type="text/javascript"></script> 

<script>
$(document).ready(function(){
    $("#alaramnav").click(function(){
        $("#alaramcontent").toggle();
		$("#notificationscontent").hide();
		$("#messagecontent").hide();
		
    });
});
</script>
<script>
$(document).ready(function(){
    $("#notificationsnav").click(function(){
        $("#notificationscontent").toggle();
		$("#alaramcontent").hide();
		 $("#messagecontent").hide();
    });
});
</script>
<script>
$(document).ready(function(){
    $("#messagenav").click(function(){
        $("#messagecontent").toggle();
				$("#alaramcontent").hide();
		 $("#notificationscontent").hide();
    });
});
</script>
<td style="color: sienna; font-size: 18px;">
    <%=session.getAttribute("store_name") %> </td>
<td>
<a href="logout.jsp"><img src="icons/logoutiic.png" class="notifications"></a>
</td>
</tr>
</table>
</div>
</div>
<div id="nav">
</div>
