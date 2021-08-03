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
      if(!IsPostBack)
        {
            txtRid.Text = "R" + r.Next().ToString();
        }

        txtLawyerId.Text = Session["LawyerCId"].ToString();
        txtClientName.Text = Session["fname"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO LawyerAppointmentRequestInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtRid.Text);
        cmd.Parameters.AddWithValue("@p2", Convert.ToDateTime(DateTime.Now));
        cmd.Parameters.AddWithValue("@p3", txtLawyerId.Text);
        cmd.Parameters.AddWithValue("@p4", txtRDate.Text);
        cmd.Parameters.AddWithValue("@p5", Session["Uid"]);
        cmd.Parameters.AddWithValue("@p6", txtClientName.Text);
        cmd.Parameters.AddWithValue("@p7", txtClientMobileNo.Text);
        cmd.Parameters.AddWithValue("@p8", txtProblemDesc.Text);
        cmd.Parameters.AddWithValue("@p9", "Pending");



        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Request Sent To Lawyer'); window.location.href = 'ClientHome.aspx';</script>");
    }
}