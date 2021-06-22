<%@ Page Title="" Language="C#" MasterPageFile="~/CapaPresentacion/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Restaurante.CapaPresentacion.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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

                    <asp:Label runat="server" Text="Fecha Reservada" />
                    <asp:Label runat="server" ID="txtFechaReservada" /><br /><br />

                    <asp:Label runat="server" Text="Horario Reservado" />
                    <asp:Label runat="server" ID="txtHorarioCliente" /><br /><br />

                    <asp:Label runat="server" Text="Mesa reservada:  " />
                    <asp:Label runat="server" ID="txtMesaReservadaCliente" /><br /><br />

                    <center>
                        <asp:Button runat="server" ID="btnConsulta" Text="Consultar" OnClick="btnConsulta_Click"/>
                        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
                    </center>
                </div>
            </td>
            <td>
                Tabla mesas
                <asp:GridView ID="gvMesasAdmin" DataSourceID="" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" OnSelectedIndexChanged="gvMesas_SelectedIndexChanged">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Seleccionar Reservacion" ShowHeader="True" Text="Seleccionar" />
                        <asp:BoundField DataField="Numero de Reservación" HeaderText="Numero de Reservación" SortExpression="Numero de Reservación" />
                        <asp:BoundField DataField="Numero de mesa" HeaderText="Numero de mesa" SortExpression="Numero de mesa" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                        <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestauranteConnectionString %>" SelectCommand="SELECT Cliente_id AS [Numero de Reservación], Mesa_id AS [Numero de mesa], Fecha, Hora FROM Reservacion WHERE (Fecha = 20210630) AND (Hora = 1800)"></asp:SqlDataSource>
                <asp:Label runat="server" Text="Reservación elegida: " />
            <asp:Label ID="lblReservacionElegida" runat="server" Text="" ></asp:Label>
                <br /><br />
                <asp:Button ID="btnLiberarReservacion" runat="server" Text="Liberar Reservacion" OnClick="btnLiberarReservacion_Click" />
            </td>
        </tr>

    </table>


</asp:Content>
