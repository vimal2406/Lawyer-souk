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
            enid.Text = dt.Rows[0]["UserId"].ToString();
            sname.Text = dt.Rows[0]["Name"].ToString();
            gender.Text = dt.Rows[0]["Gender"].ToString();
            des.Text = dt.Rows[0]["Pincode"].ToString();
            department.Text = dt.Rows[0]["Address"].ToString();
            cno.Text = dt.Rows[0]["MobileNo"].ToString();
            photo.ImageUrl = dt.Rows[0]["Image"].ToString();
        }

    }
}