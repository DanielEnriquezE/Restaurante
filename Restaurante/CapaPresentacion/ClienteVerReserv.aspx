<%@ Page Title="Consultar reservacion" Language="C#" MasterPageFile="~/CapaPresentacion/Site.Master" 
    AutoEventWireup="true" CodeBehind="ClienteVerReserv.aspx.cs" Inherits="Restaurante.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <h1 id="titulo">Que la tradición Mexicana corra por tu paladar ;)</h1>
        <br /><br />
    </center>

    <table style="width: 100%; height: 100%">
        <tr>
            <td style="width: 50%">                
                <asp:Label ID="lblTuinformacion" runat="server" Text="Tu informacion  " Font-Bold="True" />
                <br /><br />
                <asp:Label ID="lbl2" runat="server" Text="Nombre:  " />
                <asp:Label ID="lblNombre" runat="server" Text="prueba"/>
                <br /><br />
                <asp:Label ID="lbl3" runat="server" Text="Apellidos:  " />
                <asp:Label ID="lblApellidos" runat="server" Text="prueba2"/>
                <br /><br />
                <asp:Label ID="lbl4" runat="server" Text="Edad:  " />
                <asp:Label ID="lblEdad" runat="server" Text="prueba"/>
                <br /><br />
                <asp:Label ID="lbl5" runat="server" Text="Horario:  " />
                <asp:Label ID="lblHorario" runat="server" Text="prueba"/>
                <br /><br />
                <asp:Label ID="lbl6" runat="server" Text="Mesa:  " />
                <asp:Label ID="lblMesa" runat="server" Text="prueba"/>
        </td>
        <td style="width: 50%">
             <table style="width: 100%; height: 100%">              
        <tr>
            <td style="width: 40%">
                <asp:Label ID="Label5" runat="server" Text="Ingresa tu numero de reservación:  " />
            <br /><br />
                <asp:TextBox ID="txtNumeroReservacion" placeholder="Numero de reservación" runat="server" Width="211px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="  Ingresa tu numero de reservación" ControlToValidate="txtNumeroReservacion" ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>
        <td style="width: 60%">
            <asp:Button ID="botonConsultar" runat="server" Text="Consultar" Width="138px" Height="62px"/><br />
            </td>
    </tr>        
        </td>

    </tr> 
        
    </table>
    </table>
    </asp:Content>
