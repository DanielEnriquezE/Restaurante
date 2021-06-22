<%@ Page Title="" Language="C#" MasterPageFile="~/CapaPresentacion/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Restaurante.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/EstilosHtml.css" rel="stylesheet" type="text/css" />
    <center>
        <img src="Imagenes/Restaurante.png" width="300px" height="300px" />
        
        <h1 id="header1">
            Date la oportunidad de disfrutar de nuestros platillos tradicionales
        </h1>

    </center>
    <h2>Hagamos que lo tradicional sea tendencia</h2>
    <table>
        <tr>
            <td>
                <img src="Imagenes/cocina-mexicana.jpg" width="400px" height="300px" />
            </td>
            <td>
                <p style="font-size: large; padding-left: 5px; font-size: x-large; color: lawngreen;">
                    ¡Viva México S.A.  de C.V. es una iniciativa que busca acercar a todo el
                    público comensal a darse un 'antojito' al muy estilo mexicano.      
                 </p>
            </td>
        </tr>        
    </table>

    <h2>Sobre nuestro servicio</h2>
    <table>
        <tr>
            <td>
                <p style="font-size: x-large; color: ghostwhite;">
                    ¡Viva México! prepara el mejor sazón de los sabores únicos de cada platillo.
                    Todo a precios muy económicos.
                </p>
            </td>
            <td>
                <img src="Imagenes/R202167882e623dbe519dbff9f8ec1834.jpg" 
                    width="400px" height="300px" />
            </td>
        </tr>
    </table>
    
    <h2>¿Estás listo?</h2>
    <table>
        <tr>
            <td>
                <img src="Imagenes/R4bba241c56a5e181b29d05d3d2b39560.jpg" 
                    width="400px" height="300px" />
            </td>
            <td>
                <p style="font-size: x-large; color: red;">
                Prepárate para sumergirte a un mundo de sabores únicos que no encontrarás
                en ningún otro lado más que en nuestro México lindo y querido.
                 </p>
            </td>
        </tr>
    </table>
    
</asp:Content>
