using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admincopyrightcontents : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\u\Desktop\1\Trai\App_Data\Database.mdf;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            Panel3.Visible = false;
        }
        FillVideos();
    }
    public void FillVideos()
    {

        string dis = "select * from copyrightvideo where status='No' ";
        con.Open();
        SqlDataAdapter ada = new SqlDataAdapter(dis, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            GridView1.Visible = false;

        }
        con.Close();


       
    }
    private void downloadfiles(string filename)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ClearContent();
        Response.Clear();
        Response.ContentType = "application/msi";
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename);
        //Response.TransmitFile(Server.MapPath("~/images/") + filename);
        Response.TransmitFile(Server.MapPath("~/copyrightvideos/") + filename);

        Response.End();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       

        myVideo.Attributes.Add("src", GridView1.SelectedRow.Cells[8].Text);

        Panel3.Visible = true;
       

      
        //Response.AppendHeader("Content-Disposition", "attachment; filename='Desert.jpg'");
        //Response.TransmitFile(Server.MapPath("~/copyrightvideos/Desert.jpg"));
        //Response.End();

      




        MultiView1.ActiveViewIndex = 1;
        Panel1.Visible = true;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        string dis = "select * from copyrightvideo where status='No' ";
        con.Open();
        SqlDataAdapter ada = new SqlDataAdapter(dis, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
        con.Close();
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        string dis = "select * from copyrightvideo where status='Yes' ";
        con.Open();
        SqlDataAdapter ada = new SqlDataAdapter(dis, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "update copyrightvideo set status='Yes' where  id='"+GridView1.SelectedRow.Cells[0].Text+"'";
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
        cmd.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Copyright Content : " + GridView1.SelectedRow.Cells[2].Text + "    Approved');", true);
        Panel1.Visible = false;
                    FillVideos();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "delete from copyrightvideo where id='" + GridView1.SelectedRow.Cells[0].Text + "' ";
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Copyright Content : " + GridView1.SelectedRow.Cells[2].Text + "   Rejected');", true);
        Panel1.Visible = false;
        FillVideos();
        
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Video1.Attributes.Add("src", GridView2.SelectedRow.Cells[5].Text);
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string filename = GridView1.SelectedRow.Cells[6].Text;
        downloadfiles(filename);
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 1;
    }
}