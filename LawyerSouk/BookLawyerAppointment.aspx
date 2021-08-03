 <%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="BookLawyerAppointment.aspx.cs" Inherits="UserHome" %>

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
    
        .auto-style3 {
            width: 23%;
        }
        .auto-style4 {
            width: 6%;
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
                        <td class="style79" colspan="2">
                             <span class="auto-style5"><strong>Book an appointment With Lawyer Form </strong></span>
                           <hr />
                             </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
							Request<label for="recipient-nameid" class="col-form-label">Id</label></td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:TextBox ID="txtRid" class="form-control"  ReadOnly="true"  runat="server"></asp:TextBox>
						
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <label for="recipient-name" class="col-form-label">Request Appointment Date:</label>
                            </td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:TextBox ID="txtRDate" class="form-control"  onkeypress="return character(event)" placeholder="Full Name" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
							Lawyer<label for="recipient-name" class="col-form-label">Id</label>:</td>
                        <td style="text-align: left" class="auto-style3">
							
						<asp:TextBox ID="txtLawyerId" runat="server" placeholder="Email id" class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="text-align: left">
							<label for="recipient-name" class="col-form-label">Lawyer Name</label>:</td>
                        <td class="auto-style3">
							
						<asp:TextBox ID="txtLawyerName" class="form-control" runat="server"></asp:TextBox>
                                                    	
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="text-align: left">
                            Client Name:</td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:TextBox ID="txtClientName" class="form-control" runat="server"></asp:TextBox>
                                                    	
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
							Client Mobile No:</td>
                        <td class="auto-style3">
							<asp:TextBox ID="txtClientMobileNo" class="form-control" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="text-align: left">
							<label for="recipient-name" class="col-form-label">Enter Your Request Problem</label>
                             <label for="recipient-name" class="col-form-label">Description</label>:</td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:TextBox ID="txtProblemDesc" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
             
                          
                    <tr>
                        <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="Send Request" class="form-control" CausesValidation="true" 
                                    onclick="Button1_Click" />	
						
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

