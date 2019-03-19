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


public partial class teacher : System.Web.UI.Page
{
    static int a;
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        form1.Visible = false;
        if ((Session["admin"] == "yes") || (Session["programmer"] == "yes"))
        {
            form1.Visible = true;
            con.Open();
            SqlCommand cmd1;
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds1 = new DataSet();
            string cmd1string = "Select id,fname from title_tab";
            cmd1 = new SqlCommand(cmd1string, con);
            adapter.SelectCommand = cmd1;
            adapter.Fill(ds1, "title_tab");
            adapter.Dispose();

            int count3 = ds1.Tables["title_tab"].Rows.Count;

            string[] s1 = new string[count3];
            string[] s7 = new string[count3];
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();
            int inc = 0;
            int inc1 = 0;
            while (dr.Read())
            {
                s1[inc++] = Convert.ToString((dr["id"]));
                s7[inc1++] = Convert.ToString((dr["fname"]));

            }
            cmd1.Dispose();
            dr.Dispose();
            con.Close();


            int count = s1.Length;
            int count1 = s1[0].Length;
            string[] s2 = new string[count];
            int[] s3 = new int[count];
            for (int i = 0; i <= (count3 - 1); i++)
            {
                s2[i] = s1[i].Substring(0, 3);
            }

            for (int k = 0; k < (count3 - 1); k++)
            {
                if (s2[k] == "TTT")
                {
                    DropDownList1.Items.Add(s7[k]);
                }
            }
        }
        else
        {
            Response.Redirect("home.aspx");
        }





    }
   
  
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        con.Open();
        String cmd2string = "Insert into teacher_tab (tname,teachid,addre,dept,quali,cnum,remark) Values ('" + DropDownList1.SelectedItem.Text.ToString() + "','" + Label25.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
        SqlCommand ss44 = new SqlCommand(cmd2string, con);
        ss44.ExecuteNonQuery();
        con.Close();

        Label25.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";


    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

        con.Open();
        SqlDataAdapter adapter1 = new SqlDataAdapter();
        DataSet data1 = new DataSet();
        SqlCommand s1;
        String st1 = "SELECT id from title_tab WHERE fname = '" + DropDownList1.SelectedItem.Text + "'";
        s1 = new SqlCommand(st1, con);
        adapter1.SelectCommand = s1;
        adapter1.Fill(data1, "title_tab");
        SqlDataReader dr1;
        dr1 = s1.ExecuteReader();
        string[] str1 = new string[1];
        while (dr1.Read())
        {
            str1[0] = Convert.ToString((dr1["id"]));
        }
        Label25.Text = str1[0];
        con.Close();
        adapter1.Dispose();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");

    }
}

