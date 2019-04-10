using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CopyrightBankAccount : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\u\Desktop\1\Trai\App_Data\Database.mdf;Integrated Security=True");
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            MultiView1.ActiveViewIndex = 0;

            int i = 0;

            con.Open();
            string strf = "select bankname from bankac where name='" + Session["name"].ToString() + "'";
            SqlDataAdapter ada1 = new SqlDataAdapter(strf, con);
            DataTable dt1 = new DataTable();
            ada1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                i++;

            }
            con.Close();
            if (i > 0)
            {
                con.Open();
                string str1 = "select bankname,accholder,accno,ifsccode,branchname,amount from bankac where usertype='Copyright' and name='" + Session["name"].ToString() + "'";
                SqlDataAdapter ada = new SqlDataAdapter(str1, con);
                DataTable dt = new DataTable();
                ada.Fill(dt);


                CheckBox1.Checked = true;
                DropDownList1.Text = dt.Rows[0]["bankname"].ToString();
                TextBox3.Text = dt.Rows[0]["accholder"].ToString();
                TextBox1.Text = dt.Rows[0]["accno"].ToString();
                TextBox2.Text = dt.Rows[0]["ifsccode"].ToString();
                TextBox5.Text = dt.Rows[0]["branchname"].ToString();
                TextBox4.Text = dt.Rows[0]["amount"].ToString();
                con.Close();
            }

        }
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(),
     "alert",
     "alert('Please check all the fields');", true);
        }
        else
        {
            con.Open();
            string str = "insert into bankac values('" + DropDownList1.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + Session["name"].ToString() + "','Copyright')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),
     "alert",
     "alert('Your Account Details Linked successfully');", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(),
     "alert",
     "alert('Please check all the fields');", true);
        }
        else
        {
            con.Open();


            string str2 = "update bankac set bankname='" + DropDownList1.Text + "',accholder='" + TextBox3.Text + "',accno='" + TextBox1.Text + "',ifsccode='" + TextBox2.Text + "',branchname='" + TextBox5.Text + "',amount='" + TextBox4.Text + "'";
            SqlCommand cmd = new SqlCommand(str2, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),
         "alert",
         "alert('Your Account Details updated Successfully');", true);
        }

    }
}