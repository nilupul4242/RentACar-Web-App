<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Rent_A_Car.Master" CodeBehind="Aggrement_Details.aspx.cs" Inherits="Rent_A_Car.Login" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>



    <%--    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:content>--%>
        <%--<section id="slideslow-bg">--%>
              <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                  <script src="jsfiles/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>
                  <asp:ScriptManager ID="ScriptManager1" runat="server"/>

        
                 
    <section id="slider-area">
        <!--== slide Item One ==-->
      <div class="single-slide-item overlay">
 
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="slideshowcontent">
                        
                        <div class="display-table">
                            <div class="display-table-cell">
                                <br />
                                <h1>S & N ROYALS RENT A CAR</h1>

         <section id="lgoin-page-wrap" class="section-padding">
   
            <div class="row">
                <div class="col-lg-12 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                			<h3>Customer Registration Form</h3>
							<form action="#">
                              <div class="container-fluid">
                                          <div>
                              <asp:Label ID="lblStatus" runat="server" Text="Label" Font-Bold="True" Visible="False"></asp:Label>

                                              <asp:Label ID="lblUsrID" runat="server" Text="usrID" Visible="False"></asp:Label>

                          </div>
                                 <div class="raw">
                                 <div class="col-lg-4 col-md-4" style="padding-left: 2px;">  
                                  </div></div>

                                   <div class="raw">
                                  <div class="col-lg-6 col-md-3" style="padding-left: 2px;">  
                                      <asp:Button ID="btnphoto" runat="server" Text="Capture Photo" OnClick="btnphoto_Click" />
                                  </div>

                                  
                                     <div class="col-lg-6 col-md-3" style="padding-left: 2px;">  
                                      <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);"/>
                                         <asp:Image ID="Image1" runat="server" />                                      
                                       <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                                      <asp:Label ID="lblImageStatus" runat="server" Text="Label" Visible="False"></asp:Label>
                                  </div></div>

                                 
                       
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtName" runat="server" placeholder="Name of the Hirer"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtAdress" runat="server" placeholder="Address"></asp:TextBox>
                  </div></div>


                                  <!-- 2nd row -->
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtTele" runat="server" placeholder="Home Telephone"></asp:TextBox>
                  </div></div>


                                                      <!-- 3rd row -->
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtPurpose" runat="server" placeholder="Purpose of Hiring"></asp:TextBox>
                </div></div>

                                                      <!-- 4th row -->
                 <div class="row">
                <div class="col-lg-4 col-md-4">
                <asp:TextBox ID="txtId" runat="server" placeholder="Idintity Card No"></asp:TextBox>
                </div>
                
                <div class="col-lg-4 col-md-4">
                <asp:TextBox ID="txtPassport" runat="server" placeholder="Passport No"></asp:TextBox>
                </div>

                <div class="col-lg-4 col-md-4">
                <asp:TextBox ID="txtDl" runat="server" placeholder="Driving License No"></asp:TextBox>
                </div>
                 </div>
                  </div>
               <br />


                <h3>Guarantor Details Form</h3>
              <div class="container-fluid">
                       
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtGratrantor" runat="server" placeholder="Guarantor Name"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtGraAdress" runat="server" placeholder="Guarantor Address"></asp:TextBox>
                  </div></div>

                 <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtGraTele" runat="server" placeholder="Guarantor Telephone"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtGraNic_PP" runat="server" placeholder="Guarantor NIC/PP/DL No"></asp:TextBox>
                  </div></div>

                  <br />

                     <h3>Credt Card Details</h3>
              <div class="container-fluid">
                       
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtCardName" runat="server" placeholder="Card Holder Name"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtCardNum" runat="server" placeholder="Card Number"></asp:TextBox>
                  </div></div>

                 <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtExDate" runat="server" placeholder="Expiry Date"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtBank" runat="server" placeholder="Bank"></asp:TextBox>
                  </div></div>
                  <br />


                  
                  <h3>Vehicle Details Form</h3>
                  <div class="container-fluid">

                 <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtVehi" runat="server" placeholder="Vehicle Type"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtVehiReg" runat="server" placeholder="Register No"></asp:TextBox>
                  </div></div>

<%--<section id="slideslow-bg">--%>

                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtMileage" runat="server" placeholder="Start Mileage"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtStFuel" runat="server" placeholder="Start Fuel"></asp:TextBox>
                  </div></div>

                 <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtRenperDay" runat="server" placeholder="Rental per Day"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtfreekm" runat="server" placeholder="Free Km's"></asp:TextBox>
                  </div>
                 <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtCharExtra" runat="server" placeholder="Charges for Extra Km"></asp:TextBox>
                  </div>
                  <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtRemarks" runat="server" placeholder="Remarks"></asp:TextBox>
                  </div>

                     <div class="col-lg-6 col-md-4" align="center">
                     <label for="example-date-input" >License Expiry Date</label>
                    <telerik:RadDatePicker ID="dateexLice" runat="server"></telerik:RadDatePicker></div>
                    
                      <div class="col-lg-6 col-md-4" align="center">
                      <label for="example-date-input" >Insurance Expiry Date</label>
                    <telerik:RadDatePicker ID="dateExInsu" runat="server" ></telerik:RadDatePicker></div>
                 </div>
                      <br />
                 <div class="row">
                  <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtDepo" runat="server" placeholder="Security Deposit"></asp:TextBox>
                </div>

                   <div class="col-lg-3 col-md-3"  align="left">
                  <label for="example-date-input">Aggrement  Date</label>
                    <telerik:RadDatePicker ID="dateAggre" runat="server" ></telerik:RadDatePicker>
                 </div>
                    <div class="col-lg-3 col-md-3" align="left">
                      <asp:TextBox ID="txtValidates" runat="server" placeholder="Validation Dates"></asp:TextBox>
                  </div></div>



                  <hr />

               
                  <br />

              </div>





                  
                  <div class="align-center">
                      <div class="col-lg-12 col-md-6">
                  <div class="log-btn">
                      <asp:Button ID="btnreg" type="submit" runat="server" Text="Register" Width="580px" BackColor="White" OnClick="btnreg_Click1" />
                      <asp:Button ID="btnPrint" type="submit" runat="server" Text="Print Invoice" Width="580px" BackColor="White" OnClick="btnPrint_Click" />
                      <%--                 <div class="row" >
                <div class="col-lg-6 col-md-4" align="left">
                     <label for="example-date-input" >Issued Date</label>
                    <telerik:RadDatePicker ID="RadDatePicker1" runat="server" ></telerik:RadDatePicker></div>
                     <div class="col-lg-6 col-md-4" align="left">

                      <label for="example-date-input" >Return Date</label>
                    <telerik:RadDatePicker ID="RadDatePicker2" runat="server" ></telerik:RadDatePicker></div>
                   </div>--%>
				</div>



                     </div></div>
                        </div>
                        </div>
                    </div>
                </div>
            </div></div>
             </section>  



            </asp:Content>




     









    





        

         
         

        