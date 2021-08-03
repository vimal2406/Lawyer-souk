<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer.master" AutoEventWireup="true" CodeFile="Lawyer.aspx.cs" Inherits="UserHome" %>

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

<div style="height: auto; width:1000px; margin-left:150px; margin-top:0px">

            <table style="border-style: solid; border-width: 1px; padding: 1px 4px; width: 100%; height: 289px; background-image:url(Digitalpassport/dpbg.png);">
                    <tr>
                         <td class="style10" colspan="5">
                            Register Passenger Details</td>
                    </tr>
                    <tr>
                        <td rowspan="4" class="style12">
                            <br />
                            <asp:Image ID="photo" runat="server" Height="202px" Width="165px" 
                                CssClass="style79" />
                        </td>
                        <td class="style18">
                            AadharNo:</td>
                        <td class="style19">
                            <asp:Label ID="lblano" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                        <td class="style15">
                            &nbsp;</td>
                        <td style="text-align: left" class="style15">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18" style="text-align: left">
                            Name:</td>
                        <td colspan="2" style="text-align: left">
                            <asp:Label ID="lblname" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                        <td class="style15">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18" style="text-align: left">
                            Nationality:</td>
                        <td style="text-align: left" class="style19">
                            <asp:Label ID="lblnationality" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light">Indian</asp:Label>
                        </td>
                        <td class="style15" style="text-align: left">
                            &nbsp;</td>
                        <td style="text-align: left" class="style15">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18" style="text-align: left">
                            Gender:</td>
                        <td style="text-align: left" class="style19">
                            <asp:Label ID="lblgender" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                  
                    <tr>
                        <td rowspan="2" style="text-align: left" class="style12">
                            &nbsp;</td>
                        <td class="style18" style="text-align: left">
                            VerifyBy:</td>
                        <td style="text-align: left" class="style19">
                            <asp:Label ID="lblverify" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light">AadharSystem</asp:Label>
                        </td>
                        <td class="style15" style="text-align: left">
                            &nbsp;</td>
                        <td style="text-align: left" class="style15">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style15">
                            &nbsp;</td>
                        <td class="style15">
                            &nbsp;</td>
                    </tr>
                </table>

        <hr />

        </div>
</div>


</asp:Content>

