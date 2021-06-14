<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteCrearReserv.aspx.cs" 
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
                <asp:TextBox ID="fecha" placeholder="fecha" type="date" min="2021-06-10" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DropDownHorario" runat="server">
                    <asp:ListItem>12:00pm-2:00pm</asp:ListItem>
                    <asp:ListItem>3:00pm-5:00pm</asp:ListItem>
                    <asp:ListItem>6:00pm-8:00pm</asp:ListItem>
                    <asp:ListItem>9:00pm-11:00pm</asp:ListItem>
                </asp:DropDownList>               
                <asp:RequiredFieldValidator ID="ValidadorFecha" runat="server" 
                    ErrorMessage="  Falta elegir una fecha" ControlToValidate="fecha"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
        </td>
        <td style="width: 50%">
            <p> La siguiente tabla muestra la cantidad de mesas disponibles en el horario elegido</p>
        </td>
    </tr>        
    <tr>            
        <td colspan="2">                
            <br /><br />
            <asp:CheckBox ID="CheckBoxConfirmar" runat="server" />
            <asp:Label runat="server" Text="Doy fe que los datos ingresados son los correctos y
                que puede que tenga que confirmar mi identidad en el establecimiento al 
                ingresar" /><br /><br />            
            <center>
                <asp:Button ID="botonReservar" runat="server" Text="Confirmar reservación" Width="199px"/><br />
            </center>
        </td>
    </tr>
</table>
</asp:Content>
