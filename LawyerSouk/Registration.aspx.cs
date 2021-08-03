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
    string id, year, name,str;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        cn.Open();

        SqlCommand cmd = new SqlCommand("select * from Id", cn);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);



        id = dt.Rows[0]["Id"].ToString();
        name = "LS/C/";
     
     txtid.Text= name  + id;
      
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
       if (addimage.HasFile)
        {
            str = addimage.FileName;


            addimage.PostedFile.SaveAs(Server.MapPath("~/ClientImage/" + str));
            str = "~/ClientImage/" + str.ToString();

        }


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO UserInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtid.Text);
        cmd.Parameters.AddWithValue("@p2", txtfullname.Text);
        cmd.Parameters.AddWithValue("@p3",txtpass.Text);
        cmd.Parameters.AddWithValue("@p4", txtemail.Text);
        cmd.Parameters.AddWithValue("@p5", txtmobile.Text);
        cmd.Parameters.AddWithValue("@p6", txtaddress.Text);
        cmd.Parameters.AddWithValue("@p7", DropDownList2.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p8", txtcity.Text);
        cmd.Parameters.AddWithValue("@p9", pincode.Text);
        cmd.Parameters.AddWithValue("@p10", str);

        cmd.ExecuteNonQuery();
        con.Close();
        increment();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Registration Done With LaywerSouk');window.location.replace('Login.aspx');</script>");


    }

    void increment()
    {
        id = id + 1;
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        cn.Open();
        String s = "update Id set Id=@p1";
        SqlCommand cmd = new SqlCommand(s, cn);
        cmd.Parameters.AddWithValue("@p1", id);
        cmd.ExecuteNonQuery();
        cn.Close();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }


    protected void btncp_Click(object sender, EventArgs e)
    {
        Response.Redirect("LawyerRegistration.aspx");
    }
}