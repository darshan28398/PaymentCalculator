using System;
using System.Collections.Generic;
//Vishvajit Kher
//101015270
//Labtest1
//crn - 49432
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCalculatePay_Click(object sender, EventArgs e)
    {
        if(IsValid)
            Response.Redirect("Report.aspx");
    }
}