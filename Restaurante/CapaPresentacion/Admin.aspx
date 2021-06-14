<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteCrearReserv.aspx.cs" 
    Inherits="Restaurante.CapaPresentacion.ClienteCrearReserv" 
    MasterPageFile="~/CapaPresentacion/Site.Master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table border="1" style="width:100%; height="100%;">
        <tr>
            <td style="width: 50%">GESTION DE RESERVACIONES</td>
           <td>MESAS</td>
        </tr>
        <tr>
            <td style="width: 50%">
                <div  style="margin-left: 10px; margin-top:10px; margin-bottom:10px;">
                    <asp:Label runat="server" Text="Número de reservación:   " />
                    <asp:TextBox runat="server" ID="txtNumReservacion" /><br /><br />
                
                    <asp:Label runat="server" Text="Nombre del cliente:   " />
                    <asp:Label runat="server" ID="txtNombreCliente" /> <br /><br />

                    <asp:Label runat="server" Text="Apellidos del cliente:  " />
                    <asp:Label runat="server" ID="txtApellidosCliente" /><br /><br />

                    <asp:Label runat="server" Text="Edad:  " />
                    <asp:Label runat="server" ID="txtEdadCliente" /><br /><br />

                    <asp:Label runat="server" Text="Horario Reservado" />
                    <asp:Label runat="server" ID="txtHorarioCliente" /><br /><br />

                    <asp:Label runat="server" Text="Mesa reservada:  " />
                    <asp:Label runat="server" ID="txtMesaReservadaCliente" /><br /><br />

                    <asp:CheckBox runat="server" Text=" Identidad confirmada   " />
                    <center>
                        <asp:Button runat="server" ID="btnAdmitir" Text="Admitir"/>
                    </center>
                </div>
            </td>
            <td>
                Tabla mesas
            </td>
        </tr>

    </table>




    </asp:Content>
