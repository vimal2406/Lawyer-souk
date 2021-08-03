 <%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer.master" AutoEventWireup="true" CodeFile="UploadLawyerJobView.aspx.cs" Inherits="UserHome" %>

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
							Law Practice Experience:</td>
            <td>
                           	
                            <asp:TextBox ID="txtexp" class="form-control"  runat="server"></asp:TextBox>
						

						</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							<label for="recipient-name" class="col-form-label">JobDescription:</label></td>
            <td>
							
						<asp:TextBox ID="txtjobD" class="form-control" runat="server"></asp:TextBox>
                                                    	
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtjobD" ErrorMessage="****" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    	
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
							<label for="recipient-name" class="col-form-label">KeySkillsRequirment:</label></td>
            <td>
                             <asp:TextBox ID="txtSkills" class="form-control" runat="server"></asp:TextBox>
                                                    	<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSkills" ErrorMessage="*****" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    	</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Upload Resume:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                    	<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSkills" ErrorMessage="Upload CV" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    	</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Text="Send Job Request" class="form-control" CausesValidation="true" 
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

