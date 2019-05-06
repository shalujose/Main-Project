using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Security.Cryptography;
public partial class Gateway3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Trai\App_Data\Database.mdf;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
      
        Label19.Text = Session["price"].ToString();
      


        string str = "select bankname,accholder,accno,ifsccode,amount from bankac where name='Admin'";
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Label4.Text = dt.Rows[0]["bankname"].ToString();


            Label5.Text = this.Decrypt(dt.Rows[0]["accholder"].ToString().Trim());
            Label7.Text = this.Decrypt(dt.Rows[0]["accno"].ToString().Trim());


  
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



            Label11.Text = this.Decrypt1(dt1.Rows[0]["accholder"].ToString().Trim());
            Label21.Text = this.Decrypt1(dt1.Rows[0]["accno"].ToString().Trim());

   
            Label22.Text = dt1.Rows[0]["ifsccode"].ToString();
            Label27.Text = dt1.Rows[0]["amount"].ToString();

        }
        con.Close();
   
    }

    private string Decrypt(string cipherText)
    {
        string EncryptionKey = "Admin";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
    private string Decrypt1(string cipherText)
    {
        string EncryptionKey = Session["name"].ToString();
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == Session["psw"].ToString())
        {
            int i = Convert.ToInt32(Label26.Text);
            int j = Convert.ToInt32(Label27.Text);
            int p = Convert.ToInt32(Label19.Text);
            int camount, cus;
            camount = i + p;
            cus = j - p;

            string str = "update bankac set amount='" + camount.ToString() + "' where name='Admin'";
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();

            string str1 = "update bankac set amount='" + cus.ToString() + "' where name='" + Session["name"].ToString() + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery();
            con.Close();

            string str2 = "update selectedchannels set status=1 where customername='"+ Session["name"].ToString()+"' and status=0";
            con.Open();
            SqlCommand cmd2 = new SqlCommand(str2, con);
            cmd2.ExecuteNonQuery();
            con.Close();



            Response.Redirect("Refresh1.aspx");

            
        }
   
    }
}