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

public partial class notice : System.Web.UI.Page
{
    static int a;
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
    static String com;
    static String cid;
    static String did;
    static String sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        form1.Visible = false;
        if ((Session["admin"] == "yes") || (Session["programmer"] == "yes") || (Session["teacher"] == "yes"))
        {
            form1.Visible = true;
            con.Open();
            SqlCommand cmd1;
            SqlDataAdapter adapter1 = new SqlDataAdapter();
            DataSet ds1 = new DataSet();
            string cmd1string = "Select noticeid from notice_tab";
            cmd1 = new SqlCommand(cmd1string, con);
            adapter1.SelectCommand = cmd1;
            adapter1.Fill(ds1, "notice_tab");
            int count1 = ds1.Tables["notice_tab"].Rows.Count;
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();
            int[] s1 = new int[count1];
            int inc1 = 0;
            while (dr.Read())
            {
                s1[inc1++] = Convert.ToInt32((dr["noticeid"]));

            }
            cmd1.Dispose();
            dr.Dispose();
            con.Close();
            a = s1[(count1 - 1)] + 1;
            TextBox1.Text = a.ToString();
            con.Open();
            SqlCommand cmd2;
            SqlDataAdapter adapter2 = new SqlDataAdapter();
            DataSet ds2 = new DataSet();
            string cmd2string = "Select fname,id,sname from title_tab";
            cmd2 = new SqlCommand(cmd2string, con);
            adapter2.SelectCommand = cmd2;
            adapter2.Fill(ds2, "title_tab");
            int count2 = ds2.Tables["title_tab"].Rows.Count;
            SqlDataReader dr1;
            dr1 = cmd2.ExecuteReader();
            String[] s2 = new String[count2];
            int inc2 = 0;
            String[] s4 = new String[count2];
            String[] s7 = new String[count2];
            int inc6 = 0;
            int inc4 = 0;
            while (dr1.Read())
            {
                s2[inc2++] = Convert.ToString((dr1["fname"]));
                s4[inc4++] = Convert.ToString((dr1["id"]));
                s7[inc6++] = Convert.ToString((dr1["sname"]));

            }
            cmd2.Dispose();
            dr1.Dispose();
            con.Close();




            int count5 = s4.Length;
            int count6 = s4[0].Length;
            string[] s5 = new string[count5];
            int[] s6 = new int[count5];

            for (int i = 0; i <= (count2 - 1); i++)
            {
                s5[i] = s4[i].Substring(0, 3);
            }
            for (int k = 0; k < (count2 - 1); k++)
            {
                if (s5[k] == "TTT")
                {
                    DropDownList1.Items.Add(s2[k]);

                }
            }
            com = DropDownList1.SelectedItem.Text;

            for (int k = 0; k < (count2 - 1); k++)
            {
                if (s5[k] == "CCC")
                {
                    DropDownList2.Items.Add(s7[k]);

                }
            }
            for (int k = 0; k < (count2 - 1); k++)
            {
                if (s5[k] == "BNO")
                {
                    DropDownList3.Items.Add(s7[k]);

                }
            }
           
            string com2 = DropDownList2.SelectedItem.Text;
            string com3 = DropDownList3.SelectedItem.Text;
           
            for (int k = 0; k < (count2 - 1); k++)
            {
                if (s7[k] == com2)
                {
                    cid = s4[k];
                    break;
                }

            }
            for (int k = 0; k < (count2 - 1); k++)
            {
                if (s7[k] == com3)
                {
                    did = s4[k];
                    break;
                }

            }
           
        }
        else
        {
            Response.Redirect("home.aspx");
        }

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        String cmd8string = "Insert into notice_tab (noticeid,teachid,notice,classid,remark,depid) Values ('" + TextBox1.Text + "','" + com + "','" + TextBox3.Text + "','" + cid + "','" + TextBox5.Text + "','" + did + "')";
        SqlCommand ss8 = new SqlCommand(cmd8string, con);
        ss8.ExecuteNonQuery();
        con.Close();
        string ss = TextBox1.Text.ToString();
        int ss1 = Convert.ToInt32(ss) + 1;
        TextBox1.Text = ss1.ToString();
        TextBox3.Text = "";
        TextBox5.Text = "";


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
}