<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Rent_A_Car.Master" CodeBehind="Handed_Over_Dtails.aspx.cs" Inherits="Rent_A_Car.Handed_Over_Dtails" %>
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
                        <br />
                        <div class="display-table">
                            <div class="display-table-cell">
                                <h1>S & N ROYALS RENT A CAR</h1>



         <section id="lgoin-page-wrap" class="section-padding">

   
            <div class="row">
                <div class="col-lg-12 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                			<h3>Handed Over Form</h3>
							<form action="#">
                              <div class="container-fluid">

                                  <div>
                              <asp:Label ID="lblStatus" runat="server" Text="Label" Font-Bold="True" Visible="False"></asp:Label>

                          </div>
                  <div class="raw>"
                  <div class="col-lg-6 col-md-4" align-"left">
                  
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>

                  </div>

                      <div class="col-lg-12 col-md-6" align="center">
                      <div class="log-btn">
                      <asp:Button ID="btnSearch" type="submit" runat="server" Text="Search" Width="580px" BackColor="White" OnClick="btnSearch_Click" />
                     </div> 
                             <div class="log-btn">

                     <asp:Label ID="Label1" runat="server" Text="Customer Name : "></asp:Label>
                   <asp:Label ID="lblCustName" runat="server" Text="Label" Visible="False"></asp:Label>

                     </div>
                      </div>
                      <hr />


                <div class="row" >
                <div class="col-lg-3 col-md-3" align="left">
                     <label for="example-date-input" >Return  Date</label>
                   
                    <telerik:RadDatePicker ID="dateReturn" runat="server" AutoPostBack="True" OnSelectedDateChanged="dateReturn_SelectedDateChanged" >
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" DisplayText="" LabelWidth="40%" type="text" value="" AutoPostBack="True"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                     </telerik:RadDatePicker></div>
                   
                     
               <div class="col-lg-3 col-md-3" align="left">
               <asp:TextBox ID="txtExraDate" runat="server" placeholder="Extra Dates"></asp:TextBox>
               </div>
                
                <div class="col-lg-6 col-md-4" align="left">
                <asp:TextBox ID="txtRetMileage" runat="server" placeholder="Return Mileage"></asp:TextBox>
                </div>
                </div>

                <div class="raw">
                 <div class="col-lg-6 col-md-4" align="left" style="padding-left: 2px;">
                 <asp:TextBox ID="txtExDtFee" runat="server"  placeholder="Extra Date Fee"></asp:TextBox>
                  </div>

                  <div class="col-lg-6 col-md-4" align="left" style="padding-left: 2px;">
                 <asp:TextBox ID="txtExKmFee" runat="server" placeholder="Extra Km Fee"></asp:TextBox>
                  </div>
                  </div> 
                           
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtRetFuel" runat="server" placeholder="Return Fuel"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="txtExtrakm" runat="server" placeholder="Extra Km's" BackColor="Gray" Enabled="False" Font-Bold="True" ForeColor="#00CC00"></asp:TextBox>
                </div>


                 <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="txtTotalAmount" runat="server" placeholder="Total Amount" BackColor="Gray" Enabled="False" Font-Bold="True" ForeColor="#00CC00"></asp:TextBox>
                 </div>
                 </div>

                
               
                 <div class="row" >
              <%--  <div class="col-lg-6 col-md-4" align="center">
                     <label for="example-date-input" >License Expiry Date</label>
                    <telerik:RadDatePicker ID="RadDatePicker4" runat="server"></telerik:RadDatePicker></div>
                    
                      <div class="col-lg-6 col-md-4" align="center">
                      <label for="example-date-input" >Insurance Expiry Date</label>
                    <telerik:RadDatePicker ID="RadDatePicker5" runat="server" ></telerik:RadDatePicker></div>--%>


                               <%-- <div class="row">--%>
            

                

                     
                      <div class="col-lg-12 col-md-6" align-"center">
                  <div class="log-btn">
                      <asp:Button ID="btnCal" type="submit" runat="server" Text="CALCULATE" Width="580px" BackColor="White" OnClick="btnCal_Click"/>
                      <asp:Button ID="btnSave" type="submit" runat="server" Text="SAVE" Width="580px" BackColor="White" OnClick="btnSave_Click" />
                      <asp:Button ID="btnPrint" type="submit" runat="server" Text="PRINT" Width="580px" BackColor="White" OnClick="btnPrint_Click" />
                      <hr />
               
                                  </div></div>


                 </div></div></form></div></div></div></div></section></div></div></div></div></div></div></div></section></asp:Content>