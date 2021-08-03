 <%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer.master" AutoEventWireup="true" CodeFile="ViewBookLawyerAppointmentHistory.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        color: #0033CC;
        font-size: x-large;
    }
    .style12
    {
        width: 20%;
    }
    .style15
    {
        width: 3%;
    }
    .style18
    {
        width: 85px;
    }
    .style19
    {
        width: 65%;
    }
    
        .auto-style5 {
            color: #003399;
        }
    
        </style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:auto ; width:auto; ">

<div style="height: auto; width:1000px; margin-left:150px">
    <table style="border-style: solid;  width: 100%; height:250px;  color:Black">

          <tr >
            <td class="style61">
          
                </td>
            <td class="style62">
               
                <table style="border-style: solid;  width: 100%; height: 289px; ">
                    <tr>
                        <td class="style79">
                             <span class="auto-style5"><strong>View Book an appointment With Lawyer&nbsp; History</strong></span><hr />
                             </td>
                    </tr>
                    <tr>
                        <td>
							<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                                <Columns>
                                    <asp:BoundField DataField="RequestId" HeaderText="RequestId" SortExpression="RequestId" />
                                    <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" SortExpression="RequestDate" />
                                    <asp:BoundField DataField="LawyerId" HeaderText="LawyerId" SortExpression="LawyerId" />
                                    <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
                                    <asp:BoundField DataField="ClientId" HeaderText="ClientId" SortExpression="ClientId" />
                                    <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
                                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                                    <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [LawyerAppointmentRequestInfo] WHERE ([LawyerId] = @LawyerId)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="LawyerId" SessionField="LID" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    </table>
                &nbsp;&nbsp;</td>
        </tr>

          <tr >
            <td class="style6">
                &nbsp;
                </td>
            <td class="style60">
               
               

                &nbsp;&nbsp;</td>
        </tr>


        </table>
  	
</div>
</div>


</asp:Content>

