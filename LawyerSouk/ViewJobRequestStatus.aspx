<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer.master" AutoEventWireup="true" CodeFile="ViewJobRequestStatus.aspx.cs" Inherits="RejectList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #0000CC;
            font-size: large;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height:400px; width:1000px; margin-left:150px;">
     <span class="style1">Request For Job Status</span>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
         GridLines="Vertical" Width="990px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="RequestId" HeaderText="RequestId" SortExpression="RequestId" />
             <asp:BoundField DataField="JobId" HeaderText="JobId" SortExpression="JobId" />
             <asp:BoundField DataField="PostedOn" HeaderText="PostedOn" SortExpression="PostedOn" />
             <asp:BoundField DataField="LawyerId" HeaderText="LawyerId" SortExpression="LawyerId" />
             <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
             <asp:BoundField DataField="Jobtype" HeaderText="Jobtype" SortExpression="Jobtype" />
             <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
         </Columns>
         <FooterStyle BackColor="#CCCC99" />
         <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
         <RowStyle BackColor="#F7F7DE" />
         <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#FBFBF2" />
         <SortedAscendingHeaderStyle BackColor="#848384" />
         <SortedDescendingCellStyle BackColor="#EAEAD3" />
         <SortedDescendingHeaderStyle BackColor="#575357" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [RequestId], [JobId], [PostedOn], [LawyerId], [JobTitle], [Jobtype], [Status] FROM [JobOffersRequestInfo] WHERE ([RequestId] = @RequestId)">
         <SelectParameters>
             <asp:SessionParameter Name="RequestId" SessionField="LID" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>

</div>


</asp:Content>

