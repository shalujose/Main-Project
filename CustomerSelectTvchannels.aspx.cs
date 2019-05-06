using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CustomerSelectTvchannels : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Trai\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Fillchannellist();


          
        }


        Panel2.Visible = false;




        con.Open();
        string dis1 = "select distinct channelid,channelname,price,emblem from selectedchannels where customername='" + Session["name"].ToString() + "' and status=0";
        SqlDataAdapter ada1 = new SqlDataAdapter(dis1, con);
        DataTable dt1 = new DataTable();
        ada1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            GridView3.DataSource = dt1;
            GridView3.DataBind();
            Panel2.Visible = true;


        }
        con.Close();
        FillTotalprice();
    }

    public void Fillchannellist()
    {
        con.Close();
        MultiView1.ActiveViewIndex = 0;
        con.Open();
        string dis = "select Id,channelname,language,price,category,streamurl,level,emblem from tvchannels";
        SqlDataAdapter ada = new SqlDataAdapter(dis, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }
        con.Close();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        Fillchannellist();
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;


        con.Close();

        con.Open();
        string dis1 = "select distinct channelid,channelname,price,selecteddate,expiredate,streamurl,emblem from selectedchannels  where customername='" + Session["name"].ToString() + "' and status=1";
        SqlDataAdapter ada1 = new SqlDataAdapter(dis1, con);
        DataTable dt1 = new DataTable();
        ada1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            GridView2.DataSource = dt1;
            GridView2.DataBind();



        }
        con.Close();

    }
  //  protected void Button1_Click(object sender, EventArgs e)
   // {
        //string str = "update selectedchannels set selecteddate='"+Label18.Text+"' , expiredate='"+Label19.Text+"' where customername='" + Session["name"].ToString()+"' and status=0  ";
        //con.Open();
        //SqlCommand cmd = new SqlCommand(str,con);
        //cmd.ExecuteNonQuery();
        //con.Close();
          //  Response.Redirect("Gateway3.aspx");   
       
     //   Session["price"] = Label15.Text;
      //  Session["cname"] = Session["name"].ToString();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
  //  }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        con.Open();
        string dis = "select Id,channelname,language,price,category,level,streamurl,emblem from tvchannels where language='"+DropDownList1.Text+"'";
        SqlDataAdapter ada = new SqlDataAdapter(dis, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
    }
    private void FillTotalprice()
    {
        try
        {
            string stw = "select sum(price) from selectedchannels where customername='" + Session["name"].ToString() + "' and status=0 ";
            con.Open();

            SqlCommand cmd = new SqlCommand(stw, con);

            //int i = Convert.ToInt32(cmd.ExecuteScalar());
            //Label3.Text = i.ToString();
            //con.Close();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    //int ordinal = reader.GetOrdinal("sum(price)");

                    //  Label3.Text = reader.GetInt64(ordinal).ToString();
                    int i = Convert.ToInt32(reader.GetInt32(0));
                    Label3.Text = i.ToString();
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
        }catch(Exception e)
        {


        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Close();
        string dis = "select emblem from tvchannels where id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        SqlDataAdapter ada = new SqlDataAdapter(dis, con);
        DataTable dt = new DataTable();
        con.Open();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
         Label11.Text=dt.Rows[0]["emblem"].ToString();
      

        }
        con.Close();









        string stm = "select channelid from selectedchannels where customername='" + Session["name"].ToString() + "'  and channelid='" + GridView1.SelectedRow.Cells[0].Text + "'";
        con.Open();
        SqlDataAdapter smd = new SqlDataAdapter(stm, con);
        DataTable dm = new DataTable();
        smd.Fill(dm);

        if (dm.Rows.Count > 0 && dm.Rows[0]["channelid"].ToString() == GridView1.SelectedRow.Cells[0].Text)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('This Tv Channel, You already Selected');", true);

        }

        else
        {


            string str = "insert into selectedchannels values('" + GridView1.SelectedRow.Cells[0].Text + "','" + GridView1.SelectedRow.Cells[1].Text + "','" + GridView1.SelectedRow.Cells[6].Text + "','" + Label11.Text + "','" + GridView1.SelectedRow.Cells[5].Text + "','" + Session["name"].ToString() + "',0,'0','0',0) ";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();


        }

        con.Close();





        con.Open();
        string dis1 = "select distinct channelid,channelname,price,emblem from selectedchannels where customername='" + Session["name"].ToString() + "' and status=0";
        SqlDataAdapter ada1 = new SqlDataAdapter(dis1, con);
        DataTable dt1 = new DataTable();
        ada1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            GridView3.DataSource = dt1;
            GridView3.DataBind();

            Panel2.Visible = true;

        }
        con.Close();



        FillTotalprice();
    }
    private void FillSelectTvchannelss()
    {


        con.Open();
        string dis1 = "select distinct channelid,channelname,price,emblem from selectedchannels where customername='" + Session["name"].ToString() + "' and status=0";
        SqlDataAdapter ada1 = new SqlDataAdapter(dis1, con);
        DataTable dt1 = new DataTable();
        ada1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            GridView3.DataSource = dt1;
            GridView3.DataBind();



        }
        con.Close();
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int i = (Convert.ToInt32(Label3.Text) )* Convert.ToInt32(DropDownList2.SelectedValue.ToString());
        Label15.Text = i.ToString();
        Label18.Text = DateTime.Now.ToString("dd/MM/yyyy");
       // DateTime startDate =

        int m = Convert.ToInt32(DropDownList2.SelectedValue.ToString()) * 30;
        DateTime _expiryDate = DateTime.Now + TimeSpan.FromDays(m);
       // DateTime expires = startDate.AddDays(30);
        Label19.Text = _expiryDate.ToString("dd/MM/yyyy");
    }
