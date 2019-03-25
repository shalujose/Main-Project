using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\u\Desktop\Trai\Trai\App_Data\Database.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = "select name,psw from login where name='" + TextBox1.Text + "' and psw='" + TextBox2.Text + "'";
        SqlDataAdapter ada = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (TextBox1.Text == dt.Rows[0]["name"].ToString() && TextBox2.Text == dt.Rows[0]["psw"].ToString())
        {
            Session["name"] = TextBox1.Text;
            Session["psw"] = TextBox2.Text;

            Response.Redirect("Index.aspx");
        }
        con.Close();
    }
}