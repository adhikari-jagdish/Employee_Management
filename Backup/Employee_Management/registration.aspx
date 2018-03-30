<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Employee_Management.registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Employee Registration</title>   
    <link href="Style.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="jquery.min.js"></script>
    <script type="text/javascript" src="bootstrap.min.js"></script>
    <style type="text/css">
        .nav-tabs a, .nav-tabs a:hover, .nav-tabs a:focus
        {
            outline: 0;
        }
    </style>
    <script type="text/javascript">
        function submitvalidations() {
            ValidateEndDate();
            ValidateEmail();
            chkpassword();
        }
       


    </script>
    <script type="text/javascript">
        function ValidateEndDate() {
            var dateofbirth = document.getElementById('dtdob').value;
            var mybirthdate = new Date(dateofbirth);
            var dateofjoin = document.getElementById('dtdoj').value;
            var myjoindate = new Date(dateofjoin);
            if (mybirthdate >= myjoindate) {
                alert('Date of Birth should be older than Date of Joining');
                return false;
            }
            return true;
        }
</script>
    <script type="text/javascript">
        function ValidateEmail() {
            var inputemail = document.getElementById('txtemail').value;
            if (inputemail == "") {
                alert('Pls fill in all the required fields before clicking submit');
                return false;
            }
            else {
                var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                if (inputemail.match(mailformat)) {
                    return true;
                }
                else {
                    alert("You have entered an invalid email address!");
                    return false;
                }
            }

        }


    </script>
    <script type="text/javascript">
        function chkpassword() {
            var pass = document.getElementById('txtpassword').value;
            var cpass = document.getElementById('txtconfirmpassword').value;
            if (pass == cpass) {
                return true;
            }
            else {

                alert('Password and Confirm Password do not match');
                return false;
            }


        }


    </script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

   

   
