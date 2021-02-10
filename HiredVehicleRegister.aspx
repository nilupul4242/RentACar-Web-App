<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Rent_A_Car.Master"  CodeBehind="HiredVehicleRegister.aspx.cs" Inherits="Rent_A_Car.HiredVehicleRegister" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>


     <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"/>

         <section id="slider-area">
        <!--== slide Item One ==-->
        <div class="single-slide-item overlay">
 
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="slideshowcontent">
                       <br>
                       </br>
                        <div class="display-table">
                            <div class="display-table-cell">
                                <h1>S & N ROYALS RENT A CAR</h1>
                            
          
         <section id="lgoin-page-wrap" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                			<h3>HIRED VEHICLE Bill Registration</h3>
							
                              <div class="container-fluid">
                    <div style="text-align:center;">
                        <asp:Label ID="lblStatus" runat="server" Text="Label" Font-Bold="True" ForeColor="#009900" Visible="False"></asp:Label>
                        </div>                       
                <div class="row">
                                    <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtVehicleNo" runat="server" placeholder="Vehicle No"></asp:TextBox>
                </div>
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtCustName" runat="server" placeholder="Customer Name"></asp:TextBox>
                </div>
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtAddress" runat="server" placeholder="Customer Address"></asp:TextBox>
                </div>
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtMeterRead" runat="server" placeholder="Meter Reading"></asp:TextBox>
                </div>
                   <div class="col-lg-12 col-md-6" align-"center">Extended Rental for the Period</div>
                     <div class="col-lg-6 col-md-4" align="center">
                     <label for="example-date-input" >From</label>
                    <telerik:RadDatePicker ID="dtpFrom" runat="server"></telerik:RadDatePicker></div>
                    
                      <div class="col-lg-6 col-md-4" align="center">
                      <label for="example-date-input" >To</label>
                    <telerik:RadDatePicker ID="dtpTo" runat="server" ></telerik:RadDatePicker></div>
                 </div>
                </div>

                                  <!-- 2nd row -->
                <div class="row">
                <div class="col-lg-12 col-md-6" align-"center">
                <asp:TextBox ID="txtExtendRental" runat="server" placeholder="Rental(Extend)"></asp:TextBox>
                </div> 
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtRefundDeposit" runat="server" placeholder="Refundable Deposit"></asp:TextBox>
                </div>
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtDeliveryCharge" runat="server" placeholder="Delivery Charge"></asp:TextBox>
                </div>
                                        <div class="col-lg-12 col-md-6" align-"center">
                  <div class="log-btn">
                      <asp:Button ID="btnCalSubTotal" type="submit" runat="server" Text="CALCULATE SUB TOTAL" Width="580px" BackColor="White" OnClick="btnCalSubTotal_Click" />
                      <hr />
                      </div>
                        </div>
                 <div class="col-lg-12 col-md-6" style="text-align:center">
                <asp:TextBox ID="txtSubtotal" runat="server" placeholder="Sub Total" BackColor="#CCCCCC" Enabled="False" Font-Bold="True" ForeColor="#CC0000" ></asp:TextBox>
                </div>
                 <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtDiscount" runat="server" placeholder="Discount">0</asp:TextBox>
                </div> 
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtTotalAmount" runat="server" placeholder="Total Amount" Enabled="False" BackColor="#CCCCCC" Font-Bold="True" ForeColor="#00CC00"></asp:TextBox>
                  </div></div>


                    <div class="col-lg-12 col-md-6" align-"center">
                  <div class="log-btn">
                      <asp:Button ID="btnCal" type="submit" runat="server" Text="CALCULATE TOTAL AMOUNT" Width="580px" BackColor="White" OnClick="btnCal_Click1"/>
                      <asp:Button ID="btnSave" type="submit" runat="server" Text="SAVE" Width="580px" BackColor="White" OnClick="btnSave_Click"/>
                      <asp:Button ID="btnPrint" type="submit" runat="server" Text="PRINT" Width="580px" BackColor="White" OnClick="btnPrint_Click"/>
                      <hr />
                      </div>
                        </div>
                                
                                  </div>
                                </div>
                        </div>
                    </div>
             </div>
             </section>
                                  </div>
                    </div>
             </div>
                                         </div>
                    </div>
             </div>
            </div></section>
             </asp:Content>
