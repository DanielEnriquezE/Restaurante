﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteCrearReserv.aspx.cs" 
    Inherits="Restaurante.CapaPresentacion.ClienteCrearReserv" 
    MasterPageFile="~/CapaPresentacion/Site.Master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <h1 id="titulo">Que la tradición Mexicana corra por tu paladar ;)</h1>
        <h3 id="subtitulo">Solicita una reservación ahora!</h3>
        <p id="textoGuia"> Si es la primera vez que reservas con nosotros, o tienes dudas 
            de cómo es este proceso, consulta la Guía de navegación</p><br />
    </center>
    <table style="width: 100%; height: 100%">
        <tr>
            <td style="width: 50%">                
                <asp:Label ID="lblNombre" runat="server" Text="Tu nombre:  " />
                <asp:TextBox ID="txtNombre" placeholder="Nombre(s)" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ValidadorNombre" runat="server" 
                    ErrorMessage="  Ingresa tu nombre" ControlToValidate="txtNombre"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br /><br />

                <asp:Label ID="lblApellidos" runat="server" Text="Tus apellidos:  " />
                <asp:TextBox ID="txtApellidos" placeholder="Tus apellidos" runat="server"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="ValidadorApellido" runat="server" 
                    ErrorMessage="  Ingresa tus apellidos" ControlToValidate="txtApellidos" ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br /><br />      

                <asp:Label ID="lblEdad" runat="server" Text="Tu Edad:  " />
                <asp:TextBox ID="txtEdad" type="number" placeholder="Edad" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="ValidadorEdad" runat="server" 
                    ErrorMessage="Debes ser mayor de edad" ControlToValidate="txtEdad"
                    MinimumValue="18" ForeColor="Red"
                    MaximumValue="100"
                    SetFocusOnError="True" Type="Integer">
                </asp:RangeValidator>
                <asp:RequiredFieldValidator ID="ValidadorEdad1" runat="server" 
                    ErrorMessage="Introduce tu edad por favor" ForeColor="Red"
                    ControlToValidate="txtEdad"></asp:RequiredFieldValidator>
                    <br /><br />   
               
                <asp:Label ID="lblHorario" runat="server" Text="Elige un horario:  " />
                <asp:TextBox ID="fecha" placeholder="fecha" type="date" min="2021-06-17" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DropDownHorario" runat="server">
                    <asp:ListItem>1200</asp:ListItem>
                    <asp:ListItem>3:00pm</asp:ListItem>
                    <asp:ListItem>6:00pm</asp:ListItem>
                    <asp:ListItem>9:00pm</asp:ListItem>
                </asp:DropDownList>               
                <asp:RequiredFieldValidator ID="ValidadorFecha" runat="server" 
                    ErrorMessage="  Falta elegir una fecha" ControlToValidate="fecha"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
        </td>
        <td style="width: 50%">
            <p> La siguiente tabla muestra la cantidad de mesas disponibles en el horario elegido</p>
            <asp:GridView runat="server" ID="gvMesas" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="gvMesas_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="NumMesa" DataSourceID="SqlDataSource1" Height="126px" Width="401px">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Acciones" ShowHeader="True" Text="Elegir" />
                </Columns>
                <Columns>
                    <asp:BoundField DataField="NumMesa" HeaderText="Numero de Mesa" ReadOnly="True" SortExpression="Numero de Mesa" />
                    <asp:BoundField DataField="NUmSilla" HeaderText="Numero de sillas" SortExpression="Numero de sillas" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestauranteConnectionString %>" SelectCommand="Select NumMesa, NUmSilla from Mesa where Disponible = 1"></asp:SqlDataSource>
            <asp:Label ID="lblMesaElegida" runat="server" Text=""></asp:Label>
        </td>
    </tr>        
    <tr>            
        <td colspan="2">                
            <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Consultar Mesas disponibles" />
            <br /><br />
            <asp:CheckBox ID="CheckBoxConfirmar" runat="server" />
            <asp:Label runat="server" Text="Doy fe que los datos ingresados son los correctos y
                que puede que tenga que confirmar mi identidad en el establecimiento al 
                ingresar" /><br /><br />            
            <center>
                <asp:Button ID="botonReservar" runat="server" Text="Confirmar reservación" Width="199px" OnClick="botonReservar_Click"/><br />
            </center>
        </td>
    </tr>
</table>
</asp:Content>
