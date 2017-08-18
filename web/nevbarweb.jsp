             
                <div class="clr2 grhead clearfix">
                    <div class="fl">
                        <ul class="topmenu clearfix">
                            <li><a href="fabrinz-brand.jsp">Brand</a></li>
                            <!--li><a href="store.jsp">Store Locator</a></li>
                            <li><a href="rate_card.jsp">Prices</a></li-->
                            <li><a href="laundry-cleaning.jsp">Process</a></li>

                           
                        </ul>
                    </div>
                    <div class='fr tc'> <div class="hlinks">
                            
                           
                            <form method='post' action='fabrinz_custm_login ' name="fabrinz_login" id="fabrinz_login">
                                 <%
                                    if (session.getAttribute("userid")!=null)
                                    {
                                       String name=(String)session.getAttribute("Name");
                                        PreparedStatement ps=con.prepareStatement("select * from user where Name=?  " );
                                        ps.setString(1,name);
                                          ResultSet r1=ps.executeQuery();
                                          if(r1.next())
                                  %>
                                     <a href="signup.jsp" class="pnkbutton cuslogin" id="nstsession"  >Logged in as <%= r1.getString("Name")%></a> 
                                    
                                    <% }else{ %>
                                <a href="signup.jsp" class="pnkbutton cuslogin" id="nstsession"  >Customer Login</a> 
                                <% }%>
                                <a href="fabrinz-custm-deshboard.jsp" class="pnkbutton cuslogin" id="stsession" style="display: none;">Hi...- <%=session.getAttribute("userid")%></a> 
                               
                                
                            </form>
                            
                        </div> <span class="shicon"><a href="https://www.facebook.com/fabrinz" target="_blank"><img src='assets/images/png/ficon.png' alt="fabrinz facebook" /></a> <a href="https://twitter.com/fabrinzLaundry" target="_blank"><img src='assets/images/png/ticon.png' alt="fabrinz twitter" /></a>  </span> </div>
                </div>
               