using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Data.SqlTypes;
using System.Data.Sql;
using System.Data.ProviderBase;
using System.Windows.Forms;


public partial class content : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        form1.Visible = false;
       if ((Session["admin"]== "yes") || (Session["programmer"] == "yes") || (Session["teacher"] == "yes"))
        {

            form1.Visible = true;
        }
        else
        {
            Response.Redirect("home.aspx");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
}