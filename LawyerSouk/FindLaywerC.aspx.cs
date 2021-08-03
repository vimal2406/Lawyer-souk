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
    SqlConnection cn;
    SqlCommand cmd;

    string str, Image, lawerId;
    int CheckProfile = 0;
    static int Count = 0;
    static int DocCount = 0;
    DataTable mytable = new DataTable();
    String RequestedBy, UploadByEvent, UploadByDoc;
    DataRow dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
        mytable.Columns.Add("LawyerId", typeof(string));
        mytable.Columns.Add("LawyerName", typeof(string));
        mytable.Columns.Add("Email", typeof(string));
        mytable.Columns.Add("MobileNo", typeof(string));
        mytable.Columns.Add("LawExperience", typeof(string));
        mytable.Columns.Add("SpecialiseIn", typeof(string));
        mytable.Columns.Add("WorkingDesc", typeof(string));
        mytable.Columns.Add("JobType", typeof(string));
        mytable.Columns.Add("StartYear", typeof(string));
        mytable.Columns.Add("Location", typeof(string));
        mytable.Columns.Add("PhotoImage", typeof(string));



    }
    private void CallCheck()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        conn.Open();
        string SQL = "SELECT * from LawyerInfo where SpecialiseIn=@p1 order by Location ";
        SqlCommand cmd = new SqlCommand(SQL, conn);
        cmd.Parameters.AddWithValue("@p1", ddlField.SelectedValue.ToString().Trim());

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                lawerId = reader[0].ToString();
                CallInsertIntoListView();

            }
        }

        else

        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('No Data Found');</script>");
        }

        reader.Close();
        conn.Close();

        listView.DataSource = mytable;
        listView.DataBind();




    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
    private void CallInsertIntoListView()
    {
        dr1 = mytable.NewRow();



        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        string SQL2 = "SELECT * from LawyerInfo where LawyerId=@p1 order by Location ";

        con1.Open();
        SqlCommand cmd2 = new SqlCommand(SQL2, con1);
        cmd2.Parameters.AddWithValue("@p1", lawerId);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataTable dt11 = new DataTable();
        da2.Fill(dt11);

        if (dt11.Rows.Count > 0)
        {


            dr1["LawyerId"] = dt11.Rows[0]["LawyerId"].ToString();

            dr1["LawyerName"] = dt11.Rows[0]["LawyerName"].ToString();
            dr1["Email"] = dt11.Rows[0]["Email"].ToString();
            dr1["MobileNo"] = dt11.Rows[0]["MobileNo"].ToString();
            dr1["LawExperience"] = dt11.Rows[0]["LawExperience"].ToString();
            dr1["SpecialiseIn"] = dt11.Rows[0]["SpecialiseIn"].ToString();
            dr1["WorkingDesc"] = dt11.Rows[0]["WorkingDesc"].ToString();
            dr1["JobType"] = dt11.Rows[0]["JobType"].ToString();
            dr1["StartYear"] = dt11.Rows[0]["StartYear"].ToString();
            dr1["Location"] = dt11.Rows[0]["Location"].ToString();
            dr1["PhotoImage"] = dt11.Rows[0]["PhotoImage"].ToString();
            mytable.Rows.Add(dr1);
        }
        con1.Close();
    }

    protected void btnAdd13_Click(object sender, EventArgs e)
    {

        Control c = sender as Control;
        if (c == null) return;
        Label hdnId = c.Parent.FindControl("id") as Label;

        String id1 = hdnId.Text;
        ////  Int32 id = Convert.ToInt16(id1);
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        conn.Open();
        string SQL = "SELECT * FROM FriendRequestInfo where RequestToId =@p1 and  RequestById=@p2 ";
        SqlCommand cmd = new SqlCommand(SQL, conn);
        cmd.Parameters.AddWithValue("@p1", id1);
        cmd.Parameters.AddWithValue("@p2", Session["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Friend Request Already Sent');", true);


        }
        else
        {
            string SQL1 = "insert into FriendRequestInfo values(@p1,@p2,@p3)";
            SqlCommand cmd1 = new SqlCommand(SQL1, conn);
            cmd1.Parameters.AddWithValue("@p1", Session["id"].ToString());
            cmd1.Parameters.AddWithValue("@p2", id1);
            cmd1.Parameters.AddWithValue("@p3", "Pending");
            cmd1.ExecuteNonQuery();

        }
        conn.Close();


        // LinkButton btnStatus = c.Parent.FindControl("LinkButton1") as LinkButton;
        //////ShoppingCart.Instance.AddItem(hdnId.Text);
        //// Response.Redirect("Home.aspx");
        // btnStatus.Text = "Request Sent";
        //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Profile Update');window.location.replace('frmUserHome.aspx');</script>");


    }

    protected void btnAdd133_Click(object sender, EventArgs e)
    {

        Control c = sender as Control;
        if (c == null) return;
        Label hdnId = c.Parent.FindControl("lblId") as Label;


        String id1 = hdnId.Text;
        // Int32 id = Convert.ToInt16(id1);



        Session["LawyerCId"] = id1;
        Response.Redirect("BookLawyerAppointment.aspx");

    }

    protected void listView_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

        LinkButton btnStatus;
        Label hdnId1;


    }

    protected void listView_SelectedIndexChanged(object sender, EventArgs e)
    {

        //Control c = sender as Control;
        //if (c == null) return;
        //LinkButton hdnId = c.Parent.FindControl("LinkButton1") as LinkButton;

        //String id1 = hdnId.Text;
        //Int32 id = Convert.ToInt16(id1);


        //ShoppingCart.Instance.AddItem(id);
        ////Response.Redirect("NewHome.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        CallCheck();
    }
}