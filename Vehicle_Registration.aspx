<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Rent_A_Car.Master" CodeBehind="Vehicle_Registration.aspx.cs" Inherits="Rent_A_Car.Vehicle_Registration" %>
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
                			<h3>Vehicle Registration Form</h3>
							<form action="#">
                              <div class="container-fluid">
                       
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Vehicle Brand (TOYOTA)"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="Vehicle Type (Car/Van)"></asp:TextBox>
                  </div></div>

                                  <!-- 2nd row -->
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Reg Number (CAB-2121)"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                 <asp:TextBox ID="TextBox5" runat="server" placeholder="PER day  (Rs.)"></asp:TextBox>
                  </div></div>


                                                      <!-- 3rd row -->
                <div class="row">
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="TextBox6" runat="server" placeholder="Long Turm  (Rs.)"></asp:TextBox>
                </div>
                
                <div class="col-lg-6 col-md-4">
                <asp:TextBox ID="TextBox7" runat="server" placeholder="Extra Milage"></asp:TextBox>
                </div></div>
                                  <div class="align-center">
                  <div class="col-lg-12 col-md-6">
                  <div class="log-btn">
                  <asp:Button ID="Button1" type="submit" runat="server" Text="Register" Width="580px" BackColor="White" />

                </div></div>

               <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>


                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                  
				<%--<button type="submit"><i class="fa fa-sign-in"></i> Log In</button>--%>
				</div>      
                  </div>
                     </div>
                        </div>
                          </div>                     
                            </div>
                                     </div>


                     </div>

                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
             </section>   


                

         </asp:Content>
         