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
        SqlCommand cmd = new SqlCommand("select * from JobOffersInfo where  JobId=@username", con);
        cmd.Parameters.AddWithValue("@username", Session["JID"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            txtid.Text= dt.Rows[0]["JobId"].ToString();
            txtDate.Text = dt.Rows[0]["PostedOn"].ToString();
           
            txtLawyerId.Text= dt.Rows[0]["LawyerId"].ToString();
            txtTitle.Text= dt.Rows[0]["JobTitle"].ToString();
            txtjobD.Text= dt.Rows[0]["JobDescription"].ToString();
            txtSkills.Text= dt.Rows[0]["KeySkillsRequirment"].ToString();
            txtexp.Text = dt.Rows[0]["Experience"].ToString();
            txtIndustry.Text = dt.Rows[0]["Industry"].ToString();
            txtJobType.Text = dt.Rows[0]["Jobtype"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Resume/" + str));
            Image = "~/Resume/" + str.ToString();

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO JobOffersRequestInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", Session["Lid"]);
        cmd.Parameters.AddWithValue("@p2", txtid.Text);
        cmd.Parameters.AddWithValue("@p3", txtDate.Text);
        cmd.Parameters.AddWithValue("@p4", txtLawyerId.Text);
        cmd.Parameters.AddWithValue("@p5", txtTitle.Text);
        cmd.Parameters.AddWithValue("@p6", txtJobType.Text);
        cmd.Parameters.AddWithValue("@p7", Session["fname"]);
        cmd.Parameters.AddWithValue("@p8", Image);
        cmd.Parameters.AddWithValue("@p9", "Pending");


        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Job Request Sent  '); window.location.href = 'LawyerHome.aspx';</script>");
    }
}