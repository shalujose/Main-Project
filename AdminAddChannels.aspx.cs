using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminAddChannels : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Trai\App_Data\Database.mdf;Integrated Security=True");
    string imgPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Fillchannellist();
           
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

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
                else if (height > 100 || width > 100)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Height and Width must not exceed 100*100 px.')", true);
                }
                else
                {

                    Image1.ImageUrl = "~/" + imgPath;
                    Label8.Text = "~/" + imgPath;
                    FileUpload2.SaveAs(Server.MapPath(imgPath));

                }
            }

          //  else
          //  {



          //      ScriptManager.RegisterStartupScript(this, this.GetType(),
          //"alert",
          //"alert('Select channel Emblem');",
          //true);

          //  }
        }
        catch (Exception f)
        {


        }


    }
    public void Fillchannellist()
    {
        MultiView1.ActiveViewIndex = 1;
        con.Open();
        string dis = "select Id,channelname,language,price,category,streamurl,emblem from tvchannels";
        SqlDataAdapter ada = new SqlDataAdapter(dis, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Fillchannellist();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        //string str1 = "insert into tvchannels values('asianet'.'malayalam','19','www.asianet.eu','jpeg','news','pay','" + DateTime.Now.ToString() + "')";
        string str1 ="insert into tvchannels values('"+TextBox3.Text+"','"+DropDownList1.Text+"','"+TextBox2.Text+"','"+Label8.Text+"','"+DropDownList2.Text+"','"+DropDownList4.Text+"','"+TextBox1.Text+"','"+DateTime.Now.ToString()+"')";
        SqlCommand cmd = new SqlCommand(str1, con);
        cmd.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterStartupScript(this, this.GetType(),
      "alert",
      "alert('A new channel "+TextBox3.Text+" is added successfully');", true);

        TextBox3.Text = "";
        DropDownList1.SelectedIndex = 0;
        TextBox2.Text = "";
        Label8.Text = "";
        DropDownList2.SelectedIndex = 0;
        DropDownList4.SelectedIndex = 0;
        TextBox1.Text = "";

        MultiView1.ActiveViewIndex = 1;

        Fillchannellist();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if(DropDownList4.Text=="Free Channels")
        {
            TextBox1.Text = "0";
        }
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect(GridView1.SelectedRow.Cells[5].Text);
    }
}