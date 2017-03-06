<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bi-Weekly Payment Calculator - 101015270</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 122px;
        }
        .auto-style4 {
            width: 74px;
        }
        .auto-style5 {
            width: 124px;
        }
        .auto-style7 {
            width: 168px;
        }
        .auto-style8 {
            width: 151px;
        }
    </style>

    <script>
        function validatePosition(oSrc, args) {
            var type = args.Value.toLowerCase();
            //var type = input.toLowerCase();
            if (type == "professor" || type == "instructor" || type == "tutor")
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <h1>Bi-Weekly Payment Calculator for Part Time Staff</h1>
        <p>&nbsp;</p>

    </div>
        <p>
            Personal Information</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Employee ID</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEmployeeID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmployeeID" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage="Must be an Integer" ForeColor="Red" Type="Integer" ControlToValidate="txtEmployeeID" Operator="DataTypeCheck"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Address</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="US Phone Number Only (&quot;xxx-xxx-xxxx&quot;)" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            Payroll Information</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Department</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtDepartment"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Position</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtPosition"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePosition" ControlToValidate="txtPosition" Display="Dynamic" ErrorMessage="Please input &quot;Professor&quot;, &quot;Instructor&quot;, or &quot;Tutor&quot;" ForeColor="Red"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hourly rate</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtHourlyRate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtHourlyRate"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtHourlyRate" Display="Dynamic" ErrorMessage="Must be greater than or equal to 11.25 and less than or equal to 140.00" ForeColor="Red" MaximumValue="140.00" MinimumValue="11.25" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Overtime Rate</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtOvertimeRate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtOvertimeRate"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtOvertimeRate" Display="Dynamic" ErrorMessage="Must be greater than or equal to 11.25 and less than or equal to 140.00" ForeColor="Red" MaximumValue="140.00" MinimumValue="11.25" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            Cycle Information</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtPaymentPeriod"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtHoursWorked" Display="Dynamic" ErrorMessage="Must be greater than 0 and less than 40" ForeColor="Red" MaximumValue="39" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtHoursWorked"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtOvertimeWorked"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtOvertimeWorked" Display="Dynamic" ErrorMessage="Must be greater than or euqal to 0 and less than 15" ForeColor="Red" MaximumValue="15" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Payment Period</td>
                <td class="auto-style8">Hours Worked</td>
                <td>Overtime Worked</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPaymentPeriod" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtHoursWorked" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtOvertimeWorked" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btnCalculatePay" runat="server" Text="Calculate Pay" Width="166px" OnClick="btnCalculatePay_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
