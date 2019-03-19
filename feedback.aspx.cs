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

public partial class feedback : System.Web.UI.Page
{
   
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
    static String a;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == "yes")
        {
            a = "admin";
        }
        else
        {
            if (Session["programmer"] == "yes")
            {
                a = "programmer";
            }
            else
            {
                if (Session["teacher"] == "yes")
                {
                    a = "teacher";
                }
                else
                {
                    a = "student";
                }
            }
        }
    


       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String cmd8string = "Insert into feedback_tab (feedback,class) Values ('" + TextBox1.Text + "','" + a + "')";
        SqlCommand ss8 = new SqlCommand(cmd8string, con);
        ss8.ExecuteNonQuery();
        con.Close();
        Response.Redirect("home.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
}