protected void Button1_Click1(object sender, EventArgs e)
{
    string str = "update selectedchannels set selecteddate='"+Label18.Text+"' , expiredate='"+Label19.Text+"', duration='"+DropDownList2.SelectedValue.ToString()+"' where customername='" + Session["name"].ToString()+"' and status=0  ";
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
        cmd.ExecuteNonQuery();
        con.Close();

       
        Session["price"] = Label15.Text;
      
                Response.Redirect("Gateway3.aspx");   
}

//int index;
protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
    //string str = "delete from selectedchannels where customername='"+Session["name"].ToString()+"' and channelid='"+GridView3.SelectedRow.Cells[0].Text+"' and status=0";
    //con.Open();
    //SqlCommand cmd = new SqlCommand(str,con);
    //cmd.ExecuteNonQuery();
    //con.Close();

    //index = Convert.ToInt32(e.RowIndex);
    //DataTable dt = ViewState["selectedchannels"] as DataTable;
    //dt.Rows[index].Delete();
   
  //  FillSelectTvchannelss();
}
protected void GridView3_RowDeleted(object sender, GridViewDeletedEventArgs e)
{
   //// index = Convert.ToInt32(e.i);
   // DataTable dt = ViewState["selectedchannels"] as DataTable;
   // dt.Rows[index].Delete();
   
}
protected void GridView3_RowDeleting1(object sender, GridViewDeleteEventArgs e)
{

    int customerId = Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Values[0]);
    //  Label lbldeleteID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblstId");
    string str = "Delete from selectedchannels where customername='"+Session["name"].ToString()+"' and status=0 and channelid='" + customerId + "'";
    SqlCommand cmd = new SqlCommand(str, con);
    con.Open();
    cmd.ExecuteNonQuery();
    con.Close();
    FillSelectTvchannelss();
    FillTotalprice();
}
protected void GridView3_SelectedIndexChanged1(object sender, EventArgs e)
{
    
}
protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
{
    Response.Redirect(GridView2.SelectedRow.Cells[5].Text);
}
}