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
    string str, Image;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from JobOffersRequestInfo where  RequestId=@username", con);
        cmd.Parameters.AddWithValue("@username", Session["JRID"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            txtid.Text= dt.Rows[0]["RequestId"].ToString();
            txtDate.Text = dt.Rows[0]["PostedOn"].ToString();
            txtjobIdq.Text = dt.Rows[0]["JobId"].ToString();
            txtLawyerId.Text= dt.Rows[0]["LawyerId"].ToString();
            txtTitle.Text= dt.Rows[0]["JobTitle"].ToString();
           
           txtRequestedBy.Text= dt.Rows[0]["RequestByName"].ToString();
         HyperLink1.NavigateUrl= dt.Rows[0]["ResumePath"].ToString();
          
            txtJobType.Text = dt.Rows[0]["Jobtype"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "update JobOffersRequestInfo  set Status=@p2 where RequestId=@p1";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", Session["JRID"]);
        cmd.Parameters.AddWithValue("@p2",DropDownList1.SelectedValue.ToString());
        

        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Job Request Status Sent  '); window.location.href = 'LawyerHome.aspx';</script>");
    }
}