<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" CodeFile="GenerateReport.aspx.cs" Inherits="CoopAdvisor_GenerateReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Generate Reports</h3>
    <asp:DropDownList ID="ddlGenerateReport" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGenerateReport_SelectedIndexChanged">
        <asp:ListItem><--Select One Option to Generate Report--></asp:ListItem>
        <asp:ListItem>Student</asp:ListItem>
        <asp:ListItem>Employer</asp:ListItem>
    </asp:DropDownList>
    <hr />
    <asp:DropDownList ID="ddlReportOptions" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlReportOptions_SelectedIndexChanged">
        <asp:ListItem><--Select one Option--></asp:ListItem>
    </asp:DropDownList>
    <hr />
    <asp:DropDownList ID="ddlQuestions" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlQuestions_SelectedIndexChanged">
        <asp:ListItem><--Select one Option--></asp:ListItem>
    </asp:DropDownList>
    <hr />
     <asp:GridView ID="gdvGenerateReport" CssClass="table table-striped" runat="server" CellPadding="3" GridLines="None"
        Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px"
        CellSpacing="1">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" ForeColor="White" HorizontalAlign="Center" Font-Bold="True" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="#E7E7FF" />
        <RowStyle />
    </asp:GridView>
</asp:Content>

