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
    Random r = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtid.Text = "JID" + r.Next().ToString();
        }

        txtLawyerId.Text = Session["Lid"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO JobOffersInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtid.Text);
        cmd.Parameters.AddWithValue("@p2", txtDate.Text);
        cmd.Parameters.AddWithValue("@p3", txtLawyerId.Text);
        cmd.Parameters.AddWithValue("@p4", Session["fname"]);
        cmd.Parameters.AddWithValue("@p5", txtTitle.Text);
        cmd.Parameters.AddWithValue("@p6", ddlJobtype.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p7", ddlSpicial.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p8", ddlExp.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p9", txtjobD.Text);
        cmd.Parameters.AddWithValue("@p10", txtSkills.Text);
        cmd.Parameters.AddWithValue("@p11", "Open");


        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Job Offer Upload '); window.location.href = 'LawyerHome.aspx';</script>");
    }
}