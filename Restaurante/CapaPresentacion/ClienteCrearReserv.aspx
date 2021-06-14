<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteCrearReserv.aspx.cs" 
    Inherits="Restaurante.CapaPresentacion.ClienteCrearReserv" 
    MasterPageFile="~/CapaPresentacion/Site.Master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p><asp:Label ID="nota" runat="server" Text="Llene la informacion para hacer su reservación" Font-Size="Large"></asp:Label></p>
    <p>
        <asp:TextBox ID="nombre" placeholder="Nombre(s)" runat="server"></asp:TextBox>
        <asp:TextBox ID="apellidoP" placeholder="Apellido Paterno" runat="server"></asp:TextBox>
        <asp:TextBox ID="apellidoM" placeholder="Apellido Materno" runat="server"></asp:TextBox>
        <asp:TextBox ID="edad" placeholder="Edad" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox1" placeholder="Apellido Materno" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="fecha" placeholder="fecha" type="date" min="2021-06-10" runat="server"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>12:00pm-2:00pm</asp:ListItem>
            <asp:ListItem>3:00pm-5:00pm</asp:ListItem>
            <asp:ListItem>6:00pm-8:00pm</asp:ListItem>
            <asp:ListItem>9:00pm-11:00pm</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="botonReservar" runat="server" Text="Reservar" />
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </asp:Content>
