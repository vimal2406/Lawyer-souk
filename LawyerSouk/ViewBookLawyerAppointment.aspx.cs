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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from LawyerAppointmentRequestInfo where  LawyerId=@username", con);
        cmd.Parameters.AddWithValue("@username", Session["LID"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
             txtRid.Text= dt.Rows[0]["RequestId"].ToString();
             txtRDate.Text= dt.Rows[0]["AppointmentDate"].ToString();
             txtLawyerId.Text= dt.Rows[0]["LawyerId"].ToString();
             txtLawyerName.Text = Session["fname"].ToString();
             txtClientName.Text= dt.Rows[0]["ClientName"].ToString();
             txtClientMobileNo.Text= dt.Rows[0]["MobileNo"].ToString();
             txtProblemDesc.Text= dt.Rows[0]["Comment"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;
        string a = "update LawyerAppointmentRequestInfo set Status=@p2 Where RequestId=@p1";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", Session["RID"]);
        cmd.Parameters.AddWithValue("@p2", DropDownList1.SelectedValue.ToString());
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Request Sent To Client'); window.location.href = 'LawyerHome.aspx';</script>");
    }
}