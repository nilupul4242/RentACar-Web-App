<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Rent_A_Car.Master" CodeBehind="Bill.aspx.cs" Inherits="Rent_A_Car.Bill" %>

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
                        
                        <div class="display-table">
                            <div class="display-table-cell">
                                <h1>S & N ROYALS RENT A CAR</h1>



         <section id="lgoin-page-wrap" class="section-padding">

   
            <div class="row">
                <div class="col-lg-12 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                			<h3>Bill Created Form</h3>
							<form action="#">
                              <div class="container-fluid">
<%--                                  <div class="row">
                      <div class="col-lg- col-md-3" align="left">
                     <label for="example-date-input" >Return  Date</label>
                   
                    <telerik:RadDatePicker ID="dateReturn" runat="server" ></telerik:RadDatePicker></div>
                   
                     
                      <div class="col-lg-3 col-md-3">
                       <asp:TextBox ID="txtExraDate" runat="server" placeholder="Extra Dates"></asp:TextBox></div>
                
                     <div class="col-lg-6 col-md-4">
                    <asp:TextBox ID="txtRetMileage" runat="server" placeholder="Return Mileage"></asp:TextBox>
                </div>
                </div>--%>

                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtName" runat="server" placeholder="Customer Name"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtVehiNum" runat="server" placeholder="Vehicle Number"></asp:TextBox>
                  </div>

                 <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtExtaCost" runat="server" placeholder="Service Type"></asp:TextBox>
                  </div>

                  <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtAmount" runat="server" placeholder="Amount"></asp:TextBox>
                  </div>

                    <div class="col-lg-6 col-md-4" align="left">
                    <label for="example-date-input" >Bill Date</label>
                    <telerik:RadDatePicker ID="dateBill" runat="server" ></telerik:RadDatePicker>
                    </div>
                    <div class="col-lg-6 col-md-4">
                     <div class="pickup-location book-item">
                                    <asp:DropDownList ID="ddltype" runat="server" class="custom-select">
                                    <asp:ListItem>---------------------------Please select-----------------------------</asp:ListItem>
                                    <asp:ListItem>BODY WASH</asp:ListItem>
                                    <asp:ListItem>VACUM CLEAN</asp:ListItem>
                                    <asp:ListItem>BODY WASH WITH VACUM CLEAN</asp:ListItem>
                                                                    
                                    </asp:DropDownList>
                                </div></div>

                    <hr />
                           <div class="col-lg-12 col-md-6" align-"center">
                  <div class="log-btn">
                      <asp:Button ID="btnSave" type="submit" runat="server" Text="SAVE" Width="580px" BackColor="White" />
                      <asp:Button ID="btnPrint" type="submit" runat="server" Text="PRINT" Width="580px" BackColor="White" />
                      <hr />
               
                                  </div></div>


                  </div>

                      </div>
                       
                            </form>
                    </div>
                </div>
                </div></div>
             </section> 
                                
                                
                            </div></div></div></div></div></div></div></section>
                                
        </asp:Content>