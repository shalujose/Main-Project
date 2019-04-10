using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Gatway1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\u\Desktop\1\Trai\App_Data\Database.mdf;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["name"].ToString();
        Label2.Text = Session["woner"].ToString();
        Label19.Text = Session["price"].ToString();
        Label25.Text = Session["cname"].ToString();


        string str = "select bankname,accholder,accno,ifsccode,amount from bankac where name='" + Session["woner"].ToString() + "'";
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Label4.Text = dt.Rows[0]["bankname"].ToString();
            Label5.Text = dt.Rows[0]["accholder"].ToString();
            Label7.Text = dt.Rows[0]["accno"].ToString();
            Label20.Text = dt.Rows[0]["ifsccode"].ToString();
            Label26.Text = dt.Rows[0]["amount"].ToString();

        }
        con.Close();



        string str1 = "select bankname,accholder,accno,ifsccode,amount from bankac where name='" + Session["name"].ToString() + "'";
        con.Open();
        SqlDataAdapter sda1 = new SqlDataAdapter(str1, con);
        DataTable dt1 = new DataTable();
        sda1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            Label9.Text = dt1.Rows[0]["bankname"].ToString();
            Label11.Text = dt1.Rows[0]["accholder"].ToString();
            Label21.Text = dt1.Rows[0]["accno"].ToString();
            Label22.Text = dt1.Rows[0]["ifsccode"].ToString();
            Label27.Text = dt1.Rows[0]["amount"].ToString();

        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        if(TextBox1.Text==Session["psw"].ToString())
        {
            int i = Convert.ToInt32(Label26.Text);
            int j = Convert.ToInt32(Label27.Text);
            int p = Convert.ToInt32(Label19.Text);
            int camount, cus;
            camount = i + p;
            cus = j - p;

            string str = "update bankac set amount='" + camount.ToString() + "' where name='" + Label2.Text + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(str,con);
            cmd.ExecuteNonQuery();
            con.Close();

            string str1 = "update bankac set amount='" + cus.ToString() + "' where name='" + Label1.Text + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            con.Close();

            string str2 = "update banktransaction set status=1 where selectedcontent='" + Label25.Text + "'";
            con.Open();
            SqlCommand cmd2 = new SqlCommand(str2, con);
            cmd2.ExecuteNonQuery();
            con.Close();




            Response.Write("<script language='javascript'>window.alert('Your Transaction Successful');window.location='CustomerBankaccount.aspx';</script>");
              
        }
    }
}