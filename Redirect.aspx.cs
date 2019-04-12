using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Redirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<script language='javascript'>window.alert('Your Transaction Successful');window.location='CustomerBankaccount.aspx';</script>");
       
    }
}