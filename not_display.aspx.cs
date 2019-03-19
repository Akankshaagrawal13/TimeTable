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


public partial class not_display : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        String na = Request.QueryString["name"];
        con.Open();
        SqlCommand cmd1;
        SqlDataAdapter adapter1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        string cmd1string = "Select notice from notice_tab where remark='" + na + "'";
        cmd1 = new SqlCommand(cmd1string, con);
        adapter1.SelectCommand = cmd1;
        adapter1.Fill(ds1, "notice_tab");
        int count1 = ds1.Tables["notice_tab"].Rows.Count;
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        String[] s1 = new String[1];

        while (dr.Read())
        {
            s1[0] = Convert.ToString((dr["notice"]));

        }
        cmd1.Dispose();
        dr.Dispose();
        con.Close();
        Label2.Text = s1[0];

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
}