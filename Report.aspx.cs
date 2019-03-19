using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Teacherwise")
        {
            Response.Redirect("Report2.aspx");
        }
        if (DropDownList1.SelectedItem.Text == "UG Classwise")
        {
            Response.Redirect("Report3.aspx");
        }
        if (DropDownList1.SelectedItem.Text == "PG Classwise")
        {
            Response.Redirect("Report3.aspx");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
       

    }
}