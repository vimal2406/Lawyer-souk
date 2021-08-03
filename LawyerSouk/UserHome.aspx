<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="home1" Title="::EPPUserHome ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style65
        {
            text-align: left;
            height: 62px;
        }
        .style67
        {
            width: 130px;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style76
        {
            width: 254px;
            text-align: left;
        }
        .style79
        {
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style81
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style82
        {
            width: 254px;
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style83
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
        }
        .style85
        {
            width: 226px;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style86
        {
            width: 254px;
            text-align: left;
            height: 62px;
        }
        .style87
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
            height: 62px;
        }
        .style88
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
            height: 48px;
        }
        .style89
        {
            height: 48px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <div style="height:auto ; width:auto; margin-top:20px">

<div style="height: auto; width:1000px; margin-left:200px">
    <table style="border-style: solid;  width: 100%; height:250px;  color:Black">

          <tr >
            <td class="style61">
          
                </td>
            <td class="style62">
               
                <table style="border-style: solid;  width: 100%; height: 289px; ">
                    <tr>
                        <td class="style79" colspan="3">
                             Welcome To EPP Employee Portal
                           <hr />
                             </td>
                    </tr>
                    <tr>
                        <td rowspan="4" class="style76">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="photo" runat="server" Height="202px" Width="165px" 
                                CssClass="style79" />
                        </td>
                        <td class="style88">
                    User Id:</td>
                        <td style="text-align: left" class="style89">
                            <asp:Label ID="enid" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83">
                       User Name:</td>
                        <td style="text-align: left">
                            <asp:Label ID="sname" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83" style="text-align: left">
             Gender:</td>
                        <td class="style81">
                            <asp:Label ID="gender" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83" style="text-align: left">
                  User ContactNo:</td>
                        <td style="text-align: left">
                            <asp:Label ID="cno" runat="server" CssClass="style81" Font-Size="14pt" 
                                style="text-align: left" Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style86">
                            </td>
                        <td class="style87">
                            Address:</td>
                        <td class="style65">
                            <asp:Label ID="department" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" style="text-align: left" class="style82">
                            &nbsp;</td>
                        <td class="style85" style="text-align: left">
                            Pincode:</td>
                        <td style="text-align: left">
                            <asp:Label ID="des" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
             
                          
                    <tr>
                        <td class="style79">
                            &nbsp;</td>
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

