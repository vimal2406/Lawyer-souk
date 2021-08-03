using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class UserHome : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from UserInfo where UserId=@p1 ", con);
        cmd.Parameters.AddWithValue("@p1", Session["Uid"].ToString());

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
           txtUId.Text = dt.Rows[0]["UserId"].ToString();
           txtName.Text = dt.Rows[0]["Name"].ToString();
          txtGender.Text = dt.Rows[0]["Gender"].ToString();
           txtPincode.Text = dt.Rows[0]["Pincode"].ToString();
           txtAddress.Text = dt.Rows[0]["Address"].ToString();
          txtContactNo.Text = dt.Rows[0]["MobileNo"].ToString();
           txtCity.Text = dt.Rows[0]["City"].ToString();
           txtEmail.Text = dt.Rows[0]["Email"].ToString();
            photo.ImageUrl = dt.Rows[0]["Image"].ToString();
        }

    }
    String str;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            str = FileUpload1.FileName;


            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/ClientImage/" + str));
            str = "~/ClientImage/" + str.ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "Update UserInfo set Name=@p2,Email=@p3,MobileNo=@p4,Address=@p5,Gender=@p6,City=@p7,Pincode=@p8,Image=@p9 where UserId=@p10)";
            cmd = new SqlCommand(a, con);

            cmd.Parameters.AddWithValue("@p2", txtName.Text);
            cmd.Parameters.AddWithValue("@p3", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p4", txtContactNo.Text);
            cmd.Parameters.AddWithValue("@p5", txtAddress.Text);
            cmd.Parameters.AddWithValue("@p6", txtGender.Text);
            cmd.Parameters.AddWithValue("@p7", txtCity.Text);
            cmd.Parameters.AddWithValue("@p8", txtPincode.Text);
            cmd.Parameters.AddWithValue("@p9", str);
            cmd.Parameters.AddWithValue("@p10", txtUId.Text);

            cmd.ExecuteNonQuery();
            con.Close();

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Profile Update Done With LaywerSouk');window.location.replace('Login.aspx');</script>");

        }

        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "Update UserInfo set Name=@p2,Email=@p3,MobileNo=@p4,Address=@p5,Gender=@p6,City=@p7,Pincode=@p8  where UserId=@p10)";
            cmd = new SqlCommand(a, con);

            cmd.Parameters.AddWithValue("@p2", txtName.Text);
            cmd.Parameters.AddWithValue("@p3", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p4", txtContactNo.Text);
            cmd.Parameters.AddWithValue("@p5", txtAddress.Text);
            cmd.Parameters.AddWithValue("@p6", txtGender.Text);
            cmd.Parameters.AddWithValue("@p7", txtCity.Text);
            cmd.Parameters.AddWithValue("@p8", txtPincode.Text);
           
            cmd.Parameters.AddWithValue("@p10", txtUId.Text);

            cmd.ExecuteNonQuery();
            con.Close();

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Profile Update Done With LaywerSouk');window.location.replace('ClientHome.aspx');</script>");
        }
    }
}