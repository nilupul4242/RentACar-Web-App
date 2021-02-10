<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R1.aspx.cs" Inherits="Rent_A_Car.R1" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .Grid {
            font-size: medium;
        }
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body style="background-image:url(~/img/)">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="auto-style1" align="center">
        <strong>COMPLETED BILLS 
    </strong> 
    </div>
        <div class="row">
                  <div class="col-lg-6 col-md-4" align="center">
                     <label for="example-date-input" >
                      <br class="Grid" />
                      <span class="Grid">From</span></label>
                    <telerik:RadDatePicker ID="dtpFrom" runat="server" CssClass="Grid"></telerik:RadDatePicker>
                      <label for="example-date-input" ><span class="Grid">To</span></label>
                    <telerik:RadDatePicker ID="dtpTo" runat="server" CssClass="Grid" ></telerik:RadDatePicker>
                      <br class="Grid" />
                  </div>
                    
                      <div class="col-lg-6 col-md-4" align="center">
                      </div>
                 </div>
                          <div class="col-lg-6 col-md-4" align="center">
                              <br class="Grid" />
                      <asp:Button ID="btnGet" type="submit" runat="server" Text="Get Report" BackColor="White" OnClick="btnGet_Click" CssClass="Grid"/>
                      </div>
                                        <div class="col-lg-6 col-md-4" align="center">
                                            <br />
                                    <asp:GridView ID="GridView1" runat="server" Font-Size="Medium" AllowCustomPaging="True" CellPadding="4" CssClass="Grid"                    

                      AlternatingRowStyle-CssClass="alt"

                      PagerStyle-CssClass="pgr" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                                    <HeaderStyle Width="10%" BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle Width="10%" BackColor="White" ForeColor="#003399" />
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>

                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                        </Columns>
    <FooterStyle Width="10%" BackColor="#99CCCC" ForeColor="#003399" />
                                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                        <SortedDescendingHeaderStyle BackColor="#002876" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RENTCARConnectionString %>" SelectCommand="Rent_A_Car_SP_Report_RegisteredCustomers" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="dtpFrom" Name="fromDate" PropertyName="SelectedDate" Type="DateTime" />
                                            <asp:ControlParameter ControlID="dtpTo" Name="Todate" PropertyName="SelectedDate" Type="DateTime" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div> 
    </form>
</body>
</html>
