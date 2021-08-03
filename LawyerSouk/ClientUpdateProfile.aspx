<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="ClientUpdateProfile.aspx.cs" Inherits="UserHome" %>

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
            width: 23%;
        }
        .auto-style9 {
            width: 104px;
        }
        .auto-style10 {
            width: 63%;
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
                        <td class="style79" colspan="3">
                             Welcome To LawyerSouk Client Profile Update
                           <hr />
                             </td>
                    </tr>
                    <tr>
                        <td rowspan="5" class="auto-style7">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="photo" runat="server" Height="202px" Width="165px" 
                                CssClass="style79" />
                        </td>
                        <td class="auto-style9">
                    User Id:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:TextBox ID="txtUId" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                       User Name:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            Email:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: left">
             Gender:</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="text-align: left">
                  User ContactNo:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        <td class="auto-style9">
                            Address:</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="4" style="text-align: left" class="auto-style7">
                            Select Profile Image If You Want To Change</td>
                        <td class="auto-style9" style="text-align: left">
                            Pincode:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
                        </td>
                    </tr>
             
                          
                    <tr>
                        <td class="auto-style9" style="text-align: left">
                            City:</td>
                        <td style="text-align: left" class="auto-style10">
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        </td>
                    </tr>
             
                          
                    <tr>
                        <td class="auto-style9">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UpdateProfile" />
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

