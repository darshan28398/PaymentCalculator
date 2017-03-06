//Vishvajit Kher
//101015270
//Labtest1
//crn - 49432
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
        if (PreviousPage != null)
        {
            TextBox id = (TextBox)PreviousPage.FindControl("txtEmployeeID");
            TextBox name = (TextBox)PreviousPage.FindControl("txtName");
            TextBox department = (TextBox)PreviousPage.FindControl("txtDepartment");
            TextBox position = (TextBox)PreviousPage.FindControl("txtPosition");
            TextBox paymentperiod = (TextBox)PreviousPage.FindControl("txtPaymentPeriod");
            TextBox hrsworked = (TextBox)PreviousPage.FindControl("txtHoursWorked");
            TextBox ovrtimeworked = (TextBox)PreviousPage.FindControl("txtOvertimeWorked");
            TextBox hrate = (TextBox)PreviousPage.FindControl("txtHourlyRate");
            TextBox orate = (TextBox)PreviousPage.FindControl("txtOvertimeRate");

            lblID.Text = id.Text;
            lblName.Text = name.Text;
            lblDepartment.Text = department.Text;
            lblPosition.Text = position.Text;
            lblPaymentPeriod.Text = paymentperiod.Text;
            lblHoursWorked.Text = hrsworked.Text;
            lblHoursWorked1.Text = ovrtimeworked.Text;
            lblHourlyRate.Text = hrate.Text;
            lblOvertimeRate.Text = orate.Text;

            int x = Convert.ToInt32(lblHoursWorked.Text);
            double x1 = Double.Parse(lblHourlyRate.Text);
            int y = Int32.Parse(lblHoursWorked1.Text);
            double y1 = Double.Parse(lblOvertimeRate.Text);
            double z = x * x1;
            double z1 = y * y1;
            double final = z + z1;
            lblA.Text = z.ToString();
            lblB.Text = z1.ToString();
            lblC.Text = final.ToString();
        }

    }
    protected void btnBackPage_Click(object sender, EventArgs e)
    {
        //Server.Transfer("Default.aspx");
        Response.Redirect("Default.aspx");
    }
}