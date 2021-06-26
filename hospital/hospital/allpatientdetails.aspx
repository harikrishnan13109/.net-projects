<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allpatientdetails.aspx.cs" Inherits="hospital.allpatientdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheet/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div><h2>All Patient Details</h2>
        <hr />
        <nav>
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#333333" NavigateUrl="~/patiententry form.aspx" Target="_self">Patient Entry Form</asp:HyperLink>
        </nav>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="patientname" HeaderText="patientname" SortExpression="patientname" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="addres" HeaderText="addres" SortExpression="addres" />
                <asp:BoundField DataField="adoc" HeaderText="adoc" SortExpression="adoc" />
                <asp:BoundField DataField="phores" HeaderText="phores" SortExpression="phores" />
                <asp:BoundField DataField="mob" HeaderText="mob" SortExpression="mob" />
                <asp:BoundField DataField="opdate" HeaderText="opdate" SortExpression="opdate" />
                <asp:BoundField DataField="dep" HeaderText="dep" SortExpression="dep" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hospitalmanagementConnectionString2 %>" DeleteCommand="sp_delete" DeleteCommandType="StoredProcedure" SelectCommand="sp_viewall" SelectCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
