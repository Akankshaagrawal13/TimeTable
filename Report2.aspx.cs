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
public partial class Report2 : System.Web.UI.Page
{
    public static SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
   

    protected void Page_Load(object sender, EventArgs e)
    {
        form1.Visible = true;
       
            Label1.Visible = true;
            DropDownList1.Visible = true;
            Button1.Visible = true;
            con.Open();
            SqlCommand cmd1;
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds1 = new DataSet();
            string cmd1string = "Select id,fname from title_tab";
            cmd1 = new SqlCommand(cmd1string, con);
            adapter.SelectCommand = cmd1;
            adapter.Fill(ds1, "title_tab");

            int count3 = ds1.Tables["title_tab"].Rows.Count;


            string[] s1 = new string[count3];
            string[] s7 = new string[count3];
            int inc1 = 0;
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();
            int inc = 0;
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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label2.Text = DropDownList1.SelectedItem.Text.ToString();
        con.Open();
        SqlDataAdapter adapter1 = new SqlDataAdapter();
        SqlCommand ss11;
        DataSet ds1 = new DataSet();
        String ss1 = "select fname,sname from title_tab";

        ss11 = new SqlCommand(ss1, con);
        adapter1.SelectCommand = ss11;
        adapter1.Fill(ds1, "title_tab");
        int coun1 = ds1.Tables["title_tab"].Rows.Count;
        SqlDataReader dr1;
        dr1 = ss11.ExecuteReader();
        int inc1 = 0;
        String[] ids1 = new String[coun1];
        int inc2 = 0;
        String[] ids2 = new String[coun1];
        while (dr1.Read())
        {
            ids1[inc1++] = Convert.ToString((dr1["fname"]));
            ids2[inc2++] = Convert.ToString((dr1["sname"]));
        }
        adapter1.Dispose();
        ds1.Dispose();
        con.Close();
        con.Open();
        SqlDataAdapter adapter3 = new SqlDataAdapter();
        SqlCommand ss33;
        DataSet ds3 = new DataSet();
        String ss3 = "select building,roomno,subject,course,branch,batch,day,time,sem from transaction_tab where teacher = '" + Label2.Text.ToString() + "'";
        ss33 = new SqlCommand(ss3, con);
        adapter3.SelectCommand = ss33;
        adapter3.Fill(ds3, "transaction_tab");
        int coun3 = ds3.Tables["transaction_tab"].Rows.Count;
        SqlDataReader d3;
        d3 = ss33.ExecuteReader();
        int inc3 = 0;
        int inc4 = 0;
        int inc5 = 0;
        int inc6 = 0;
        int inc7 = 0;
        int inc8 = 0;
        int inc9 = 0;
        int inc10 = 0;
        int inc11 = 0;
        String[] ids3 = new String[coun3];
        String[] ids4 = new String[coun3];
        String[] ids5 = new String[coun3];
        String[] ids6 = new String[coun3];
        String[] ids7 = new String[coun3];
        String[] ids8 = new String[coun3];
        String[] ids9 = new String[coun3];
        String[] ids10 = new String[coun3];
        String[] ids11 = new String[coun3];
        while (d3.Read())
        {
            ids10[inc10++] = Convert.ToString((d3["building"]));
            ids3[inc3++] = Convert.ToString((d3["roomno"]));
            ids4[inc4++] = Convert.ToString((d3["subject"]));
            ids5[inc5++] = Convert.ToString((d3["course"]));
            ids11[inc11++] = Convert.ToString((d3["branch"]));
            ids6[inc6++] = Convert.ToString((d3["batch"]));
            ids7[inc7++] = Convert.ToString((d3["day"]));
            ids8[inc8++] = Convert.ToString((d3["time"]));
            ids9[inc9++] = Convert.ToString((d3["sem"]));
        }
        adapter3.Dispose();
        ds3.Dispose();
        con.Close();
        

       
       
        int k = 0; int l = 0; int m = 0; int n = 0; int o = 0; int p = 0; int q = 0; int r = 0; int s = 0; ;
        String[] ids33 = new String[coun3];
        String[] ids44 = new String[coun3];
        String[] ids55 = new String[coun3];
        String[] ids66 = new String[coun3];
        String[] ids77 = new String[coun3];
        String[] ids88 = new String[coun3];
        String[] ids99 = new String[coun3];
        String[] ids101 = new String[coun3];
        String[] ids112 = new String[coun3];
        for (int i = 0; i < coun3; i++)
        {
            for (int j = 0; j < coun1; j++)
            {
                if (ids3[i] == ids1[j])
                {
                    ids33[k++] = ids2[j];
                    break;
                }
            }
            for (int j = 0; j < coun1; j++)
            {
                if (ids4[i] == ids1[j])
                {
                    ids44[l++] = ids2[j];
                    break;
                }
            }
            for (int j = 0; j < coun1; j++)
            {
                if (ids5[i] == ids1[j])
                {
                    ids55[m++] = ids2[j];
                    break;
                }
            }
            for (int j = 0; j < coun1; j++)
            {
                if (ids6[i] == ids1[j])
                {
                    ids66[n++] = ids2[j];
                    break;
                }
            }
            for (int j = 0; j < coun1; j++)
            {
                if (ids7[i] == ids1[j])
                {
                    ids77[o++] = ids2[j];
                    break;
                }
            }
            for (int j = 0; j < coun1; j++)
            {
                if (ids8[i] == ids1[j])
                {
                    ids88[p++] = ids2[j];
                    break;
                }
            }
            for (int j = 0; j < coun1; j++)
            {
                if (ids9[i] == ids1[j])
                {
                    ids99[q++] = ids2[j];
                    break;
                }
            }
            for (int j = 0; j < coun1; j++)
            {
                if (ids10[i] == ids1[j])
                {
                    ids101[r++] = ids2[j];
                    break;
                }
            }
            for (int j = 0; j < coun1; j++)
            {
                if (ids11[i] == ids1[j])
                {
                    ids112[s++] = ids2[j];
                    break;
                }
            }
        }
        for (int i = 0; i < coun3; i++)
        {
            con.Open();
            String ss4 = "Insert into report2 (roomno,subject,course,branch,batch,day,time,sem,building) Values ('" + ids33[i] + "','" + ids44[i] + "','" + ids55[i] + "','" + ids112[i] + "','" + ids66[i] + "','" + ids77[i] + "','" + ids88[i] + "','" + ids99[i] + "','" + ids101[i] + "')";
            SqlCommand ss44 = new SqlCommand(ss4, con);
            ss44.ExecuteNonQuery();
            con.Close();

        }
        Label[] lab1;
        lab1 = new Label[] { Label5, Label6, Label7, Label8, Label9, Label10, Label11, Label12, Label13 };
        Label[] lab2;
        lab2 = new Label[] { Label69, Label70, Label71, Label72, Label73, Label74 };
        Label[] lab3;
        lab3 = new Label[] { Label15, Label16, Label17, Label18, Label19, Label20, Label21, Label22, Label23, Label24, Label25, Label26, Label27, Label28, Label29, Label30, Label31, Label32, Label33, Label34, Label35, Label36, Label37, Label38, Label39, Label40, Label41, Label42, Label43, Label44, Label45, Label46, Label47, Label48, Label49, Label50, Label51, Label52, Label53, Label54, Label55, Label56, Label57, Label58, Label59, Label60, Label61, Label62, Label63, Label64, Label65, Label66, Label67, Label68 };
        String[] disp = new String[1];
        int dis = 0;
        String[] disp5 = new String[1];
        int dis5 = 0;
        String[] disp6 = new String[1];
        int dis6 = 0;
        String[] disp7 = new String[1];
        int dis7 = 0;
        int kkk = 0;
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 9; j++)
            {
                con.Open();
                SqlDataAdapter adapter4 = new SqlDataAdapter();
                SqlCommand ss44;
                DataSet ds4 = new DataSet();
                String ss4 = "select roomno from report2 where day = '" + lab2[i].Text + "' and time = '" + lab1[j].Text + "'";
                ss44 = new SqlCommand(ss4, con);
                adapter4.SelectCommand = ss44;
                adapter4.Fill(ds4, "report");

                SqlDataReader dr4;
                dr4 = ss44.ExecuteReader();

                while (dr4.Read())
                {
                    disp[dis] = Convert.ToString((dr4["roomno"]));

                }
                adapter4.Dispose();
                ds4.Dispose();
                con.Close();


                lab3[kkk].Text = disp[dis];


                kkk++;
                disp[dis] = null;
                dis = 0;
            }
        }

        String xx, yy;
        int qqq = 0;
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 9; j++)
            {

                con.Open();
                SqlDataAdapter adapter5 = new SqlDataAdapter();
                SqlCommand ss55;
                DataSet ds5 = new DataSet();
                String ss5 = "select subject from report2 where day = '" + lab2[i].Text + "' and time = '" + lab1[j].Text + "'";
                ss55 = new SqlCommand(ss5, con);
                adapter5.SelectCommand = ss55;
                adapter5.Fill(ds5, "report");

                SqlDataReader dr5;
                dr5 = ss55.ExecuteReader();

                while (dr5.Read())
                {
                    disp5[dis5] = Convert.ToString((dr5["subject"]));

                }
                adapter5.Dispose();
                ds5.Dispose();
                con.Close();

                xx = lab3[qqq].Text;
                lab3[qqq].Text = "";
                yy = disp5[dis5];
                lab3[qqq].Text = xx + '\n' + yy;
                qqq++;
                disp5[dis5] = null;

                dis5 = 0;

            }
        }
        int www = 0;
        String xx1, yy1;
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 9; j++)
            {

                con.Open();
                SqlDataAdapter adapter6 = new SqlDataAdapter();
                SqlCommand ss66;
                DataSet ds6 = new DataSet();
                String ss6 = "select course from report2 where day = '" + lab2[i].Text + "' and time = '" + lab1[j].Text + "'";
                ss66 = new SqlCommand(ss6, con);
                adapter6.SelectCommand = ss66;
                adapter6.Fill(ds6, "report");

                SqlDataReader dr6;
                dr6 = ss66.ExecuteReader();

                while (dr6.Read())
                {
                    disp6[dis6] = Convert.ToString((dr6["course"]));

                }
                adapter6.Dispose();
                ds6.Dispose();
                con.Close();

                xx1 = lab3[www].Text;
                lab3[www].Text = "";
                yy1 = disp6[dis6];
                lab3[www].Text = xx1 + '\n' + yy1;
                www++;
                dis6 = 0;
                disp6[dis6] = null;
            }
        }
        int ppp = 0;
        String xx2, yy2;
        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 9; j++)
            {

                con.Open();
                SqlDataAdapter adapter7 = new SqlDataAdapter();
                SqlCommand ss77;
                DataSet ds7 = new DataSet();
                String ss7 = "select sem from report2 where day = '" + lab2[i].Text + "' and time = '" + lab1[j].Text + "'";
                ss77 = new SqlCommand(ss7, con);
                adapter7.SelectCommand = ss77;
                adapter7.Fill(ds7, "report");
                SqlDataReader dr7;
                dr7 = ss77.ExecuteReader();
                while (dr7.Read())
                {
                    disp7[dis7] = Convert.ToString((dr7["sem"]));

                }
                adapter7.Dispose();
                ds7.Dispose();
                con.Close();

                xx2 = lab3[ppp].Text;
                lab3[ppp].Text = null;
                yy2 = disp7[dis7];
                lab3[ppp].Text = xx2 + yy2;
                ppp++;
                disp7[dis7] = null;
                dis7 = 0;
            }
        }
      con.Open();
        String ss414 = "delete from report2";
        SqlCommand ss4414 = new SqlCommand(ss414, con);
        ss4414.ExecuteNonQuery();
        con.Close();
    }

    protected void printButton_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
       
        DropDownList1.Visible = false;
        
        Button1.Visible = false;
        printButton.Visible = false;
        printButton.Attributes.Add("onclick", "return printing()");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
}



   
      










