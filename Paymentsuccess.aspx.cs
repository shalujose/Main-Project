using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Paymentsuccess : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\u\Desktop\br\App_Data\Database.mdf;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = Session["price"].ToString();


        string str = "select max(id) from banktransaction ";
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
    //    SqlDataReader sdr = cmd.ExecuteReader();

        int t = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        Label5.Text = t.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerBankaccount.aspx");
    }
}