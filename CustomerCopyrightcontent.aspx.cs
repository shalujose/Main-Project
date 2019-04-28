using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CustomerCopyrightcontent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Trai\App_Data\Database.mdf;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        FillVideos();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FillVideos();
        MultiView1.ActiveViewIndex = 0;
    }

    public void FillVideos()
    {
       // string dis = "select distinct * from copyrightvideo right JOIN banktransaction ON copyrightvideo.id != banktransaction.contentid where customername ='" + Session["name"].ToString() + "' and banktransaction.status=1";
        string dis = "select distinct * from copyrightvideo  where status='Yes'";
    
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
        else
        {
            GridView1.Visible = false;

        }
        con.Close();


    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Video1.Attributes.Add("src", GridView1.SelectedRow.Cells[6].Text);
        MultiView1.ActiveViewIndex = 0;


        string str = "select * from copyrightvideo where id='"+GridView1.SelectedRow.Cells[0].Text+"'";
        con.Open();
       SqlDataAdapter sda=new SqlDataAdapter(str,con);
        DataTable dt=new DataTable();
        sda.Fill(dt);

        //owner,id,filetitle,price,file
        if(dt.Rows.Count>0)
        {
            Label5.Text=dt.Rows[0]["owner"].ToString();
            Label6.Text = dt.Rows[0]["id"].ToString();
                 Label7.Text=dt.Rows[0]["filetitle"].ToString();
                  Label8.Text=dt.Rows[0]["price"].ToString();
                  Label9.Text = dt.Rows[0]["file"].ToString();
        }

        con.Close();

    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

        string dis = "select * from banktransaction where customername='"+Session["name"].ToString()+"' and status=1  ";
        con.Open();
        SqlDataAdapter ada = new SqlDataAdapter(dis, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView3.DataSource = dt;
            GridView3.DataBind();
            GridView3.Visible = true;
        }
        else
        {
            GridView3.Visible = false;

        }
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        myVideo.Attributes.Add("src", GridView3.SelectedRow.Cells[5].Text);
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into banktransaction values('"+Session["name"].ToString()+"','"+Label5.Text+"','"+Label6.Text+"','"+Label7.Text+"','"+Label9.Text+"','"+DateTime.Now.ToString()+"','"+Label8.Text+"',0,0) ";
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
        cmd.ExecuteNonQuery();
        con.Close();


        Session["woner"]=Label5.Text;
        Session["price"]=Label8.Text;
        Session["cname"]=Label7.Text;
        Response.Redirect("Gatway1.aspx");
    }
}