</head>
<body style="background-color:#534f4f">
 <div class="form_wrapper">
	<div class="form_container">
		<div class="title_container">
			<h2>Register Here!</h2>
		</div>
		<div class="row clearfix">
			<div class="">
    <form id="form2" runat="server" method="post">
     <div class="input_field"> 
    <span class="asterisk_input"></span>
						 Prefix: &nbsp
						<asp:DropDownList ID="dd1prefix" runat="server">
                            <asp:ListItem>Mr.</asp:ListItem>
                            <asp:ListItem>Mrs.</asp:ListItem>
                               <asp:ListItem>Doc</asp:ListItem>
                            <asp:ListItem>Engg</asp:ListItem>

						</asp:DropDownList>
					</div>
                    <div class="row clearfix">
                        <div class="col_quarter">
                            <div class="input_field">
                            <table width=100%>
                        <tr>
                        <td><font color=red>*</font> First Name:</td>
                        <td> 
                  
                        <input id="txtfirstname" type="text" runat="server" placeholder="First Name" required="required" /></td>
                        </tr>
                        
                        </table>
                            
                            </div>
                        </div>

                         <div class="col_quarter">
                         <table width=100%>
                        <tr>
                        <td> Middle Name:</td>
                        <td> 
                             <input id="txtmiddlename" type="text" placeholder="Middle Name" runat="server" />
                            </td>
                        </tr>
                        
                        </table>
                            
                        </div>

                         <div class="col_quarter">
                            <div class="input_field">
                            <table width=100%>
                        <tr>
                        <td><font color=red>*</font> Last Name:</td>
                        <td> 
                             <input id="txtlastname" type="text" placeholder="Last Name" runat="server" required="required" />
                            </td>
                        </tr>
                        
                        </table>
                             
                            </div>
                        </div>
                    
                    
                    </div>
						</div>
						</div>

                        <div class="row clearfix">

                         <div class="col_half">
                            <div class="input_field"> 
						<table width=100%>
                        <tr>
                        <td><font color=red>*</font> Email:</td>
                        <td>
                        
                        <asp:TextBox ID="txtemail" required="required" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox></td>
                        </tr>
                        
                        </table>
                        
						
					</div>
                            </div>

                            <div class="col_half">
                                <div class=" input_field radio_option" >
						
						<div class='radio_group'>
                     <font color=red>*</font> Gender: &nbsp;
							<input type="radio" name="gender" id="rdogenderm" runat="server" checked>
							<label for="rdogenderm">Male</label>

							<input type="radio" name="gender" id="rdogenderf" runat="server">
							<label for="rdogenderf">Female</label>

                            <input type="radio" name="gender" id="rdogendero" runat="server">
							<label for="rdogendero">Others</label>
						</div>
					</div> 
                            
                            </div>
                        </div>
      
                     <div class="row clearfix">
                        <div class="col_half">
                            <div class="input_field"> 
						<font color=red>*</font> Date of birth: &nbsp
                        <asp:TextBox ID="dtdob" runat="server" TextMode="Date" required="required"></asp:TextBox>
                       
						
					</div>
                        
                        </div>

                        <div class="col_half">
                            <div class="input_field"> 
						<font color=red>*</font> Date of Joining: &nbsp
                   <asp:TextBox ID="dtdoj" runat="server" TextMode="Date" required="required"></asp:TextBox>
                        
                    
						
					</div>
                        </div>
                     
                     </div>

       
					
                    <div class="row clearfix">
                        <div class="col_half">
                           <div class="input_field"> 
					<font color=red>*</font> Employee Type: &nbsp
						<asp:DropDownList ID="ddemployeetype" runat="server">
                            <asp:ListItem>Full-Time</asp:ListItem>
                            <asp:ListItem>Part-Time</asp:ListItem>
                               	</asp:DropDownList>
					</div> 
                        </div>

                        <div class="col_half">
                            <div class="input_field"> 
					<font color=red>*</font> Employee Status: &nbsp
						<asp:DropDownList ID="ddemployeestatus" runat="server">
                            <asp:ListItem>Fresher</asp:ListItem>
                            <asp:ListItem>Experienced</asp:ListItem>
                               	</asp:DropDownList>
					</div>
                        </div>
                    
                    </div>

                    <div class="row clearfix">
                   
                        <div class="col_half"> 
                        <table width=100%>
                            <tr>
                                <td><font color=red>*</font> Photo:</td>
                                <td><div class="input_field">
                            
                                <input type="file" name="photo" runat="server" id="upphoto" required="required" />
                            </div></td>
                            </tr>
                        
                        </table>
                        </div>

                          <div class="col_half"> 
                        <table width=100%>
                            <tr>
                                <td><font color=red>*</font> Sign:</td>
                                <td><div class="input_field">
                            
                                <input type="file" name="sign" runat="server" id="upsign" required="required" />
                            </div></td>
                            </tr>
                        
                        </table>
                        </div>
                         
                        
                        </div>
                    
                    </div>
					
					

                    
			
				</div>
			</div>
		


    <div class="form_wrapper">
        <div class="form_container">
          
        <div id="tabs" role="tabpanel">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#tab1credendials" aria-controls="tab1credendials" role="tab" data-toggle="tab">
                    Credendials </a></li>
                <li><a href="#presentaddress" aria-controls="presentaddress" role="tab" data-toggle="tab">Present Address</a></li>
                <li><a href="#permanentaddress" aria-controls="permanentaddress" role="tab" data-toggle="tab">Permanent Address</a></li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content" style="padding-top: 20px">
                <div role="tabpanel" class="tab-pane active" id="tab1credendials">
                    

                        <div class="row clearfix">
                            <div class="col_half">
                                
                            <div class="input_field"> 

                        <table width=100%>
                        
                        <tr>
                        <td style="width:20px"><font color=red>*</font> Username:</td>
                         <td style="width:100px"><asp:TextBox ID="txtusername" placeholder="Username" runat="server" required="required"></asp:TextBox> </td>
                        </tr>
                        </table>
						   
                        
                       
						
					</div>
                            </div>
                        
                        </div><!--end of row_clearfix-->
                        
                        

                    

                     <div class="row clearfix">
                            <div class="col_half">
                                
                            <div class="input_field"> 

                        <table width=100%>
                        
                        <tr>
                        <td style="width:20px"><font color=red>*</font>  Password:</td>
                         <td style="width:100px"><asp:TextBox ID="txtpassword" placeholder="Password" runat="server" TextMode="Password" required="required" MaxLength=8></asp:TextBox></td>
                        </tr>
                        </table>
					</div>
                            </div>
                        
                        </div><!--end of row_clearfix-->

						
                        
						
				
                <div class="row clearfix">
                            <div class="col_half">
                                
                            <div class="input_field"> 

                        <table width=100%>
                        
                        <tr>
                        <td style="width:20px"><font color=red>*</font>  Confirm Password:</td>
                         <td style="width:100px"><asp:TextBox ID="txtconfirmpassword" placeholder="Re-enter Password" runat="server" TextMode="Password" required="required"></asp:TextBox></asp:TextBox></td>
                        </tr>
                        </table>
					</div>
                            </div>
                        
                        </div><!--end of row_clearfix-->
                </div>
                <div role="tabpanel" class="tab-pane" id="presentaddress">
               <div class="row clearfix">
                    <div class="col_quarter">
                    
                    <div class="input_field">
                    
                    <table>
                    <tr>
                    <td style="width:80px">  <font color=red>*</font> Address 1:  </td>
                    <td> <asp:TextBox ID="tapresentaddress1" TextMode="MultiLine" Columns="20" Rows="2" runat="server" required="required"></asp:TextBox>	 </td>
                    </tr>
                    </table> 
                  
                       
					</div>
                    </div>

                     <div class="col_quarter">
                    
                    <div class="input_field"> 
                   
                     <table>
                    <tr>
                    <td style="width:70px"> Address 2:   </td>
                    <td>  <asp:TextBox ID="tapresentaddress2" TextMode="MultiLine" Columns="20" Rows="2" runat="server"></asp:TextBox> </td>
                    </tr>
                    </table> 
                       	
					</div>
                    </div>
                    <div class="col_quarter">
                     <div class="input_field">
                      <table>
                    <tr>
                    <td style="width:70px"> Address 3:   </td>
                    <td> <asp:TextBox ID="TextBox1" TextMode="MultiLine" Columns="20" Rows="2" runat="server"></asp:TextBox> </td>
                    </tr>
                    </table> 
                     
                        
                    </div>
                    </div>
               
               </div><!--end of row_clearfix-->

               <div class="row clearfix">
                <div class="col_quarter">
                    <div class="input_field"> 
					<font color=red>*</font>	Country: &nbsp
						<asp:DropDownList ID="ddlpresentcountry" runat="server">
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Nepal</asp:ListItem>
                               	</asp:DropDownList>
					</div>
                
                </div>

                <div class="col_quarter">
                    <div class="input_field">
                 <font color=red>*</font>   State: &nbsp
						<asp:DropDownList ID="ddlpresentstate" runat="server">
                            <asp:ListItem>Uttrakhand</asp:ListItem>
                            <asp:ListItem>Province No.1</asp:ListItem>
                               	</asp:DropDownList>
                    </div>
                
                </div>

                <div class="col_quarter">
                    <div class="input_field"> 
						
                     <font color=red>*</font>   District: &nbsp
						<asp:DropDownList ID="ddlpresentdistrict" runat="server">
                            <asp:ListItem>Dheradun</asp:ListItem>
                            <asp:ListItem>Haridwar</asp:ListItem>
                            <asp:ListItem>Jhapa</asp:ListItem>
                            <asp:ListItem>Sunsari</asp:ListItem>
                               	</asp:DropDownList>
						
					</div>
                </div>
               
               </div><!--end of row_clearfix-->

               <div class="row clearfix">
                    <div class="col_quarter">
                    <div class="input_field"> 

                    <table>
                    <tr>
                    <td style="width:70px">  <font color=red>*</font> Pincode: </td>
                    <td> <asp:TextBox ID="txtpresentpincode" placeholder="PinCode" runat="server" required="required" ></asp:TextBox> </td>
                    </tr>
                    </table>
                    
						
					</div>
                    
                    </div>

                    <div class = "col_quarter">
                    
                    <div class="input_field"> 
						  <table>
                    <tr>
                    <td style="width:110px"> Primary Number: </td>
                    <td> <asp:TextBox ID="txtpresentprimaryno" placeholder="Primary Number" runat="server" ></asp:TextBox></td>
                    </tr>
                    </table>
                        
						
					</div>
                    </div>

                    <div class="col_quarter">
                    <div class="input_field"> 
						 <table>
                    <tr>
                    <td style="width:60px"><font color=red>*</font> Mobile: </td>
                    <td>  <asp:TextBox ID="txtpresentmobile" placeholder="Mobile" runat="server" required="required" ></asp:TextBox></td>
                    </tr>
                    </table>
                       
						
					</div>
                    </div>
               
               
               </div>

               <div class="checkbox_option">
						<input type="checkbox" id="chksameaspermanentaddress" runat="server" />
						<label for="chksameaspermanentaddress">Same as Permanent Address</label>
					</div>
                    
                    

                </div>

                <div role="tabpanel" class="tab-pane" id="permanentaddress">
                    <div class="row clearfix">
                    <div class="col_quarter">
                    
                    <div class="input_field"> 
                    <table>
                    <tr>
                    <td style="width:80px">  <font color=red>*</font> Address 1:  </td>
                    <td> <asp:TextBox ID="txtpermanentaddress1" TextMode="MultiLine" Columns="20" Rows="2" runat="server" required="required"></asp:TextBox>	 </td>
                    </tr>
                    </table> 
                    
                        	
					</div>
                    </div>

                     <div class="col_quarter">
                    
                    <div class="input_field"> 
                    
                    <table>
                    <tr>
                    <td style="width:70px"> Address 2:   </td>
                    <td>  <asp:TextBox ID="txtpermanentaddress2" TextMode="MultiLine" Columns="20" Rows="2" runat="server" ></asp:TextBox>	</td>
                    </tr>
                    </table>  
                        
					</div>
                    </div>
                    <div class="col_quarter">
                     <div class="input_field">
                     
                      <table>
                    <tr>
                    <td style="width:70px"> Address 3:   </td>
                    <td> <asp:TextBox ID="txtpermanentaddress3" TextMode="MultiLine" Columns="20" Rows="2" runat="server"></asp:TextBox> </td>
                    </tr>
                    </table> 
                        
                    </div>
                    </div>
               
               </div><!--end of row_clearfix-->

               <div class="row clearfix">
                <div class="col_quarter">
                    <div class="input_field"> 
						<font color=red>*</font> Country: &nbsp
						<asp:DropDownList ID="ddlpermanentcountry" runat="server">
                           
                            <asp:ListItem>Nepal</asp:ListItem>
                             <asp:ListItem>India</asp:ListItem>
                               	</asp:DropDownList>
					</div>
                
                </div>

                <div class="col_quarter">
                    <div class="input_field">
                  <font color=red>*</font> State: &nbsp
						<asp:DropDownList ID="ddlpermanentstate" runat="server">
                            <asp:ListItem>Province No.1</asp:ListItem>
                            <asp:ListItem>UP</asp:ListItem>
                               	</asp:DropDownList>
                    </div>
                
                </div>

                <div class="col_quarter">
                    <div class="input_field"> 
						
                    <font color=red>*</font>   District: &nbsp
						<asp:DropDownList ID="ddlpermanentdistrict" runat="server">
                            <asp:ListItem>Dhankuta</asp:ListItem>
                            <asp:ListItem>Illam</asp:ListItem>
                            <asp:ListItem>Faizabad</asp:ListItem>
                            <asp:ListItem>Gorakpur</asp:ListItem>

                               	</asp:DropDownList>
						
					</div>
                </div>
               
               </div><!--end of row_clearfix-->

               <div class="row clearfix">
                    <div class="col_quarter">
                    <div class="input_field"> 
                     <table>
                    <tr>
                    <td style="width:70px">  <font color=red>*</font> Pincode: </td>
                    <td>  <asp:TextBox ID="txtpermanentpincode" placeholder="PinCode" runat="server" required="required"></asp:TextBox></td>
                    </tr>
                    </table>
                       
						
					</div>
                    
                    </div>

                    <div class = "col_quarter">
                    
                    <div class="input_field"> 
						 <table>
                    <tr>
                    <td style="width:110px"> Primary Number: </td>
                    <td>  <asp:TextBox ID="txtpermanentprimaryno" placeholder="Primary Number" runat="server" ></asp:TextBox></td>
                    </tr>
                    </table>
                       
						
					</div>
                    </div>

                    <div class="col_quarter">
                    <div class="input_field"> 
                     <table>
                    <tr>
                    <td style="width:60px"><font color=red>*</font> Mobile: </td>
                    <td>   <asp:TextBox ID="txtpermanentmobile" placeholder="Mobile" runat="server" required="required" ></asp:TextBox></td>
                    </tr>
                    </table>
                      
						
					</div>
                    </div>
               
               
               </div>
               
            
                </div>
            </div>

        </div>
   <div class="row clearfix">
       
            <div class="col_half">
             <input type="submit" id="submitdata" onclick="submitvalidations();" value="submit" />
            </div>

            <div class="col_half">
            <input id='resetdata' class="button_reset" type="reset" value="Reset" />
            </div>
           
           </div> 
           
           
        </div><!--end of form-container-->
    </div><!--end of form-wrapper-->
    </form>
   
</body>
</html>
    </form>
</body>
</html>
