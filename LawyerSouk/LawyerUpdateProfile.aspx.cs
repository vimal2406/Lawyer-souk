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
        if (!IsPostBack)
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
                txtName.Text = dt.Rows[0]["LawyerName"].ToString();
                txtJobType.Text = dt.Rows[0]["jobType"].ToString();
                txtWork.Text = dt.Rows[0]["WorkingDesc"].ToString();
                txtSp.Text = dt.Rows[0]["SpecialiseIn"].ToString();
                txtContactNo.Text = dt.Rows[0]["MobileNo"].ToString();
                txtLocation.Text = dt.Rows[0]["Location"].ToString();
                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                photo.ImageUrl = dt.Rows[0]["PhotoImage"].ToString();
                txtExp.Text = dt.Rows[0]["LawExperience"].ToString();
            }
        }
    }
    String str;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            str = FileUpload1.FileName;


            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/LawyerImage/" + str));
            str = "~/LawyerImage/" + str.ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "Update LawyerInfo set LawyerName=@p2,Email=@p3,MobileNo=@p4,SpecialiseIn=@p5,JobType=@p6,Location=@p7,WorkingDesc=@p8,PhotoImage=@p9 where LawyerId=@p10";
            cmd = new SqlCommand(a, con);

            cmd.Parameters.AddWithValue("@p2", txtName.Text);
            cmd.Parameters.AddWithValue("@p3", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p4", txtContactNo.Text);
            cmd.Parameters.AddWithValue("@p5", txtSp.Text);
            cmd.Parameters.AddWithValue("@p6", txtJobType.Text);
            cmd.Parameters.AddWithValue("@p7", txtLocation.Text);
            cmd.Parameters.AddWithValue("@p8", txtWork.Text);
            cmd.Parameters.AddWithValue("@p9", str);
            cmd.Parameters.AddWithValue("@p10", Session["LId"].ToString());

            cmd.ExecuteNonQuery();
            con.Close();
            Session["fname"] = txtName.Text;
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Profile Update Done With LaywerSouk');window.location.replace('LawyerHome.aspx');</script>");

            

        }

        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "Update LawyerInfo set LawyerName=@p2,Email=@p3,MobileNo=@p4,SpecialiseIn=@p5,JobType=@p6,Location=@p7,WorkingDesc=@p8  where LawyerId=@p10";
            cmd = new SqlCommand(a, con);

            cmd.Parameters.AddWithValue("@p2", txtName.Text);
            cmd.Parameters.AddWithValue("@p3", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p4", txtContactNo.Text);
            cmd.Parameters.AddWithValue("@p5", txtSp.Text);
            cmd.Parameters.AddWithValue("@p6", txtJobType.Text);
            cmd.Parameters.AddWithValue("@p7", txtLocation.Text);
            cmd.Parameters.AddWithValue("@p8", txtWork.Text);
           
            cmd.Parameters.AddWithValue("@p10", Session["LId"].ToString());

            cmd.ExecuteNonQuery();
            con.Close();
            Session["fname"] = txtName.Text;
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Profile Update Done With LaywerSouk');window.location.replace('LawyerHome.aspx');</script>");
        }
    }
}