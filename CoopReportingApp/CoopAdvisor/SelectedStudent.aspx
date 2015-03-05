<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" CodeFile="SelectedStudent.aspx.cs" Inherits="CoopAdvisor_SelectedStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h3>Individual Coop Reports:</h3>
    <asp:GridView ID="gdvSelectdReport" CssClass="table table-striped" runat="server" CellPadding="3" GridLines="None" AutoGenerateColumns="False"
        Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px"
        CellSpacing="1" >
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="#E7E7FF" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="S.No" />
            <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
            <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
            <asp:BoundField DataField="CoopAdvisor" HeaderText="CoopAdvisor Name" />
            <asp:BoundField DataField="Oraganization" HeaderText="Oraganization" />
            <asp:BoundField DataField="ReportMonth" HeaderText="Report Month" />
            <asp:BoundField DataField="JobTitle" HeaderText="Job Title" />
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'>' ></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="viewReport" runat="server" CssClass="btn btn-success" CommandName="View" CommandArgument='<%# Bind("Id") %>'>View</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle />
    </asp:GridView>
    <h3>Employer Evalution Form</h3>
    <asp:GridView ID="gdvEmployeeEvaForm" CssClass="table table-striped" runat="server" CellPadding="3" GridLines="None" AutoGenerateColumns="False"
        Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px"
        CellSpacing="1">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="#E7E7FF" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="S.No" />
            <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
            <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
            <asp:BoundField DataField="Term" HeaderText="Work Term" />
            <asp:BoundField DataField="Organization" HeaderText="Oraganization" />
            <asp:BoundField DataField="JobTitle" HeaderText="Job Title" />
            <asp:BoundField DataField="SupervisorsName" HeaderText="Supervisors Name" />
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'>' ></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="viewReport" runat="server" CssClass="btn btn-success" CommandName="View" CommandArgument='<%# Bind("Id") %>'>View</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle />
    </asp:GridView>
    <hr />
    <h4>

        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label></h4>
    <asp:Button ID="btnGrade" runat="server" CssClass="btn btn-success" Text="Grade" />
    <hr />
</asp:Content>

