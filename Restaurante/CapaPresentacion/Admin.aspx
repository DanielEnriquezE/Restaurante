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
                <asp:GridView ID="gvMesasAdmin" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="gvMesasAdmin_SelectedIndexChanged">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Liberar Mesas" ShowHeader="True" Text="Liberar" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>

    </table>




    </asp:Content>
