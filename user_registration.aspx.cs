using System;
using System.Text;
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
using System.Data.SqlTypes;
using System.Data.Sql;
using System.Data.ProviderBase;
using System.Windows.Forms;

public partial class user_registration : System.Web.UI.Page
{
    static SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
     static int s6;
    static String encode(String r88)
    {

        char[] r8 = r88.ToCharArray();
        int length;
        length = r8.Length;
        char[] s = new char[length];
        char[] r = new char[length];
        char[] r2 = new char[length];
        char[] r3 = new char[length];
        char[] r4 = new char[length];
        char[] r7 = new char[length];
        char[] r9 = new char[length];
        int k = 0, j, i, len1, len2, a = 0, m = 0, t, ascode;
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


        
        len1 = length / 2;
        len2 = length % 2;
        len2 = len1 + len2;
        j = length - 1;
        t = j;
        for (i = 0; i < len2; i++)
        {
            s[k] = r8[j];

            k++;
            j--;
            if (a <= (len1 + 1))
            {
                if (a != len1)
                {
                    s[k] = r8[i];
                    k++;
                }
            }
            a++;
        }
        
        k = 0;
        int l = (r8.Length) - 1;
        for (i = 0; i <= l; i++)
        {
            m = (int)s[i];
            if (m >= 97 && m <= 122)
            {
                for (j = 0; j <= 25; j++)
                {
                    if (alpha[j] == s[i])
                    {
                        r[k] = revalpha[j];
                        k++;
                    }
                }
            }
            else if (m >= 65 && m <= 90)
            {
                for (j = 0; j <= 25; j++)
                {
                    if (bigalpha[j] == s[i])
                    {
                        r[k] = revbigalpha[j];
                        k++;
                    }
                }
            }

            else if (m >= 49 && m <= 57)
            {
                for (j = 0; j <= 8; j++)
                {
                    if (digit[j] == s[i])
                    {
                        r[k] = revdigit[j];
                        k++;
                    }
                }
            }
            else if (m >= 33 && m <= 48)
            {
                for (j = 0; j <= 15; j++)
                {
                    if (a1[j] == m)
                    {
                        r[k] = (char)b1[j];
                        k++;
                        break;
                    }
                }
            }
            else if (m >= 58 && m <= 64)
            {
                for (j = 0; j <= 6; j++)
                {
                    if (a2[j] == m)
                    {
                        r[k] = (char)b2[j];
                        k++;
                    }
                }
            }
            else if (m >= 91 && m <= 96)
            {
                for (j = 0; j <= 5; j++)
                {
                    if (a3[j] == m)
                    {
                        r[k] = (char)b3[j];
                        k++;
                    }
                }
            }
            else if (m >= 123 && m <= 127)
            {
                for (j = 0; j <= 4; j++)
                {
                    if (a4[j] == m)
                    {
                        r[k] = (char)b4[j];
                        k++;
                    }
                }
            }
        }

        int lastrange = 128;
        int startrange = 32;
        k = 0;
        j = 0;
        int diff;
        int len = r8.Length;
        int subplus = len;
        if (len % 2 == 0)
        {
            for (i = 0; i < len; i++)
            {
                ascode = (int)r[i];
                if (i % 2 != 0)
                {
                    ascode = ascode - subplus;
                    if (ascode < 33)
                    {
                        diff = 33 - ascode;
                        ascode = lastrange - diff;
                    }
                }
                else
                {
                    ascode = ascode + subplus;
                    if (ascode > 127)
                    {
                        diff = ascode - 127;
                        ascode = startrange + diff;
                    }
                }
                r2[i] = (char)ascode;
                subplus--;
            }
        }
        else
        {
            for (i = 0; i < len; i++)
            {
                ascode = (int)r[i];
                if (i % 2 == 0)
                {
                    ascode = ascode - subplus;
                    if (ascode < 33)
                    {
                        diff = 33 - ascode;
                        ascode = lastrange - diff;
                    }
                }
                else
                {
                    ascode = ascode + subplus;
                    Console.WriteLine(ascode);
                    if (ascode > 127)
                    {
                        diff = ascode - 127;
                        ascode = startrange + diff;
                    }
                }
                r2[i] = (char)ascode;
                subplus--;
            }
        }

        char[] r5 = new char[length];
        int e = 0;
        int leng = r8.Length - 1;

        for (i = leng; i >= 0; i--)
        {
            r5[e] = r2[i];
            e++;
        }
        String r55 = new String(r5);

        return (r55);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String ab = TextBox1.Text.ToString();
        String bb = Label10.Text.ToString();
        String kb = TextBox3.Text.ToString();
        String cb = TextBox4.Text.ToString();
        String db = TextBox5.Text.ToString();
        String fb = DropDownList4.SelectedItem.Text.ToString() + "-" + DropDownList5.SelectedItem.Text.ToString() + "-" + DropDownList6.SelectedItem.Text.ToString();
        String gb = DropDownList1.SelectedItem.Text.ToString();
        String hb = TextBox7.Text.ToString();
        String ib = DropDownList3.SelectedItem.Text.ToString();
        String jb = ab + kb;


        if ((cb == db) && (cb.Length>8))
        {
            con.Open();
            string cmd1string = "Insert into reg_tab (uid,bday,gender,mno,nation) Values ('" + bb + "','" + fb + "','" + gb + "','" + hb + "','" + ib + "')";
            SqlCommand cmd1 = new SqlCommand(cmd1string, con);
            cmd1.ExecuteNonQuery();
            con.Close();
       

        user_registration obj = new user_registration();
        String ret1 = user_registration.encode(jb);
        String ret2 = user_registration.encode(cb);

        con.Open();
        string cmd2string = "Insert into login_tab (uname,password,category) Values ('" + ret1 + "','" + ret2 + "','" + DropDownList2.SelectedItem.Value.ToString() + "')";
        SqlCommand cmd2 = new SqlCommand(cmd2string, con);
        cmd2.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Record Inserted Successfully.");
        Response.Redirect("home.aspx");
        TextBox1.Text = "";
        Label10.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        DropDownList3.Text = "";
        }
        else
        {
            MessageBox.Show("renter the correct password or password length is too short");
            TextBox4.Text = "";
            TextBox5.Text = "";

        }


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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
         int t = 0;
        String a = DropDownList2.SelectedItem.ToString();
        con.Open();
        SqlCommand cmd1;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        string cmd1string = "Select uid from reg_tab";
        cmd1 = new SqlCommand(cmd1string, con);
        adapter.SelectCommand = cmd1;
        adapter.Fill(ds1, "reg_tab");
        int count3 = ds1.Tables["reg_tab"].Rows.Count;
        string[] s1 = new string[count3];
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        int inc = 0;
        while (dr.Read())
        {
            s1[inc++] = Convert.ToString((dr["uid"]));

        }
        cmd1.Dispose();
        dr.Dispose();
        con.Close();
        int count = s1.Length;
        int count1 = s1[0].Length;
        string[] s2 = new string[count];
        int s4 = 0;
        int[] s3 = new int[count];
        for (int i = 0; i <= (count3 - 1); i++)
        {
            s2[i] = s1[i].Substring(0, 3);
        }
        for (int z = 0; z <= (count3 - 1); z++)
        {
            s3[z] = Convert.ToInt16(s1[z].Substring(3));
        }

        switch (a)
        {
            case "ADMIN":
                {
                    for (t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "AAA")
                        {
                            s4 = t;
                            break;
                        }

                    }
                    string s7;
                    int s5 = s3[s4];
                    s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "AAA" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "AAA" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "AAA" + Convert.ToString(s6);
                        }
                    }
                    Label10.Text = s7;
                    break;
                }
            case "PROGRAMMER":
                {
                    for (t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "PPP")
                        {
                            s4 = t;
                            break;
                        }

                    }

                    string s7;
                    int s5 = s3[s4];
                    s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "PPP" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "PPP" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "PPP" + Convert.ToString(s6);
                        }
                    }
                    Label10.Text = s7;
                    break;
                }
            case "TEACHER":
                {
                    for (t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "TTT")
                        {
                            s4 = t;
                            break;
                        }

                    }
                    string s7;
                    int s5 = s3[s4];
                    s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "TTT" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "TTT" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "TTT" + Convert.ToString(s6);
                        }
                    }
                    Label10.Text = s7;
                    break;
                }
        }
    }
}
   

    

    
    

