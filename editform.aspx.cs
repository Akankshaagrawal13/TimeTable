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

public partial class editform : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {


        conn.Open();
        SqlCommand cmd1;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        string cmd1string = "Select id from title_tab";
        cmd1 = new SqlCommand(cmd1string, conn);
        adapter.SelectCommand = cmd1;
        adapter.Fill(ds1, "title_tab");
        adapter.Dispose();
        cmd1.Dispose();
        int count3 = ds1.Tables["title_tab"].Rows.Count;
        conn.Close();
        adapter.Dispose();
        conn.Open();
        SqlCommand cmd2;
        string[] s1 = new string[count3];
        string cmd2String = "Select id from title_tab";
        cmd2 = new SqlCommand(cmd2String, conn);
        SqlDataReader dr;
        dr = cmd2.ExecuteReader();
        int inc = 0;
        while (dr.Read())
        {
            s1[inc++] = Convert.ToString((dr["id"]));

        }
        cmd2.Dispose();
        dr.Dispose();
        conn.Close();
        conn.Open();
        SqlCommand cmd3;
        string[] s2 = new string[count3];
        string cmd3String = "Select fname from title_tab";
        cmd3 = new SqlCommand(cmd3String, conn);
        SqlDataReader dr1;
        dr1 = cmd3.ExecuteReader();
        int inc1 = 0;
        while (dr1.Read())
        {
            s2[inc1++] = Convert.ToString((dr1["fname"]));

        }
        cmd3.Dispose();
        dr1.Dispose();
        conn.Close();

        int count = s1.Length;
        int count1 = s1[0].Length;
        string[] s3 = new string[count];
        int[] s4 = new int[count];
        for (int i = 0; i <= (count3 - 1); i++)
        {
            s3[i] = s1[i].Substring(0, 3);
        }

        for (int k = 0; k < (count3 - 1); k++)
        {
            if (s3[k] == "CCC")
            {
                DropDownList1.Items.Add(s2[k]);
            }
            if (s3[k] == "BBB")
            {
                DropDownList2.Items.Add(s2[k]);
            }

            if (s3[k] == "SEM")
            {
                DropDownList3.Items.Add(s2[k]);
            }
            if (s3[k] == "BAT")
            {
                DropDownList4.Items.Add(s2[k]);
            }
            if (s3[k] == "SUB")
            {
                DropDownList5.Items.Add(s2[k]);
            }
            if (s3[k] == "TTT")
            {
                DropDownList6.Items.Add(s2[k]);
            }
        }
    }

   


    
    
   

   
    protected void Button1_Click1(object sender, System.EventArgs e)
    {
        conn.Open();
        string cst = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True";
        String sl = "Select * from transaction_tab";
        SqlDataSource ds = new SqlDataSource(cst, sl);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
protected void  Button2_Click(object sender, System.EventArgs e)
{
    conn.Open();
    string cst = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True";
    string s2 = "update transaction_tab set subject='" + DropDownList5.SelectedItem.Text + "' where course='" + DropDownList1.SelectedItem.Text + "' AND branch='" + DropDownList2.SelectedItem.Text + "' AND sem='" + DropDownList3.SelectedItem.Text + "' and batch='" + DropDownList4.SelectedItem.Text + "'";
    SqlDataSource ds = new SqlDataSource(cst, s2);
    GridView1.DataSource=ds;
    GridView1.DataBind();
}
protected void DropDownList5_SelectedIndexChanged(object sender, System.EventArgs e)
{

}
}




