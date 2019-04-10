using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Messenger : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\u\Desktop\1\Trai\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        MultiView1.ActiveViewIndex = 1;
        con.Open();
        string str1 = "select msgid,msgtitle,msg,date,sendername,sendertype from messenger where receivertype='Admin' and receivername='Admin'";
        SqlDataAdapter ada = new SqlDataAdapter(str1, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        con.Open();
        string str1 = "select msgid,msgtitle,msg,date,sendername,sendertype from messenger where receivertype='Admin' and receivername='Admin'";
        SqlDataAdapter ada = new SqlDataAdapter(str1, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if(dt.Rows.Count>0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //con.Open();
        //string str2 = "select msgtiltle,msg from messenger where msgid='"+GridView1.SelectedRows.Cells[0].Text+"'";
        //SqlDataAdapter ada = new SqlDataAdapter(str2, con);
        //DataTable dt = new DataTable();
        //ada.Fill(dt);
        //if(dt.Rows.Count>0)
        //{
        TextBox5.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[3].Text;
        //}
      //  con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        string str3 = "delete  from messenger where msgtitle='"+TextBox5.Text+"' and msg='"+TextBox4.Text+"'";
        SqlCommand cmd = new SqlCommand(str3, con);
        cmd.ExecuteNonQuery();

        con.Close();
    }
}