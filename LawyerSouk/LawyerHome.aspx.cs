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

        SqlCommand cmd = new SqlCommand("select * from LawyerInfo where LawyerId=@p1 ", con);
        cmd.Parameters.AddWithValue("@p1", Session["Lid"].ToString());

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            enid.Text = dt.Rows[0]["LawyerId"].ToString();
            sname.Text = dt.Rows[0]["LawyerName"].ToString();
            gender.Text = dt.Rows[0]["Email"].ToString();
            des.Text = dt.Rows[0]["LawExperience"].ToString();
            department.Text = dt.Rows[0]["Location"].ToString();
            cno.Text = dt.Rows[0]["MobileNo"].ToString();
            photo.ImageUrl = dt.Rows[0]["PhotoImage"].ToString();
        }
        else
        {

        }
        lblRequest.Text = GridView1.Rows.Count.ToString();
        lblJobOffer.Text = GridView2.Rows.Count.ToString();
        lblJobRequestInfo.Text = GridView3.Rows.Count.ToString();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        Session["RID"] = row.Cells[1].Text.ToString();
        Response.Redirect("ViewBookLawyerAppointment.aspx");
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView2.SelectedRow;
        Session["JID"] = row.Cells[1].Text.ToString();
        Response.Redirect("UploadLawyerJobView.aspx");
    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView3.SelectedRow;
        Session["JRID"] = row.Cells[1].Text.ToString();
        Response.Redirect("UploadLawyerJobViewRequest.aspx");
    }
}