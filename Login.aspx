<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Rent_a_Car_Login.Master" CodeBehind="Login.aspx.cs" Inherits="Rent_A_Car.User_Login" %>


              <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"/>


<%--<section id="slideslow-bg">--%>
    
     <section id="slider-area">
        <!--== slide Item One ==-->
        <div class="single-slide-item overlay">
   
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                <br />
                        <div class="display-table">
                            <div class="display-table-cell">
                                <h1>S & N ROYALS RENT A CAR</h1>
                                <br />
         <section id="lgoin" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                			<h3>Login!</h3>
							<form action="#">
								<div class="username">
									
                                     <asp:TextBox ID="txtUserName" runat="server" placeholder="Username"></asp:TextBox>
								</div>
								<div class="password">
									 <asp:TextBox ID="txtPassword" runat="server" placeholder="Username" TextMode="Password"></asp:TextBox>
								</div>
								<div class="log-btn">
									<asp:Button ID="btnLogin" CssClass="input-submit" runat="server" Text="Log In" OnClick="btnLogin_Click"/>
								</div>
                                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                                <asp:LinkButton ID="LinkButton1" runat="server" href="Register.aspx" BackColor="Black">Register</asp:LinkButton>
							</form>
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
        
    </section>

      

 


</asp:Content>
