<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="hospital.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>hospital</title>
    <link href="stylesheet/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Hospital Management</h1>
        <hr />
        <nav style="height:50px;">
            <ul style="padding:10px 15px">
                <li style="border:groove; font-weight:bold; font-size:medium">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/patiententry form.aspx" Target="_self" ForeColor="#333333">Out Patients</asp:HyperLink>
                </li>
                <li style="border:groove; font-weight:bold; font-size:medium" >
                    <asp:HyperLink ID="HyperLink2" runat="server">About us</asp:HyperLink>
                </li>
            </ul>
        </nav>
    </div>
        <div>
            <asp:Image ID="Image1" runat="server" Height="600px" Width="100%" ImageUrl="~/images/hospital,_green.jpg" ForeColor="#333333" />
            <hr />
            <p style="height:25px;padding:15px 0px">Hospital Management Copyrights &copy 2021</p>
        </div>
    </form>
</body>
</html>
