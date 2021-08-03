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
    string id, year, name,str,str1;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        cn.Open();

        SqlCommand cmd = new SqlCommand("select * from Id", cn);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);



        id = dt.Rows[0]["Id"].ToString();
        name = "LS/L";
     
     txtid.Text= name  + id;
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       if (addimage.HasFile)
        {
            str = addimage.FileName;


            addimage.PostedFile.SaveAs(Server.MapPath("LawyerImage/" + str));
            str = "LawyerImage/" + str.ToString();

        }
       if (FileUpload1.HasFile)
       {
           str1 = FileUpload1.FileName;


           FileUpload1.PostedFile.SaveAs(Server.MapPath("LawyerImage/" + str1));
           str1 = "LawyerImage/" + str1.ToString();

       }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO LawyerInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13,@p14)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtid.Text);
        cmd.Parameters.AddWithValue("@p2", txtfullname.Text);
        cmd.Parameters.AddWithValue("@p3", txtemail.Text);
        cmd.Parameters.AddWithValue("@p4", txtmobile.Text);
        cmd.Parameters.AddWithValue("@p5", txtpass.Text);
        cmd.Parameters.AddWithValue("@p6", ddlExp.SelectedValue.ToString().Trim());
        cmd.Parameters.AddWithValue("@p7", ddlSpicial.SelectedValue.ToString().Trim());
        cmd.Parameters.AddWithValue("@p8", txtWorkingDesc.Text);
        cmd.Parameters.AddWithValue("@p9", ddljotype.SelectedValue.ToString().Trim());
        cmd.Parameters.AddWithValue("@p10",txtyear.Text);
        cmd.Parameters.AddWithValue("@p11", txtlocation.Text );
        cmd.Parameters.AddWithValue("@p12", str);
        cmd.Parameters.AddWithValue("@p13", str1);
        cmd.Parameters.AddWithValue("@p14", "Active");

        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Registration Done With EPP');window.location.replace('LawyerLogin.aspx');</script>");


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    
}