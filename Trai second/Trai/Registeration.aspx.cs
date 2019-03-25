using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registeration : System.Web.UI.Page
{
    string gender;
    string dob,imgPath;
    string usertype="Customer";
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\u\Desktop\Trai\Trai\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(RadioButton1.Checked==true)
        {
            gender = Label14.Text;
        }
        if(RadioButton2.Checked==true)
        {
            gender = Label15.Text;
        }
        dob = System.DateTime.Now.ToString();
        con.Open();
        string str1 = "insert into regis values('" + TextBox1.Text + "','" + gender.ToString() + "','" + TextBox9.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','"+DateTime.Now.ToString()+"','" + Label17.Text + "','" + usertype.ToString() + "')";
        //string str1 = "insert into regis values('"+TextBox1.Text+"','"+gender.ToString()+"','"+TextBox9.Text+"','"+TextBox2.Text+"','"+DropDownList1.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"','"+dob.ToString()+"','"+Label17.Text+"','"+usertype.ToString()+"')";
        SqlCommand cmd = new SqlCommand(str1, con);
        cmd.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterStartupScript(this, this.GetType(),
      "alert",
      "alert('Your Registration is successfully completed');", true);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload2.HasFile == true && FileUpload2.PostedFile != null)
            {


                string imgName = FileUpload2.FileName;
                imgPath = "imagestorage/" + imgName;
                System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload2.PostedFile.InputStream);
                int height = img.Height;
                int width = img.Width;
                decimal size = Math.Round(((decimal)FileUpload2.PostedFile.ContentLength / (decimal)1024), 2);
                if (size > 100)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File size must not exceed 100 KB')", true);
                }
                else if (height > 125 || width > 100)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Height and Width must not exceed 125*100 px.')", true);
                }
                else
                {

                    Image1.ImageUrl = "~/" + imgPath;
                    Label17.Text = "~/" + imgPath;
                    FileUpload2.SaveAs(Server.MapPath(imgPath));

                }


            }

            else
            {



                ScriptManager.RegisterStartupScript(this, this.GetType(),
          "alert",
          "alert('Select Your Photo');",
          true);

            }
        }
        catch (Exception f)
        {


        }

    }
}