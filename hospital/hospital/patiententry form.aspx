<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patiententry form.aspx.cs" Inherits="hospital.patiententry_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheet/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div><h2>Out Patient Details Entry Form</h2>
        <hr />
        <nav><ul>
            <li>  <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#333333" NavigateUrl="~/patient details.aspx" Target="_self">View Patient Details</asp:HyperLink></li>
            <li>   <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#333333" NavigateUrl="~/Home.aspx" Target="_self">Home</asp:HyperLink></li>
             </ul>
         </nav>
        <table align="center">
            <tr>
                <td style="align-self:auto">
                    <asp:Label ID="Label11" runat="server" Text="Patient Name:"></asp:Label>
                </td>
                   
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Patient Id:"></asp:Label></td>
                 <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter the Patient ID" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label></td>
                 <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label></td>
                    <td> <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label></td>
                <td> <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Assigned Doctor:"></asp:Label></td>
                    <td> <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Dr.Venkateswaran</asp:ListItem>
                        <asp:ListItem>Dr.saravanan</asp:ListItem>
                        <asp:ListItem>Dr.Sankar</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Phone no(Home):"></asp:Label></td>
                <td> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Phone no(mobile):"></asp:Label></td>
                <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Op Date:"></asp:Label></td>
                <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Department:"></asp:Label></td>
                   <td> <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Orthopedic</asp:ListItem>
                        <asp:ListItem>Skin Care</asp:ListItem>
                        <asp:ListItem>Dental</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="text-align:right"><asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click" /></td>
                <td><asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" /></td>
            </tr>
               </table>
    
    </div>
    </form>
</body>
</html>
