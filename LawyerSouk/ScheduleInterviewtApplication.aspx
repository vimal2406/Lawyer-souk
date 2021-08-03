<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="ScheduleInterviewtApplication.aspx.cs" Inherits="Career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style135
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: 14px;
        }
        .style136
        {
        color: #000000;
        font-weight: bold;
        font-size: 14px;
        text-align: left;
        background-color: #C0C0C0;
    }
        .style137
        {
        font-size: 14px;
        background-color: #C0C0C0;
    }
        .style138
        {
        width: 133px;
        background-color: #C0C0C0;
    }
        .style139
        {
            font-weight: normal;
            font-size: 14px;
        }
        .style140
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: 14px;
            text-align: left;
        }
        .style141
        {
        color: #FFFFFF;
        font-weight: normal;
        font-size: 14px;
        text-align: left;
        background-color: #C0C0C0;
    }
        .style145
    {
        font-weight: normal;
        font-size: 14px;
        background-color: #C0C0C0;
    }
    .style146
    {
        background-color: #C0C0C0;
    }
    .style147
    {
        color: #FFFFFF;
        font-weight: normal;
        font-size: 14px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:9px; width:1000px; background-color:Transparent"></div>
   <div style="height: auto; width:1010px; margin-left:150px ; background-color: Silver">
   
                   
    
       <table style="width: 1010px; height: auto; background-color:#ACDBF9">
           <tr>
               <td class="style135">
                   &nbsp;</td>
           </tr>

           
          
          
       </table>
   
            <table style="width: 100%; height: 445px; color:Black">
        <tr>
            <td colspan="4" class="style146">
                <img alt="" src="image/online_enquiry.png" 
                    style="height: 35px; width: 37px" />ScheduleInterView For Employee Form</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left" class="style146">
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    Mandatory Field Details*</h2>
            </td>
            <td rowspan="15" class="style139">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                RequestId:</td>
            <td class="style141">
                <asp:Label ID="Eid" runat="server" style="text-align: left; color: #000000"></asp:Label>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                <br />
                Send Date Time:</td>
            <td class="style141">
                <asp:Label ID="datetime" runat="server" 
                    style="text-align: left; color: #000000"></asp:Label>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td  colspan="2" class="style145" style="text-align: left">
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    &nbsp;</h2>
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    Your Personal Details</h2>
                <p class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    &nbsp;</p>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                Id:</td>
            <td class="style136">
                <asp:TextBox ID="fullname" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                MobileNo:</td>
            <td class="style141">
                <asp:TextBox ID="Email" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                JobId:</td>
            <td class="style141">
                       
                        <span class="style2">
                <asp:TextBox ID="gender" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                D.O.B:</td>
            <td class="style136">
                <asp:TextBox ID="dob" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                CompanyId:</td>
            <td class="style141">
                <asp:TextBox ID="cno" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Select InterView Date:</td>
          
            <td class="style136">
                <asp:TextBox ID="txtidate" runat="server" CssClass="text" Height="28px" 
                    Width="178px" TextMode="Date"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Schedule Time:</td>
          
            <td class="style136">
                <asp:TextBox ID="txttime" runat="server" CssClass="text" Height="28px" 
                    Width="178px" TextMode="Time"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                InterView Loacation:</td>
          
            <td class="style136">
                <asp:TextBox ID="txtlocation" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                &nbsp;</td>
          
            <td class="style136">
                &nbsp;</td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                &nbsp;</td>
          
            <td class="style136">
                &nbsp;</td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                &nbsp;</td>
          
            <td class="style136">
                <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" BorderStyle="Solid" 
                    onclick="Button1_Click" Text="Send Interview Alert To Employee" />
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
    </table>  
          
    
    </div>
  

   
</asp:Content>

