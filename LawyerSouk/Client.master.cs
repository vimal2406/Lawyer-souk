using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label1.Text = Session["Name"].ToString().ToUpper();
        lblDate.Text = DateTime.Now.ToString();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
    }
}
