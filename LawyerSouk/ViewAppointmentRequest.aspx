<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="ViewAppointmentRequest.aspx.cs" Inherits="UserHome" %>

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
     <span class="style1">View Appointment </span>
    <hr />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
         GridLines="None" Width="990px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
               <asp:CommandField ShowSelectButton="True" SelectText="View" HeaderText="DoAction" />
             <asp:BoundField DataField="RequestId" HeaderText="RequestId" SortExpression="RequestId" />
             <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" SortExpression="RequestDate" />
             <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
             <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
             <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
             <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [RequestId], [RequestDate], [ClientName], [AppointmentDate], [MobileNo], [Comment] FROM [LawyerAppointmentRequestInfo] WHERE (([Status] = @Status) AND ([LawyerId] = @LawyerId))">
         <SelectParameters>
             <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
             <asp:SessionParameter Name="LawyerId" SessionField="LId" Type="String" />
         </SelectParameters>
    </asp:SqlDataSource>

  	
</div>
</div>


</asp:Content>

