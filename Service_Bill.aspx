<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Rent_A_Car.Master" CodeBehind="Service_Bill.aspx.cs" Inherits="Rent_A_Car.Service_Bill" %>


     <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"/>

         <section id="slider-area">
        <!--== slide Item One ==-->
        <div class="single-slide-item overlay">
 
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="slideshowcontent">
                       <br></br>
                        <div class="display-table">
                            <div class="display-table-cell">
                                <h1>S & N ROYALS RENT A CAR</h1>
                            
          
         <section id="lgoin-page-wrap" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                			<h3>Service Bill Registration Form</h3>
							<form action="#">
                              <div class="container-fluid">
                    <div style="text-align:center;">
                        <asp:Label ID="lblStatus" runat="server" Text="Label" Font-Bold="True" ForeColor="#009900" Visible="False"></asp:Label>
                        </div>                       
                <div class="row">

                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtCustName" runat="server" placeholder="Customer Name"></asp:TextBox>
                </div>
                
               <%-- <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="Vehicle Type (Car/Van)"></asp:TextBox>
                  </div>--%>

                                    <div class=""col-lg-6 col-md-4"">
                                    <asp:DropDownList ID="cmbServiceType" runat="server" class="custom-select">
                                    <asp:ListItem>-----------------------Please select-------------------------</asp:ListItem>
                                    <asp:ListItem>Body Wash</asp:ListItem>
                                    <asp:ListItem>Vacum Clean</asp:ListItem>
                                     <asp:ListItem>Body Wash with Vacum Clean</asp:ListItem>
                                                                    
                                    </asp:DropDownList>
                                </div>
                    <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtCost" runat="server" placeholder="Cost"></asp:TextBox>
                </div>


                </div>

                                  <!-- 2nd row -->
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtQty" runat="server" placeholder="Qty"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtTotalAmount" runat="server" placeholder="Amount" Enabled="False" BackColor="Gray" Font-Bold="True" ForeColor="#00CC00"></asp:TextBox>
                  </div></div>


                    <div class="col-lg-12 col-md-6" align-"center">
                  <div class="log-btn">
                      <asp:Button ID="btnCal" type="submit" runat="server" Text="CALCULATE" Width="580px" BackColor="White" OnClick="btnCal_Click"/>
                      <asp:Button ID="btnSave" type="submit" runat="server" Text="SAVE" Width="580px" BackColor="White" OnClick="btnSave_Click"/>
                      <asp:Button ID="btnPrint" type="submit" runat="server" Text="PRINT" Width="580px" BackColor="White" OnClick="btnPrint_Click"/>
                      <hr />

                                  </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div></section>
             </asp:Content>