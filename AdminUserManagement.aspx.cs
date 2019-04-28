using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminUserManagement : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Trai\App_Data\Database.mdf;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if(!IsPostBack)
        {

        MultiView1.ActiveViewIndex = 0;


        con.Open();
        string str = "select distinct customername from selectedchannels where  status=1";
        SqlDataAdapter sda = new SqlDataAdapter(str,con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        con.Close();
        }
    }

    private void FillSelChannels()
    {


            con.Open();
            string str = "select distinct channelid,channelname,price,selecteddate,expiredate,duration,emblem from selectedchannels where customername='" + GridView2.SelectedRow.Cells[0].Text + "' and status=1";
        SqlDataAdapter sda = new SqlDataAdapter(str,con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
        con.Close();
        
    }
    private void FillCopyrightcustomers()
    {


        con.Open();
        string str = "select distinct customername from banktransaction where  status=1";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView4.DataSource = dt;
            GridView4.DataBind();
        }
        con.Close();
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        FillCopyrightcustomers();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillSelChannels();
    }
    private void FillContentofEnduser()
    {

        con.Open();
        string str = "select distinct contentid,selectedcontent,copyrightername,paiddate,price from banktransaction where customername='" + GridView4.SelectedRow.Cells[0].Text + "' and status=1";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillContentofEnduser();
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        Rating();
    }
    private void Rating()
    {
        con.Open();
        string str = "select distinct contentid,selectedcontent,copyrightername from banktransaction where rating=1 and status=1 ";
        SqlDataAdapter sda = new SqlDataAdapter(str,con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if(dt.Rows.Count>0)
        {
            GridView5.DataSource = dt;
            GridView5.DataBind();

        }
        con.Close();
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        string str = "select sum(rating) from banktransaction  where contentid='"+GridView5.SelectedRow.Cells[0].Text+"' and status=1";
        SqlCommand cmd=new SqlCommand(str,con);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            while (reader.Read())
            {
                //int ordinal = reader.GetOrdinal("sum(price)");

                //  Label3.Text = reader.GetInt64(ordinal).ToString();
                int i = Convert.ToInt32(reader.GetInt32(0));
                Label7.Text = i.ToString();
                //Console.WriteLine("{0}\t{1}", reader.GetInt32(0),
                //    reader.GetString(1));
            }
        }
        else
        {
            //   Console.WriteLine("No rows found.");
        }
        reader.Close();
        con.Close();


       Label3.Text=GridView5.SelectedRow.Cells[0].Text;
       Label6.Text = GridView5.SelectedRow.Cells[1].Text;
       Label4.Text = GridView5.SelectedRow.Cells[2].Text;
       Panel2.Visible = true;
    }
}