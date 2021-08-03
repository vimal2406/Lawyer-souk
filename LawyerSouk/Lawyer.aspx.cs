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
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        //con.Open();
        //SqlCommand cmd = new SqlCommand("select * from AadharInfo where  AadharNo=@username ", con);
        //cmd.Parameters.AddWithValue("@username", Session["AadharNo"]);

        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable();

        //da.Fill(dt);

        //if (dt.Rows.Count > 0)
        //{

        //    lblano.Text = dt.Rows[0]["AadharNo"].ToString();
        //    lblname.Text = dt.Rows[0]["Name"].ToString();
        //    lblgender.Text = dt.Rows[0]["Gender"].ToString();
        //    photo.ImageUrl = dt.Rows[0]["Image"].ToString();
        //}
     
    }
}