<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1> Payroll Report for
        <asp:Label ID="lblName" runat="server"></asp:Label>
        </h1>
        <table class="auto-style1">
            <tr>
                <td>ID#<asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Department:
                    <asp:Label ID="lblDepartment" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Position:
                    <asp:Label ID="lblPosition" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Payment Period:
                    <asp:Label ID="lblPaymentPeriod" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>SUMMARY:</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblHoursWorked" runat="server"></asp:Label>
                    &nbsp;hours worked at
                    <asp:Label ID="lblHourlyRate" runat="server"></asp:Label>
&nbsp;=$<asp:Label ID="lblA" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblHoursWorked1" runat="server"></asp:Label>
                    &nbsp;hours worked at
                    <asp:Label ID="lblOvertimeRate" runat="server"></asp:Label>
&nbsp;=$<asp:Label ID="lblB" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1TotalNetPay" runat="server"></asp:Label>
                    &nbsp;TOTAL NET PAY =&nbsp;$<asp:Label ID="lblC" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnBackToPayrollPage" runat="server" OnClick="btnBackPage_Click" Text="Back to Payroll Information Form" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
