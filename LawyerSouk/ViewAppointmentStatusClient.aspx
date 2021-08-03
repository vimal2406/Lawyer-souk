<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="ViewAppointmentStatusClient.aspx.cs" Inherits="UserHome" %>

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
    
        </style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:auto ; width:auto; ">

<div style="height: auto; width:1000px; margin-left:150px">
 <hr />
     <span class="style1">Appointment Status</span>
    <hr />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" Width="990px" 
          BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
         <Columns>
             <asp:BoundField DataField="RequestId" HeaderText="RequestId" SortExpression="RequestId" />
             <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" DataFormatString="{0:dd/MM/yyyy}" />
             <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
             <asp:BoundField DataField="LawyerId" HeaderText="LawyerId" SortExpression="LawyerId" />
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
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [RequestId], [AppointmentDate], [Comment], [LawyerId], [Status] FROM [LawyerAppointmentRequestInfo] WHERE ([ClientId] = @ClientId)">
         <SelectParameters>
             <asp:SessionParameter Name="ClientId" SessionField="Uid" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>


  	
</div>
</div>


</asp:Content>

