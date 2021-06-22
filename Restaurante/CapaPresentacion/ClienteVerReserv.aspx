<%@ Page Title="Consultar reservacion" Language="C#" MasterPageFile="~/CapaPresentacion/Site.Master" 
    AutoEventWireup="true" CodeBehind="ClienteVerReserv.aspx.cs" Inherits="Restaurante.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/Operativo2.css" rel="stylesheet" type="text/css" />
    <center>
        <h1 id="titulo">
            <img src="Imagenes/Restaurante.png" style="width: 145px; height: 139px"/>Que la tradición Mexicana corra por tu paladar ;)</h1>
        <br /><br />
    </center>

    <table style="width: 100%; height: 100%">
        <tr>
            <td style="width: 50%">                
                <asp:Label ID="lblTuinformacion" runat="server" Text="Tu información  " Font-Bold="True" 
                    ForeColor="White"/>
                <br /><br />
                <asp:Label ID="lbl2" runat="server" Text="Nombre:  " ForeColor="White"/>
                <asp:Label ID="lblNombre" runat="server" Text="" Font-Bold="True" ForeColor="White"/>
                <br /><br />
                <asp:Label ID="lbl3" runat="server" Text="Apellidos:  " ForeColor="White"/>
                <asp:Label ID="lblApellidos" runat="server" Text="" Font-Bold="True" ForeColor="White"/>
                <br /><br />
                <asp:Label ID="lbl4" runat="server" Text="Edad:  " ForeColor="White"/>
                <asp:Label ID="lblEdad" runat="server" Text="" Font-Bold="True" ForeColor="White"/>
                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="Fecha:  " ForeColor="White"/>
                <asp:Label ID="lblFecha" runat="server" Text="" Font-Bold="True" ForeColor="White"/>
                <br /><br />
                <asp:Label ID="lbl5" runat="server" Text="Horario:  " ForeColor="White"/>
                <asp:Label ID="lblHorario" runat="server" Text="" Font-Bold="True" ForeColor="White"/>
                <br /><br />
                <asp:Label ID="lbl6" runat="server" Text="Mesa:  " ForeColor="White"/>
                <asp:Label ID="lblMesa" runat="server" Font-Bold="True" ForeColor="White"/>
           </td>
            <td style="width: 50%">
                <table style="width: 100%; height: 100%">              
                    <tr>
                        <td style="width: 40%">
                            <asp:Label ID="Label5" runat="server" Text="Ingresa tu numero de reservación:  " 
                                ForeColor="White"/>
                            <br /><br />
                            <asp:TextBox ID="txtNumeroReservacion" placeholder="Numero de reservación" 
                                runat="server" Width="211px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="  Ingresa tu numero de reservación" 
                                ControlToValidate="txtNumeroReservacion" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 60%">
                            <asp:Button ID="botonConsultar" runat="server" Text="Consultar" 
                                Width="138px" Height="62px" OnClick="botonConsultar_Click"/><br />
                            <br /><br />

                            <asp:Label runat="server" Text="No se encontró información sobre este registro"
                                id="lblInforma" ForeColor="White" />

                            <asp:Button ID="eliminarReservacion" Enabled="false" runat="server" 
                                Text="Eliminar Reservación" OnClick="eliminarReservacion_Click" />
                            <br /><br />
                            <asp:Button ID="modificarReservacion" Enabled="false" runat="server" 
                                Text="Modificar Reservación" OnClick="modificarReservacion_Click" />
                        </td>            
                   </tr> 
                 </table>
            </td>
       </tr>         
    </table>
</asp:Content>
