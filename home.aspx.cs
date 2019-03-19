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

public partial class home : System.Web.UI.Page
{
 SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
    static String decode(String r55)
    {

       
        int  j, i, z = 0, len1, len2, m = 0, t, ascode;
        string digit = "123456789";
        int[] b4 = { 127, 126, 125, 124, 123 };
        int[] a4 = { 123, 124, 125, 126, 127 };
        int[] a3 = { 91, 92, 93, 94, 95, 96 };
        int[] b3 = { 96, 95, 94, 93, 92, 91 };
        int[] a2 = { 58, 59, 60, 61, 62, 63, 64 };
        int[] b2 = { 64, 63, 62, 61, 60, 59, 58 };
        int[] a1 = { 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48 };
        int[] b1 = { 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33 };
        string bigalpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string revbigalpha = "ZYXWVUTSRQPONMLKJIHGFEDCBA";
        string revalpha = "zyxwvutsrqponmlkjihgfedcba";
        string alpha = "abcdefghijklmnopqrstuvwxyz";
        string revdigit = "987654321";
        
        int length;
        char[] r5 = r55.ToCharArray();
        length = r5.Length;
        char[] r = new char[length];
        char[] r2 = new char[length];
        char[] r3 = new char[length];
        char[] r4 = new char[length];
        char[] r7 = new char[length];
        char[] r9 = new char[length];
        
         char[] r6 = new char[length];
        len1 = length / 2;
        len2 = length % 2;
        len2 = len1 + len2;
        j = length - 1;
        t = j;
        int lastrange = 128;

        int leng; int e;
        j = 0;
        leng = r5.Length - 1;
        e = leng;

        for (i = 0; i <= leng; i++)
        {
            r6[e] = r5[i];
            e--;
        }
        
        j = 0;

        int startrange = 32;
        int len = r5.Length;
        int dif;
        int subpls = len;
        if (len % 2 != 0)
        {
            for (i = 0; i < len; i++)
            {
                ascode = (int)r6[i];
                if (i % 2 != 0)
                {
                    ascode = ascode - subpls;
                    if (ascode < 33)
                    {
                        dif = 33 - ascode;
                        ascode = lastrange - dif;
                    }
                }
                else
                {
                    ascode = ascode + subpls;
                    if (ascode > 127)
                    {
                        dif = ascode - 127;
                        ascode = startrange + dif;
                    }
                }
                r3[i] = (char)ascode;
                subpls--;
            }
        }
        else
        {
            for (i = 0; i < len; i++)
            {
                ascode = (int)r6[i];
                if (i % 2 == 0)
                {
                    ascode = ascode - subpls;
                    if (ascode < 33)
                    {
                        dif = 33 - ascode;
                        ascode = lastrange - dif;
                    }
                }
                else
                {
                    ascode = ascode + subpls;
                   if (ascode > 127)
                    {
                        dif = ascode - 127;
                        ascode = startrange + dif;
                    }
                }
                r3[i] = (char)ascode;
                subpls--;
            }
        }
       


       int l = (r3.Length) - 1;

        z = 0;
        for (i = 0; i <= l; i++)
        {


            m = (int)r3[i];
            if (m >= 97 && m <= 122)
            {
                for (j = 0; j <= 25; j++)
                {
                    if (revalpha[j] == r3[i])
                    {
                        r4[z] = alpha[j];
                        z++;
                    }
                }
            }
            else if (m >= 65 && m <= 90)
            {
                for (j = 0; j <= 25; j++)
                {
                    if (revbigalpha[j] == r3[i])
                    {
                        r4[z] = bigalpha[j];
                        z++;
                    }
                }
            }

            else if (m >= 49 && m <= 57)
            {
                for (j = 0; j <= 8; j++)
                {
                    if (revdigit[j] == r3[i])
                    {
                        r4[z] = digit[j];
                        z++;
                    }
                }
            }
            else if (m >= 33 && m <= 48)
            {
                for (j = 0; j <= 15; j++)
                {
                    if (b1[j] == m)
                    {
                        r4[z] = (char)a1[j];
                        z++;
                        break;
                    }
                }
            }
            else if (m >= 58 && m <= 64)
            {
                for (j = 0; j <= 6; j++)
                {
                    if (b2[j] == m)
                    {
                        r4[z] = (char)a2[j];
                        z++;
                    }
                }
            }
            else if (m >= 91 && m <= 96)
            {
                for (j = 0; j <= 5; j++)
                {
                    if (b3[j] == m)
                    {
                        r4[z] = (char)a3[j];
                        z++;
                    }
                }
            }
            else if (m >= 123 && m <= 127)
            {
                for (j = 0; j <= 4; j++)
                {
                    if (b4[j] == m)
                    {
                        r4[z] = (char)a4[j];
                        z++;
                    }
                }
            }
        }
        m = 0;
        for (i = 0; i <= (length - 1); i++)
        {
            if (i == 0)
            {
                r7[length - 1] = r4[i];

            }
            else
            {
                if (i % 2 != 0)
                {
                    r7[m] = r4[i];
                    m++;
                }
                else
                {
                    t--;
                    r7[t] = r4[i];
                }

            }
        }
        
        String r77 = new String(r7);
        
        return (r77);
        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    
    public String[] rem()
    {
        con.Open();
        SqlCommand cmd1;
        SqlDataAdapter adapter1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        string cmd1string = "Select remark from notice_tab";
        cmd1 = new SqlCommand(cmd1string, con);
        adapter1.SelectCommand = cmd1;
        adapter1.Fill(ds1, "notice_tab");
        int count1 = ds1.Tables["notice_tab"].Rows.Count;
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        String[] s1 = new String[count1];
        int inc1 = 0;
        while (dr.Read())
        {
            s1[inc1++] = Convert.ToString((dr["remark"]));

        }
        cmd1.Dispose();
        dr.Dispose();
        con.Close();
        return s1;
    }
    public String[] not()
    {
        con.Open();
        SqlCommand cmd2;
        SqlDataAdapter adapter2 = new SqlDataAdapter();
        DataSet ds2 = new DataSet();
        string cmd2string = "Select notice from notice_tab";
        cmd2 = new SqlCommand(cmd2string, con);
        adapter2.SelectCommand = cmd2;
        adapter2.Fill(ds2, "notice_tab");
        int count2 = ds2.Tables["notice_tab"].Rows.Count;
        SqlDataReader dr1;
        dr1 = cmd2.ExecuteReader();
        String[] s2 = new String[count2];
        int inc2 = 0;
        while (dr1.Read())
        {
            s2[inc2++] = Convert.ToString((dr1["notice"]));

        }
        cmd2.Dispose();
        dr1.Dispose();
        con.Close();
        return s2;
    }
  
    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("user_registration.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        String us = TextBox3.Text.ToString();
        String pass = TextBox2.Text.ToString();
        con.Open();
        SqlDataAdapter adapter1 = new SqlDataAdapter();
        DataSet data1 = new DataSet();
        SqlCommand s1;
        String st1 = "SELECT uname,password,category from login_tab";
         s1 = new SqlCommand(st1, con);
       
        adapter1.SelectCommand = s1;
        adapter1.Fill(data1, "login_tab");
        int cou1 = data1.Tables["login_tab"].Rows.Count;
        SqlDataReader dr1;
        dr1 = s1.ExecuteReader();
        int inc = 0;
        int inc1 = 0;
        int inc2 = 0;
        string[] str1 = new string[cou1];
        String[] str2 = new string[cou1];
        String[] str3 = new String[cou1];
        while (dr1.Read())
        {
            str1[inc++] = Convert.ToString((dr1["uname"]));
            str2[inc1++] = Convert.ToString((dr1["password"]));
            str3[inc2++] = Convert.ToString((dr1["category"]));
        }
        con.Close();

        String[] ret1 = new String[cou1];
        String[] ret2 = new String[cou1];
        for (int i = 0; i < cou1; i++)
        {
            home obj = new home();
            ret1[i] = home.decode(str1[i]);
            ret2[i] = home.decode(str2[i]);

        }
        
            
           

         
       
       
        int index = -1;
        for (int i = 0; i < cou1; i++)
        {
            if (ret1[i] == us)
            {
                index = i;
                break;
            }

        }
      
       
        if (index == -1)
        {
            MessageBox.Show("invalid user or password");
        }
        else
        {
            String passcheck = ret2[index];
            String cat = str3[index];
            if (passcheck == pass)
            {

                if (cat == "01")
                {
                    Session["admin"] = "yes";
                }
                if (cat == "02")
                {
                    Session["programmer"] = "yes";
                }
                if (cat == "03")
                {
                    Session["teacher"] = "yes";
                }

                Response.Redirect("content.aspx");
            }
            else
            {
                MessageBox.Show("invalid user or password");
            }
        }

    }
    protected void Button3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Report.aspx");

    }
    protected void Button4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
    protected void Button2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("about.aspx");
    }
    protected void Button1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("contact.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Report.aspx");

    }
  
}


   