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

public partial class trans5 : System.Web.UI.Page
{


    static int coun;
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
            con.Close();
            con.Open();
            SqlCommand cmd3;
            string[] s7 = new string[count3];
            string cmd3String = "Select fname from title_tab";
            cmd3 = new SqlCommand(cmd3String, con);
            SqlDataReader dr1;
            dr1 = cmd3.ExecuteReader();
            int inc1 = 0;
            while (dr1.Read())
            {
                s7[inc1++] = Convert.ToString((dr1["fname"]));

            }
            cmd3.Dispose();
            dr1.Dispose();
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
                    DropDownList6.Items.Add(s7[k]);
                }


                if (s2[k] == "RNO")
                {
                    DropDownList9.Items.Add(s7[k]);
                }
                if (s2[k] == "SUB")
                {
                    DropDownList5.Items.Add(s7[k]);
                }
                if (s2[k] == "CCC")
                {
                    DropDownList1.Items.Add(s7[k]);
                }
                if (s2[k] == "SEM")
                {
                    DropDownList3.Items.Add(s7[k]);
                }
                if (s2[k] == "BNO")
                {
                    DropDownList10.Items.Add(s7[k]);
                }
                if (s2[k] == "BBB")
                {

                    DropDownList2.Items.Add(s7[k]);


                }
                if (s2[k] == "BAT")
                {
                    DropDownList4.Items.Add(s7[k]);
                }
            }
        }
        else
        {
            Response.Redirect("home.aspx");
        }
    }
    protected void DAYRBTN_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DAYRBTN.SelectedItem.Text == "GDAY")
        {
            GDAYLIST.Visible = true;
            DAYLIST.Visible = false;
        }
        if (DAYRBTN.SelectedItem.Text == "DAY")
        {
            DAYLIST.Visible = true;
            GDAYLIST.Visible = false;
        }
    }
   
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void GDAYLIST_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void DAYLIST_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void TIMELIST_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        int inc4 = 0;
        con.Open();
        SqlDataAdapter adapter = new SqlDataAdapter();
        SqlCommand ss11;
        DataSet ds1 = new DataSet();
        String ss1 = "select id from transaction_tab";
        ss11 = new SqlCommand(ss1, con);
        adapter.SelectCommand = ss11;
        adapter.Fill(ds1, "transaction_tab");
        coun = ds1.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr;
        dr = ss11.ExecuteReader();
        String[] ids = new String[coun];
        while (dr.Read())
        {
            ids[inc4++] = Convert.ToString((dr["id"]));
        }

        for (int i = 0; i < coun; i++)
        {

            ListBox1.Items.Add(ids[i]);
        }
        con.Close();
        int id1 = Convert.ToInt16(ids[(coun - 1)]);
        String[] d1 = { "WEDNESDAY", "THURSDAY", "SUNDAY", "MONDAY" };
        String[] d2 = { "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY" };
        String[] d3 = { "FRIDAY", "SATURDAY", "SUNDAY", "MONDAY" };
        String[] d4 = { "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY", "MONDAY" };
        if (GDAYLIST.SelectedValue.ToString() == "01")
        {

            int bb = 0;
            int aa = 1;
            while (aa != 5)
            {
                id1++;
                con.Open();
                string cmd3string = "Insert into transaction_tab (id,roomno,subject,course,branch,batch,teacher,time,building,period,sem,day) Values ('" + id1 + "','" + DropDownList9.Text.ToString() + "','" + DropDownList5.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + DropDownList2.Text + "','" + DropDownList4.Text + "','" + DropDownList6.Text + "','" + TIMELIST.SelectedItem.Text + "','" + DropDownList10.Text + "','" + TIMELIST.SelectedValue.ToString() + "','" + DropDownList3.Text + "','" + d1[bb] + "')";
                SqlCommand cmd3 = new SqlCommand(cmd3string, con);
                cmd3.ExecuteNonQuery();
                con.Close();
                bb++;
                aa++;
            }
        }
        if (GDAYLIST.SelectedValue.ToString() == "02")
        {

            int bb = 0;
            int aa = 1;
            while (aa != 5)
            {
                con.Open();
                id1++;
                string cmd3string = "Insert into transaction_tab (id,roomno,subject,course,branch,batch,teacher,time,building,period,sem,day) Values ('" + id1 + "','" + DropDownList9.Text.ToString() + "','" + DropDownList5.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + DropDownList2.Text + "','" + DropDownList4.Text + "','" + DropDownList6.Text + "','" + TIMELIST.SelectedItem.Text + "','" + DropDownList10.Text + "','" + TIMELIST.SelectedValue.ToString() + "','" + DropDownList3.Text + "','" + d2[bb] + "')";
                SqlCommand cmd3 = new SqlCommand(cmd3string, con);
                cmd3.ExecuteNonQuery();
                con.Close();
                bb++;
                aa++;
            }
        }
        if (GDAYLIST.SelectedValue.ToString() == "03")
        {

            int bb = 0;
            int aa = 1;
            while (aa != 5)
            {
                con.Open();
                id1++;
                string cmd3string = "Insert into transaction_tab (id,roomno,subject,course,branch,batch,teacher,time,building,period,sem,day) Values ('" + id1 + "','" + DropDownList9.Text.ToString() + "','" + DropDownList5.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + DropDownList2.Text + "','" + DropDownList4.Text + "','" + DropDownList6.Text + "','" + TIMELIST.SelectedItem.Text + "','" + DropDownList10.Text + "','" + TIMELIST.SelectedValue.ToString() + "','" + DropDownList3.Text + "','" + d3[bb] + "')";
                SqlCommand cmd3 = new SqlCommand(cmd3string, con);
                cmd3.ExecuteNonQuery();
                con.Close();
                bb++;
                aa++;
            }
        }
        if (GDAYLIST.SelectedValue.ToString() == "04")
        {
            int bb = 0;
            int aa = 1;
            while (aa != 7)
            {
                id1++;
                con.Open();
                string cmd3string = "Insert into transaction_tab (id,roomno,subject,course,branch,batch,teacher,time,building,period,sem,day) Values ('" + id1 + "','" + DropDownList9.Text.ToString() + "','" + DropDownList5.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + DropDownList2.Text + "','" + DropDownList4.Text + "','" + DropDownList6.Text + "','" + TIMELIST.SelectedItem.Text + "','" + DropDownList10.Text + "','" + TIMELIST.SelectedValue.ToString() + "','" + DropDownList3.Text + "','" + d4[bb] + "')";
                SqlCommand cmd3 = new SqlCommand(cmd3string, con);
                cmd3.ExecuteNonQuery();
                con.Close();
                bb++;
                aa++;
            }
        }
        for (int q = 0; q < 6; q++)
        {
            if (DAYLIST.SelectedValue.ToString() == q.ToString())
            {

                con.Open();
                id1++;
                string cmd3string = "Insert into transaction_tab (id,roomno,subject,course,branch,batch,teacher,time,building,period,sem,day) Values ('" + id1 + "','" + DropDownList9.Text.ToString() + "','" + DropDownList5.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + DropDownList2.Text + "','" + DropDownList4.Text + "','" + DropDownList6.Text + "','" + TIMELIST.SelectedItem.Text + "','" + DropDownList10.Text + "','" + TIMELIST.SelectedValue.ToString() + "','" + DropDownList3.Text + "','" + d4[q] + "')";
                SqlCommand cmd3 = new SqlCommand(cmd3string, con);
                cmd3.ExecuteNonQuery();
                con.Close();

            }
        }
        
       
         
        con.Open();
        SqlDataAdapter adapter1 = new SqlDataAdapter();
        DataSet data1 = new DataSet();
        SqlCommand s1;
        String st1 = "SELECT day,time,roomno FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY day,time,roomno)";
        s1 = new SqlCommand(st1, con);
        adapter1.SelectCommand = s1;
        adapter1.Fill(data1, "transaction_tab");
        int cou1 = data1.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr1;
        dr1 = s1.ExecuteReader();
        int inc = 0;
        string[] str1 = new string[cou1];
        while (dr1.Read())
        {
            str1[inc++] = Convert.ToString((dr1["day"]));
        }
        if (cou1 != 0)
        {
            MessageBox.Show(cou1 + " dublicate records " + str1[0] + " " + TIMELIST.SelectedItem.ToString() + " " + DropDownList9.SelectedItem.ToString() + "deleted");

        }
        con.Close();
        adapter1.Dispose();
        con.Open();
        SqlDataAdapter adapter11 = new SqlDataAdapter();
        DataSet data11 = new DataSet();
        SqlCommand s11;
        String st11 = "SELECT roomno,course,time,day FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY roomno,course,time,day)";
        s11 = new SqlCommand(st11, con);
        adapter11.SelectCommand = s11;
        adapter11.Fill(data11, "transaction_tab");
        int cou11 = data11.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr11;
        dr11 = s11.ExecuteReader();
        int inc1 = 0;
        string[] str11 = new string[cou11];
        while (dr11.Read())
        {
            str11[inc1++] = Convert.ToString((dr11["day"]));
        }
        if (cou11 != 0)
        {
            MessageBox.Show(cou11 + " dublicate records " + str11[0] + " " + TIMELIST.SelectedItem.ToString() + " " + DropDownList9.SelectedItem.ToString() + "deleted");

        }
        con.Close();
        adapter11.Dispose();
        con.Open();
        SqlDataAdapter adapter12 = new SqlDataAdapter();
        DataSet data12 = new DataSet();
        SqlCommand s12;
        String st12 = "SELECT day,time,teacher FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY day,time,teacher)";
        s12 = new SqlCommand(st12, con);
        adapter12.SelectCommand = s12;
        adapter12.Fill(data12, "transaction_tab");
        int cou12 = data12.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr12;
        dr12 = s12.ExecuteReader();
        int inc2 = 0;
        string[] str12 = new string[cou12];
        while (dr12.Read())
        {
            str12[inc2++] = Convert.ToString((dr12["day"]));
        }
        if (cou12 != 0)
        {
            MessageBox.Show(cou12 + " dublicate records " + str12[0] + " " + TIMELIST.SelectedItem.ToString() + " " + DropDownList6.SelectedItem.ToString() + " " + DropDownList1.SelectedItem.ToString() + "deleted");

        }
        con.Close();
        adapter12.Dispose();
        con.Open();
        SqlDataAdapter adapter13 = new SqlDataAdapter();
        DataSet data13 = new DataSet();
        SqlCommand s13;
        String st13 = "SELECT day,time,teacher,course FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY day,time,teacher,course)";
        s13 = new SqlCommand(st13, con);
        adapter13.SelectCommand = s13;
        adapter13.Fill(data13, "transaction_tab");
        int cou13 = data13.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr13;
        dr13 = s13.ExecuteReader();
        int inc3 = 0;
        string[] str13 = new string[cou13];
        while (dr13.Read())
        {
            str13[inc3++] = Convert.ToString((dr13["day"]));
        }
        if (cou13 != 0)
        {
            MessageBox.Show(cou13 + " dublicate records " + str13[0] + " " + TIMELIST.SelectedItem.ToString() + " " + DropDownList1.SelectedItem.ToString() + " " + DropDownList6.SelectedItem.ToString() + "deleted");

        }
        con.Close();
        adapter13.Dispose();
        con.Open();
        SqlDataAdapter adapter14 = new SqlDataAdapter();
        DataSet data14 = new DataSet();
        SqlCommand s14;
        String st14 = "SELECT day,time,teacher,course,batch FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY day,time,teacher,course,batch)";
        s14 = new SqlCommand(st14, con);
        adapter14.SelectCommand = s14;
        adapter14.Fill(data14, "transaction_tab");
        int cou14 = data14.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr14;
        dr14 = s14.ExecuteReader();
        int inc40 = 0;
        string[] str14 = new string[cou14];
        while (dr14.Read())
        {
            str14[inc40++] = Convert.ToString((dr14["day"]));
        }
        if (cou14 != 0)
        {
            MessageBox.Show(cou14 + " dublicate records " + str14[0] + " " + TIMELIST.SelectedItem.ToString() + " " + DropDownList6.SelectedItem.ToString() + " " + DropDownList1.SelectedItem.ToString() + DropDownList4.SelectedItem.ToString() + "deleted");

        }
        con.Close();
        adapter14.Dispose();
        con.Open();
        SqlDataAdapter adapter15 = new SqlDataAdapter();
        DataSet data15 = new DataSet();
        SqlCommand s15;
        String st15 = "SELECT roomno,teacher,time,day FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY roomno,teacher,time,day)";
        s15 = new SqlCommand(st15, con);
        adapter15.SelectCommand = s15;
        adapter15.Fill(data15, "transaction_tab");
        int cou15 = data15.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr15;
        dr15 = s15.ExecuteReader();
        int inc5 = 0;
        string[] str15 = new string[cou15];
        while (dr15.Read())
        {
            str15[inc5++] = Convert.ToString((dr15["day"]));
        }
        if (cou15 != 0)
        {
            MessageBox.Show(cou15 + " dublicate records " + str15[0] + " " + TIMELIST.SelectedItem.ToString() + " " + DropDownList6.SelectedItem.ToString() + " " + DropDownList9.SelectedItem.ToString() + "deleted");

        }

        con.Close();
        adapter15.Dispose();
        con.Open();
        String del1 = "DELETE FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY day,time,roomno)";
        String del2 = "DELETE FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY roomno,course,time,day)";
        String del3 = "DELETE FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY day,time,teacher)";
        String del4 = "DELETE FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY day,time,teacher,course)";
        String del5 = "DELETE FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY day,time,teacher,course,batch)";
        String del6 = "DELETE FROM transaction_tab WHERE id NOT IN (SELECT MIN (id) FROM transaction_tab GROUP BY roomno,teacher,time,day)";
        SqlCommand del11 = new SqlCommand(del1, con);
        SqlCommand del22 = new SqlCommand(del2, con);
        SqlCommand del33 = new SqlCommand(del3, con);
        SqlCommand del44 = new SqlCommand(del4, con);
        SqlCommand del55 = new SqlCommand(del5, con);
        SqlCommand del66 = new SqlCommand(del6, con);
        del11.ExecuteNonQuery();
        del22.ExecuteNonQuery();
        del33.ExecuteNonQuery();
        del44.ExecuteNonQuery();
        del55.ExecuteNonQuery();
        del66.ExecuteNonQuery();
        con.Close();
        ImageButton2.Visible = true;


        ///////////////
        
   /*     con.Open();
        SqlDataAdapter adapter101 = new SqlDataAdapter();
        DataSet data101 = new DataSet();
        SqlCommand s101;
        String st101 = "SELECT id,roomno,subject,course,branch,batch,teacher,day,time,building,period,sem,l1,l2 FROM transaction_tab order by(id)";
        s101 = new SqlCommand(st101, con);
        adapter101.SelectCommand = s101;
        adapter101.Fill(data101, "transaction_tab");
        int cou101 = data101.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr101;
        dr101 = s101.ExecuteReader();
        int incr1e = 0; int incr2e = 0; int incr3e = 0; int incr4e = 0; int incr5e = 0; int incr6e = 0; int incr7e = 0; int incr8e = 0;
        int incr9e = 0; int incr10e = 0; int incr11e = 0; int incr12e = 0; int incr13e = 0; int incr14e = 0;
        string[] str101 = new string[cou101];
        string[] str102 = new string[cou101];
        string[] str103 = new string[cou101];
        string[] str104 = new string[cou101];
        string[] str105 = new string[cou101];
        string[] str106 = new string[cou101];
        string[] str107 = new string[cou101];
        string[] str108 = new string[cou101];
        string[] str109 = new string[cou101];
        string[] str1010 = new string[cou101];
        string[] str1011 = new string[cou101];
        string[] str1012= new string[cou101];
        string[] str1013= new string[cou101];
        string[] str1014= new string[cou101];
        while (dr101.Read())
        {
            str101[incr1e++] = Convert.ToString((dr101["id"]));
            str102[incr2e++] = Convert.ToString((dr101["roomno"]));
            str103[incr3e++] = Convert.ToString((dr101["subject"]));
            str104[incr4e++] = Convert.ToString((dr101["course"]));
            str105[incr5e++] = Convert.ToString((dr101["branch"]));
            str106[incr6e++] = Convert.ToString((dr101["batch"]));
            str107[incr7e++] = Convert.ToString((dr101["teacher"]));
            str108[incr8e++] = Convert.ToString((dr101["day"]));
            str109[incr9e++] = Convert.ToString((dr101["time"]));
            str1010[incr10e++] = Convert.ToString((dr101["building"]));
            str1011[incr11e++] = Convert.ToString((dr101["period"]));
            str1012[incr12e++] = Convert.ToString((dr101["sem"]));
            str1013[incr13e++] = Convert.ToString((dr101["l1"]));
            str1014[incr14e++] = Convert.ToString((dr101["l2"]));
        }

        con.Close();
        adapter101.Dispose();
        con.Open();

        string cmtring = "delete from transaction_tab";
        SqlCommand cmd303 = new SqlCommand(cmtring, con);
        cmd303.ExecuteNonQuery();
        con.Close();
        con.Open();
        for (int i = 0; i < (cou101) - 1; i++)
        {
            string cmt1ring = "Insert into transaction_tab (id,roomno,subject,course,branch,batch,teacher,day,time,building,period,sem,l1,l2) Values ('" + str101[i] + "','" + str102[i] + "','" + str103[i] + "','" + str104[i] + "','" + str105[i] + "','" + str106[i] + "','" + str107[i] + "','" + str108[i] + "','" + str109[i] + "','" + str1010[i] + "','" + str1011[i] + "','" + str1012[i] + "','" + str1013[i] + "','" + str1014[i] + "')";
            SqlCommand cmd1303 = new SqlCommand(cmt1ring, con);
            cmd1303.ExecuteNonQuery();

        }
        con.Close();*/
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ListItem[] ids1 = new ListItem[ListBox1.Items.Count];
        ListBox1.Items.CopyTo(ids1, 0);
        con.Open();
        SqlDataAdapter adapter16 = new SqlDataAdapter();
        DataSet data16 = new DataSet();
        SqlCommand s16;
        String st16 = "SELECT id FROM transaction_tab";
        s16 = new SqlCommand(st16, con);
        adapter16.SelectCommand = s16;
        adapter16.Fill(data16, "transaction_tab");
        int cou16 = data16.Tables["transaction_tab"].Rows.Count;
        SqlDataReader dr16;
        dr16 = s16.ExecuteReader();
        int inc18 = 0;
        string[] id18 = new string[cou16];
        while (dr16.Read())
        {
            id18[inc18++] = Convert.ToString((dr16["id"]));
        }
        con.Close();
        int rec = cou16 - coun;
        int rec1 = cou16 + coun;
        string[] mer = new string[rec1];
        int z = 0;
        for (int i = 0; i < coun; i++)
        {
            mer[z] = ids1[i].ToString();
            z++;
        }
        for (int i = 0; i < cou16; i++)
        {
            mer[z] = id18[i];
            z++;
        }

        int count = 1;
        int k = 0;
        int j = 0;
        int p = 0;
        for (int i = 0; i < rec1; i++)
        {
            for (j = 0; j < (rec1 - 1); j++)
            {
                if ((Int64.Parse(mer[j])) > (Int64.Parse(mer[j + 1])))
                {
                    String temp = mer[j];
                    mer[j] = mer[j + 1];
                    mer[j + 1] = temp;
                }
            }
        }

        string[] mer1 = new string[rec];
        for (int i = 0; i < rec1; i++)
        {
            count = 1;
            for (j = (i + 1); j < rec1; j++)
            {

                if (mer[i] == mer[j])
                {
                    for (k = j; k < (rec1 - 1); k++)

                        mer[k] = mer[k + 1];
                    rec1 = rec1 - 1;
                    count++;

                }
                else
                    j++;
            }
            if (count == 1)
            {
                mer1[p++] = mer[i];
            }

        }

        if (coun == cou16)
        {
            MessageBox.Show("prevoius transaction is deleted");
        }
        else
        {
            con.Open();
            for (int i = 0; i < rec; i++)
            {

                String cmaa = "DELETE FROM transaction_tab WHERE id IN (" + mer1[i] + ")";
                SqlCommand cmd31 = new SqlCommand(cmaa, con);
                cmd31.ExecuteNonQuery();
            }
            con.Close();

            MessageBox.Show("prevoius transaction is deleted");
        }
        ListBox1.Items.Clear();
       
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        String aa = DropDownList1.SelectedItem.ToString();
        DropDownList2.Items.Add(aa);

        if (DropDownList1.SelectedItem.ToString() == "Bachelor Of Computer Application")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Computer Science");
            DropDownList2.Items.Add("Computer Application");
        }
        if (DropDownList1.SelectedItem.ToString() == "Bachelor Of Computer Application")
        {
            DropDownList3.Items.Remove("VII");
            DropDownList3.Items.Remove("VIII SEMESTER");
            
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");

    }
}


























