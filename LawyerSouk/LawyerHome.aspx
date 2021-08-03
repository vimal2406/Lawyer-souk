<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer.master" AutoEventWireup="true" CodeFile="LawyerHome.aspx.cs" Inherits="UserHome" %>

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
    
        .auto-style7 {
            width: 24%;
        }
        .auto-style9 {
            width: 104px;
        }
        .auto-style10 {
            width: 63%;
        }
    
        .auto-style11 {
            width: 979px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:auto ; width:auto; ">

<div style="height: auto; width:1000px; margin-left:150px">
    <table style="border-style: solid;  width: 100%; height: auto;  color:Black">

          <tr >
            <td class="style61">
          
                </td>
            <td class="auto-style11">
               
                <table style="border-style: solid;  width: 100%; height: 289px; ">
                    <tr>
                        <td class="style79" colspan="3">
                             Welcome To LawyerSouk Client Portal
                           <hr />
                             </td>
                    </tr>
                    <tr>
                        <td rowspan="4" class="auto-style7">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="photo" runat="server" Height="202px" Width="165px" 
                                CssClass="style79" />
                        </td>
                        <td class="auto-style9">
                    User Id:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:Label ID="enid" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                       User Name:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:Label ID="sname" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: left">
             Gender:</td>
                        <td class="auto-style10">
                            <asp:Label ID="gender" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: left">
                  User ContactNo:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:Label ID="cno" runat="server" CssClass="style81" Font-Size="14pt" 
                                style="text-align: left" Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            </td>
                        <td class="auto-style9">
                            Address:</td>
                        <td class="auto-style10">
                            <asp:Label ID="department" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" style="text-align: left" class="auto-style7">
                            &nbsp;</td>
                        <td class="auto-style9" style="text-align: left">
                            Pincode:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:Label ID="des" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
             
                          
                    <tr>
                        <td class="auto-style9">
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;</td>
        </tr>

          <tr >
            <td class="style6">
                &nbsp;
                </td>
            <td class="auto-style11">
               
               

                &nbsp;&nbsp;Pending Appointment Request :<asp:Label ID="lblRequest" runat="server"></asp:Label>
              </td>
        </tr>


          <tr >
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style11">
               
               

                &nbsp;</td>
        </tr>


          <tr >
            <td class="style6">
                &nbsp;</td>
            <td class="auto-style11">
               
               

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
         GridLines="None" Width="990px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" Font-Size="9pt" HorizontalAlign="Left" EmptyDataText="No Pending Appointment Request">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
               <asp:CommandField ShowSelectButton="True" SelectText="View" HeaderText="DoAction" /> 
             <asp:BoundField DataField="RequestId" HeaderText="RequestId" SortExpression="RequestId" />
             <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" SortExpression="RequestDate" />
             <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
             <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
             <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
             <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [RequestId], [RequestDate], [AppointmentDate], [ClientName], [MobileNo], [Comment] FROM [LawyerAppointmentRequestInfo] WHERE (([Status] = @Status) AND ([LawyerId] = @LawyerId))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                        <asp:SessionParameter Name="LawyerId" SessionField="Lid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
              </td>
        </tr>


       

         </table>

     <table style="border-style: solid;  width:100%; height: auto;  color:Black">
          <tr >
            <td class="style6">
                &nbsp;</td>
            <td class="style60">
               
               

                &nbsp;</td>
        </tr>


          <tr >
            <td class="style6">
                Lawyer Job Offer :<asp:Label ID="lblJobOffer" runat="server"></asp:Label>
              </td>
            <td class="style60">
               
               

                &nbsp;</td>
        </tr>


          <tr >
            <td class="style6" colspan="2">
                &nbsp;</td>
        </tr>


          <tr >
            <td class="style6" colspan="2">
               
               

     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
         CellPadding="3" DataSourceID="SqlDataSource2" 
         GridLines="Vertical" Width="990px" 
         onselectedindexchanged="GridView2_SelectedIndexChanged" Font-Size="9pt" HorizontalAlign="Left" EmptyDataText="No Pending Appointment Request" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
         <AlternatingRowStyle BackColor="#DCDCDC" />
         <Columns>
               <asp:CommandField ShowSelectButton="True" SelectText="View" HeaderText="DoAction" />
             <asp:BoundField DataField="JobId" HeaderText="JobId" SortExpression="JobId" />
             <asp:BoundField DataField="PostedOn" HeaderText="PostedOn" SortExpression="PostedOn" />
             <asp:BoundField DataField="LawyerName" HeaderText="LawyerName" SortExpression="LawyerName" />
             <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
             <asp:BoundField DataField="Jobtype" HeaderText="Jobtype" SortExpression="Jobtype" />
             <asp:BoundField DataField="Industry" HeaderText="Industry" SortExpression="Industry" />
             <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
             <asp:BoundField DataField="JobDescription" HeaderText="JobDescription" SortExpression="JobDescription" />
             <asp:BoundField DataField="KeySkillsRequirment" HeaderText="KeySkillsRequirment" SortExpression="KeySkillsRequirment" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#0000A9" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#000065" />
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [JobId], [PostedOn], [LawyerName], [JobTitle], [Jobtype], [Industry], [Experience], [JobDescription], [KeySkillsRequirment] FROM [JobOffersInfo] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Open" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
        </tr>


          <tr >
            <td class="style6">
                &nbsp;</td>
            <td class="style60">
               
               

                &nbsp;</td>
        </tr>


          </table>

     <table style="border-style: solid;  width:100%; height: auto;  color:Black">
          <tr >
            <td class="style6">
                &nbsp;</td>
            <td class="style60">
               
               

                &nbsp;</td>
        </tr>


          <tr >
            <td class="style6">
                Lawyer Job Request Info :<asp:Label ID="lblJobRequestInfo" runat="server"></asp:Label>
              </td>
            <td class="style60">
               
               

                &nbsp;</td>
        </tr>


          <tr >
            <td class="style6" colspan="2">
                &nbsp;</td>
        </tr>


          <tr >
            <td class="style6" colspan="2">
               
               

     <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
         CellPadding="3" DataSourceID="SqlDataSource3" ForeColor="Black" 
         GridLines="Vertical" Width="990px" 
         onselectedindexchanged="GridView3_SelectedIndexChanged" Font-Size="9pt" HorizontalAlign="Left" EmptyDataText="No Pending Appointment Request" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
         <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
             <asp:CommandField ShowSelectButton="True" SelectText="View" HeaderText="DoAction" />
             <asp:BoundField DataField="RequestId" HeaderText="RequestId" SortExpression="RequestId" />
             <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
             <asp:BoundField DataField="Jobtype" HeaderText="Jobtype" SortExpression="Jobtype" />
             <asp:BoundField DataField="RequestByName" HeaderText="RequestByName" SortExpression="RequestByName" />
             <asp:BoundField DataField="PostedOn" HeaderText="PostedOn" SortExpression="PostedOn" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [RequestId], [JobTitle], [Jobtype], [RequestByName], [PostedOn] FROM [JobOffersRequestInfo] WHERE (([LawyerId] = @LawyerId) AND ([Status] = @Status))">
                    <SelectParameters>
                        <asp:SessionParameter Name="LawyerId" SessionField="LID" Type="String" />
                        <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
        </tr>


          <tr >
            <td class="style6">
                &nbsp;</td>
            <td class="style60">
               
               

                &nbsp;</td>
        </tr>


          </table>
        
</div>
</div>


</asp:Content>

