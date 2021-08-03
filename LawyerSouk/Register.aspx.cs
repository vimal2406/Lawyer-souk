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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserInfo where  MoblileNo=@username and Password=@password", con);
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

            Session["Email"] = dt.Rows[0]["Email"];
            Session["fname"] = dt.Rows[0]["Name"];

            Response.Redirect("UserHome.aspx");


        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
    
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO UserInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtfullname.Text);
        cmd.Parameters.AddWithValue("@p2",txtpass.Text);
        cmd.Parameters.AddWithValue("@p3", txtemail.Text);
        cmd.Parameters.AddWithValue("@p4", txtmobile.Text);
        cmd.Parameters.AddWithValue("@p5", txtaddress.Text);
        cmd.Parameters.AddWithValue("@p6", DropDownList2.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p7", txtcity.Text);
        cmd.Parameters.AddWithValue("@p8", pincode.Text);



        cmd.ExecuteNonQuery();
        con.Close();
        
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Registration Done With EPP');</script>");


    }
}