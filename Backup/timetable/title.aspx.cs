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

public partial class title : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    public void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String a = DropDownList1.SelectedItem.ToString();
        con.Open();
        SqlCommand cmd1;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        string cmd1string = "Select id from title_tab";
        cmd1 = new SqlCommand(cmd1string, con);
        adapter.SelectCommand = cmd1;
        adapter.Fill(ds1, "title_tab");
        adapter.Dispose();
        cmd1.Dispose();
        int count3 = ds1.Tables["title_tab"].Rows.Count;
        con.Close();
        adapter.Dispose();
        con.Open();
        SqlCommand cmd2;
        string[] s1 = new string[count3];
        string cmd2String = "Select id from title_tab";
        cmd2 = new SqlCommand(cmd2String, con);
        SqlDataReader dr;
        dr = cmd2.ExecuteReader();
        int inc = 0;
        while (dr.Read())
        {
            s1[inc++] = Convert.ToString((dr["id"]));

        }
        cmd2.Dispose();
        dr.Dispose();
        int count = s1.Length;
        int count1 = s1[0].Length;
        string[] s2 = new string[count];
        int s4 = 0;
        int t = 0;
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
            case "Teacher":
                {
                    for ( t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "TTT")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
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
                    Label9.Text = s7;
                    break;
                }
            case "Course":
                {
                    for ( t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "CCC")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];

                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "CCC" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "CCC" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "CCC" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
            case "Semester":
                {
                    for ( t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "SEM")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "SEM" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "SEM" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "SEM" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
                case "Branch":
                {
                    for ( t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "BBB")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "BBB" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "BBB" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "BBB" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
                case "Timing":
                {
                    for (t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "TIM")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "TIM" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "TIM" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "TIM" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
                case "Period No.":
                {
                    for ( t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "PPP")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
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
                    Label9.Text = s7;
                    break;
                }
                case "Room":
                {
                    for (t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "RNO")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "RNO" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "RNO" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "RNO" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
                case "Day":
                {
                    for (t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "DAY")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "DAY" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "DAY" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "DAY" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
                case "Subject":
                {
                    for ( t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "SUB")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "SUB" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "SUB" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "SUB" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
               case "Building":
                {
                    for (t = (count3-1); t >= 0; t--)
                    {
                        if (s2[t] == "BNO")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "BNO" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "BNO" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "BNO" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
                case "Batch":
                {
                    for ( t = (count3 - 1); t >= 0; t--)
                    {
                        if (s2[t] == "BAT")
                        {
                            s4 = t;
                        }
                        break;
                    }
                    string s7;
                    int s5 = s3[s4];
                    int s6 = (s5 + 001);
                    if (s6 <= 9)
                    {
                        s7 = "BAT" + Convert.ToString("00") + Convert.ToString(s6);
                    }
                    else
                    {
                        if (s6 <= 99)
                        {
                            s7 = "BAT" + Convert.ToString("0") + Convert.ToString(s6);
                        }
                        else
                        {
                            s7 = "BAT" + Convert.ToString(s6);
                        }
                    }
                    Label9.Text = s7;
                    break;
                }
        }
        con.Close();
   
    }

       public void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string cmd3string = "Insert into title_tab (id,name,fname,sname,ssname) Values ('"+Label9.Text.ToString() + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        SqlCommand cmd3 = new SqlCommand(cmd3string,con);
        cmd3.ExecuteNonQuery();
        con.Close();
        Label9.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";

    }
  
}


