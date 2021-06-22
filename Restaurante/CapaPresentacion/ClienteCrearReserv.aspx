<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteCrearReserv.aspx.cs" 
    Inherits="Restaurante.CapaPresentacion.ClienteCrearReserv" 
    MasterPageFile="~/CapaPresentacion/Site.Master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href="CSS/Operativo.css" rel="stylesheet" type="text/css" />
&nbsp;<center>
    <h1 id="titulo1">
    <img src="Imagenes/Restaurante.png" style="width: 145px; height: 139px"/>Que la tradición Mexicana corra por tu paladar ;)</h1>
    <h3 id="subtitulo1">Solicita una reservación ahora!</h3>
    <p id="textoGuia"> Si es la primera vez que reservas con nosotros, o tienes dudas 
        de cómo es este proceso, consulta la <a href="GuiaNavegacion.aspx">Guía de navegación</a></p><br />
</center>
<table style="width: 100%; height: 100%">
    <tr>
        <td style="width: 50%; height: 307px;">                   
            <table>
                <tr>
                    <td style="width: 142px; height: 44px">
                        <asp:Label ID="lblNombre" runat="server" Text="Tu nombre:  " 
                            ForeColor="White"/><br />
                    </td>
                    <td style="height: 44px">
                        <asp:TextBox ID="txtNombre" placeholder="Nombre(s)" runat="server" 
                            CssClass="TextBoxs" OnTextChanged="txtNombre_TextChanged" 
                            style="left: 200px; top: 232px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValidadorNombre" runat="server" 
                            ErrorMessage="  Ingresa tu nombre" ControlToValidate="txtNombre"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator><br />
                    </td>
                </tr>

                <tr>
                    <td style="width: 142px; height: 41px">
                        <asp:Label ID="lblApellidoP" runat="server" Text="Apellido Paterno:  "
                                    ForeColor="White"/>
                    </td>
                    <td style="height: 41px">
                        <asp:TextBox ID="txtApellidoP" placeholder="Tus apellidos" runat="server">
                        </asp:TextBox>  
                        <asp:RequiredFieldValidator ID="ValidadorApellido" runat="server" 
                            ErrorMessage="  Ingresa tu apellido paterno" 
                            ControlToValidate="txtApellidoP" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td style="width: 142px; height: 46px">
                        <asp:Label ID="lblApellidoM" runat="server" Text="Apellido Materno:  " 
                            ForeColor="White"/>
                    </td>
                    <td style="height: 46px">
                        <asp:TextBox ID="txtApellidoM" placeholder="Tus apellidos" runat="server" Height="22px"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="  Ingresa tu apellido materno"
                            ControlToValidate="txtApellidoM" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td style="width: 142px">
                        <asp:Label ID="lblEdad" runat="server" Text="Tu Edad:  " ForeColor="White"/>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEdad" type="number" placeholder="Edad" runat="server">
                        </asp:TextBox>
                        <asp:RangeValidator ID="ValidadorEdad" runat="server" 
                            ErrorMessage="Debes ser mayor de edad" ControlToValidate="txtEdad"
                            MinimumValue="18" ForeColor="Red"
                            MaximumValue="100"
                            SetFocusOnError="True" Type="Integer">
                        </asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="ValidadorEdad1" runat="server" 
                            ErrorMessage="Introduce tu edad por favor" ForeColor="Red"
                            ControlToValidate="txtEdad">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td style="width: 142px">
                        <asp:Label ID="lblHorario" runat="server" Text="Elige un horario:  "
                            ForeColor="White"/>
                    </td>
                    <td>
                        <asp:TextBox ID="fecha" placeholder="fecha" type="date" min="2021-06-17" 
                            runat="server" AutoPostBack="true"
                            OnTextChanged="fecha_TextChanged"></asp:TextBox>
                        <asp:DropDownList ID="DropDownHorario" Enabled="false" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>12:00hrs</asp:ListItem>
                            <asp:ListItem>15:00hrs</asp:ListItem>
                            <asp:ListItem>18:00hrs</asp:ListItem>
                            <asp:ListItem>21:00hrs</asp:ListItem>
                        </asp:DropDownList>               
                        <asp:RequiredFieldValidator ID="ValidadorFecha" runat="server" 
                            ErrorMessage="  Falta elegir una fecha" ControlToValidate="fecha"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 66px">
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" 
                            Text="Consultar Mesas disponibles" />
                    </td>                    
                </tr>
            </table>           
        </td>
        <td style="width: 50%; height: 307px;">
            <p style="color: aliceblue;"> La siguiente tabla muestra la cantidad de mesas disponibles en 
                el horario elegido</p>
            <asp:GridView runat="server" ID="gvMesas" BackColor="White" BorderColor="#336666" 
                BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" 
                OnSelectedIndexChanged="gvMesas_SelectedIndexChanged" AutoGenerateColumns="False" 
                DataKeyNames="NumMesa" DataSourceID="" Height="126px" Width="401px">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Acciones" 
                        ShowHeader="True" Text="Elegir" />
                </Columns>
                <Columns>
                    <asp:BoundField DataField="NumMesa" HeaderText="Numero de Mesa" ReadOnly="True" 
                        SortExpression="Numero de Mesa" />
                    <asp:BoundField DataField="NUmSilla" HeaderText="Numero de sillas" 
                        SortExpression="Numero de sillas" />
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

            <asp:Label runat="server" Text="Mesa elegida: " />
            <asp:Label ID="lblMesaElegida" runat="server" Text="" ForeColor="White"></asp:Label>
            <br /><br />
        </td>
    </tr>        
    <tr>            
        <td colspan="2">                                                       
            <center>
                <asp:Button ID="botonReservar" runat="server" Text="Confirmar reservación" Width="199px" 
                    OnClick="botonReservar_Click"/><br />
            </center>
        </td>
    </tr>
</table>
</asp:Content>
