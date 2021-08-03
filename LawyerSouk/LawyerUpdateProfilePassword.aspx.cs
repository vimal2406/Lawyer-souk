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
    static String Pass;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from LawyerInfo where LawyerId=@p1 ", con);
        cmd.Parameters.AddWithValue("@p1", Session["LId"].ToString());

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
           txtUId.Text = dt.Rows[0]["LawyerId"].ToString();
        Pass = dt.Rows[0]["Password"].ToString();

            photo.ImageUrl = dt.Rows[0]["PhotoImage"].ToString();
        }

    }
    String str;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtCurrentPass.Text==Pass)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "Update LawyerInfo set Password=@p2 where LawyerId=@p10";
            cmd = new SqlCommand(a, con);

            cmd.Parameters.AddWithValue("@p2", txtNewPass.Text);
            
            cmd.Parameters.AddWithValue("@p10", Session["LId"].ToString());

            cmd.ExecuteNonQuery();
            con.Close();

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Profile Password Change ');window.location.replace('LawyerLogin.aspx');</script>");

        }

        else
        {
           

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Password Not Match ');window.location.replace('');</script>");
        }
    }
}