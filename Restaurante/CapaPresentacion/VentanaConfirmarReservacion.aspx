<%@ Page Title="" Language="C#" MasterPageFile="~/CapaPresentacion/Site.Master" AutoEventWireup="true" CodeBehind="VentanaConfirmarReservacion.aspx.cs" Inherits="Restaurante.VentanaConfirmarReservacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <center>
        <h1 id="titulo">Que la tradición Mexicana corra por tu paladar ;)</h1>
        <br /><br />
    </center>

    <table style="width: 100%; height: 100%">
        <tr>
            <td style="width: 50%">                
                <asp:Label ID="lblTuinformacion" runat="server" Text="Tu información  " Font-Bold="True" />
                <br /><br />
                <asp:Label ID="Label1" runat="server" Text="Numero de Reservación:  " />
                <asp:Label ID="LabelNumeroReservacion" runat="server" Text="" Font-Bold="True"/>
                <br /><br />
                <asp:Label ID="lbl2" runat="server" Text="Nombre:  " />
                <asp:Label ID="lblNombre" runat="server" Text="" Font-Bold="True"/>
                <br /><br />
                <asp:Label ID="lbl3" runat="server" Text="Apellidos:  " />
                <asp:Label ID="lblApellidos" runat="server" Text="" Font-Bold="True"/>
                <br /><br />
                <asp:Label ID="lbl4" runat="server" Text="Edad:  " />
                <asp:Label ID="lblEdad" runat="server" Text="" Font-Bold="True"/>
                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="Fecha:  " />
                <asp:Label ID="lblFecha" runat="server" Text="" Font-Bold="True"/>
                <br /><br />
                <asp:Label ID="lbl5" runat="server" Text="Horario:  " />
                <asp:Label ID="lblHorario" runat="server" Text="" Font-Bold="True"/>
                <br /><br />
                <asp:Label ID="lbl6" runat="server" Text="Mesa:  " />
                <asp:Label ID="lblMesa" runat="server" Font-Bold="True"/>
        </td>
        <td style="width: 50%">
            <center>
                <h4>Ten en cuenta lo siguiente:</h4>
            </center>
            <ul>
                <li>Cuando llegues al establecimiento, porporciona tu número de reservacion y una identificación oficial</li>
                <li>Si deseas modificar datos en tu reservación, deberás hacerlos antes del día y hora de tu reservación</li>
                <li>¿Te equivocaste en algo? Pulsa el botón correspondiente para corregir tu informción</li>
            </ul>


             <asp:Button ID="eliminarReservacion" runat="server" Text="Eliminar Reservación" OnClick="eliminarReservacion_Click" />
            <br /><br />
            <asp:Button ID="modificarReservacion" runat="server" Text="Modificar Reservación" OnClick="modificarReservacion_Click" />
        </table>
</asp:Content>
