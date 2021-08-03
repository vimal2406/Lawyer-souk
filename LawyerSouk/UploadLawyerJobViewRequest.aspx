 <%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer.master" AutoEventWireup="true" CodeFile="UploadLawyerJobViewRequest.aspx.cs" Inherits="UserHome" %>

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
    
        .auto-style6 {
            height: auto;
            width: 1000px;
        }
    
        .auto-style7 {
            width: 127px;
        }
    
        </style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height:auto ; width:auto; ">

<div style="margin-left:150px" class="auto-style6">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style7">
							&nbsp;</td>
            <td>
                            &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							<label for="recipient-nameid" class="col-form-label">Job Reqiest Id:</label></td>
            <td>
                            <asp:TextBox ID="txtid" class="form-control"  ReadOnly="true"  runat="server"></asp:TextBox>
						
						</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							<label for="recipient-name" class="col-form-label">Job Posted Date:</label></td>
            <td>
                            <asp:TextBox ID="txtDate" class="form-control"  onkeypress="return character(event)" placeholder="Full Name" runat="server"></asp:TextBox>
						    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="Select Date" ForeColor="Red"></asp:RequiredFieldValidator>
						</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							Lawyer
                            <label for="recipient-name" class="col-form-label">Id:</label></td>
            <td>
							
						<asp:TextBox ID="txtLawyerId" runat="server" placeholder="Email id" class="form-control"></asp:TextBox>
                              	</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							Job Title:</td>
            <td>
                            <asp:TextBox ID="txtTitle" class="form-control"  runat="server"></asp:TextBox>
						

                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							<label for="recipient-name" class="col-form-label">JobType:</label></td>
            <td>
                            <asp:TextBox ID="txtJobType" class="form-control"  runat="server"></asp:TextBox>
						

                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							<label for="recipient-name1" class="col-form-label">Industry:</label></td>
            <td>
                           	
                            <asp:TextBox ID="txtIndustry" class="form-control"  runat="server"></asp:TextBox>
						

						</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							<label for="recipient-name" class="col-form-label">JobId:</label></td>
            <td>
							
						<asp:TextBox ID="txtjobIdq" class="form-control" runat="server"></asp:TextBox>
                                                    	
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Requested By:</td>
            <td>
                             <asp:TextBox ID="txtRequestedBy" class="form-control" runat="server"></asp:TextBox>
                                                    	</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Download Resume:</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server">Download</asp:HyperLink>
                                                    	</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Accept/Reject:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="124px">
                    <asp:ListItem>Accept</asp:ListItem>
                    <asp:ListItem>Reject</asp:ListItem>
                </asp:DropDownList>
                                                    	</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Text="Send Job Request Status" class="form-control" CausesValidation="true" 
                                    onclick="Button1_Click" />	
						
						</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="border-style: solid;  width: 100%; height: auto;  color:Black">

          </table>
    	
  	
</div>
</div>


</asp:Content>

