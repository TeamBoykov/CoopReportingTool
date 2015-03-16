<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" CodeFile="StudentReport.aspx.cs" Inherits="CoopAdvisor_StudentReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Filter Coop Reports</h3>
    <div class="row">
        <div class="col-xs-6 col-md-3">
            <asp:TextBox ID="txtStudentID" CssClass="form-control" placeholder="Student ID" runat="server"></asp:TextBox>
        </div>

        <div class="col-xs-6 col-md-3">
            <asp:DropDownList ID="ddlReportMonth" CssClass="form-control" runat="server">
                <asp:ListItem>Select Month</asp:ListItem>
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <div class="col-xs-6 col-md-3">
            <asp:DropDownList ID="ddlYear" CssClass="form-control" runat="server">
                <asp:ListItem>Select Year</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-xs-6 col-md-3">
            <asp:Button ID="btnFilter" runat="server" Text="Filter" CssClass="btn btn-primary" OnClick="btnFilter_Click" />
        </div>
    </div>
    <h3>Monthly Coop Report Forms</h3>
    <asp:GridView ID="gdvCoopReports" CssClass="table table-striped" runat="server" CellPadding="3" GridLines="None" AutoGenerateColumns="False"
        Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px"
        CellSpacing="1" AllowPaging="True" OnPageIndexChanging="gdvCoopReports_PageIndexChanging">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle BackColor="#C6C3C6" Font-Bold="True" Font-Size="Larger" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="#E7E7FF" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="S.No" />
            <asp:HyperLinkField DataNavigateUrlFields="StudentID" HeaderText="StudentID"
                ControlStyle-CssClass="btn-success" DataNavigateUrlFormatString="SelectedStudent.aspx?StudentID={0}" DataTextField="StudentID">
                <ControlStyle CssClass="btn-success"></ControlStyle>
            </asp:HyperLinkField>
            <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
            <asp:BoundField DataField="AdvisorName" HeaderText="AdvisorName" />
            <asp:BoundField DataField="Oraganization" HeaderText="Oraganization" />
            <asp:BoundField DataField="ReportMonth" HeaderText="Report Month" />
            <asp:BoundField DataField="Year" HeaderText="Year" />
            <asp:BoundField DataField="JobTitle" HeaderText="Job Title" />
        </Columns>
        <RowStyle />
    </asp:GridView>
</asp:Content>

