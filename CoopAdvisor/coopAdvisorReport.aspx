<%@ Page Title="" Language="C#" MasterPageFile="~/CoopAdvisor/coopadvisor.Master" AutoEventWireup="true" CodeFile="coopAdvisorReport.aspx.cs" Inherits="CoopAdvisor_coopAdvisorReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:DropDownList ID="type_dropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="type_dropDownList_SelectedIndexChanged" DataTextField="student_feedback" DataValueField="student_feedback" DataSourceID="SqlDataSource3">
    
</asp:DropDownList>--%><%--    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CoopConnectionString %>" SelectCommand="SELECT [student_feedback] FROM [tbl_student]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CoopConnectionString2 %>" SelectCommand="SELECT * FROM [tbl_Type]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>--%>    <%--<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="Page_Load">
        <asp:ListItem Value="1">student</asp:ListItem>
        <asp:ListItem Value="2">company</asp:ListItem>
    </asp:DropDownList>--%>
<asp:DropDownList ID="ddlType" runat="server"  DataTextField="TypeName" DataValueField="TypeName" OnSelectedIndexChanged="ddlType_SelectedIndexChanged" AutoPostBack="True">
</asp:DropDownList>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CoopConnectionString %>" SelectCommand="SELECT [comp_Name] FROM [tbl_CompanyName]"></asp:SqlDataSource>--%>
    
    <asp:DropDownList ID="ddlParameter" runat="server" OnSelectedIndexChanged="ddlParameter_SelectedIndexChanged" AutoPostBack="True" DataTextField="ParameterName" DataValueField="ParameterName">
    </asp:DropDownList>
    <asp:DropDownList ID="ddlQuestion" runat="server" OnSelectedIndexChanged="ddlQuestion_SelectedIndexChanged" AutoPostBack="True" DataTextField="Questions" DataValueField="Questions">
    </asp:DropDownList>
    <asp:Label ID="lblResult"  runat="server" Text="Label"></asp:Label>
</asp:Content>

