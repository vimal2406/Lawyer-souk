using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System;

public partial class Home1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx"); 
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("LawyerLogin.aspx");   
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserInfo where  MobileNo=@username and Password=@password", con);
        cmd.Parameters.AddWithValue("@username", txtloginmobile.Text);
        cmd.Parameters.AddWithValue("@password", txtloginpass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (txtloginmobile.Text == "123" && txtloginpass.Text == "admin")
        {
            Session["fname"] = "admin";
            Response.Redirect("Admin.aspx");
        }

        else if (dt.Rows.Count > 0)
        {
            Session["Uid"] = dt.Rows[0]["UserId"];
            Session["fname"] = dt.Rows[0]["Name"];
            Response.Redirect("ClientHome.aspx");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
       
    }
}