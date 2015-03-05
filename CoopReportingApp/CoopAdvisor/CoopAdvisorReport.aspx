<%@ Page Title="" Language="VB" MasterPageFile="~/CoopReportingApp/CoopAdvisor/coopadvisor.Master" AutoEventWireup="false" CodeFile="CoopAdvisorReport.aspx.vb" Inherits="CoopReportingApp_CoopAdvisor_CoopAdvisorReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <h1>COOP-ADVISOR REPORT PAGE
             </h1>
        
    <p>&nbsp;</p>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="lst_type" runat="server">
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Company</asp:ListItem>

                    </asp:DropDownList></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="lst_parameter" runat="server"></asp:DropDownList></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="lst_query" runat="server"></asp:DropDownList></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="btn_view" runat="server" Text="View" />
                  </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
   
</asp:Content>

