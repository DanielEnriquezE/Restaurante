<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="GuiaNavegacion.aspx.cs" 
    Inherits="Restaurante.CapaPresentacion.GuiaNavegacion" 
    MasterPageFile="~/CapaPresentacion/Site.Master"%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <link href="CSS/EstilosHtml.css" rel="stylesheet" type="text/css" />
        <h1><img src="Imagenes/Restaurante.png" style="width: 145px; height: 139px"/>Que la tradición Mexicana corra por tu paladar ;)</h1>
        <h2>Guia de Navegación por el sitio</h2>
    </center>
    <table>
        <tr>
            <td>
                <p class="navegacion">Navegar a través de este sitio es muy fácil. El objetivo de este
                    sitio es la realización de reservaciones para poder ingresar a nuestro 
                    restaurante. En ésta guía le explicaremos el proceso de realizar la
                    reservación de manera correcta.
                </p>
                <p class="navegacion">
                    El primer paso es dar clic al apartado "Solicitar Reseravción" donde será 
                    redirigido.
                </p>
                <p class="navegacion">
                    Posteriormente ingresarás tus datos, como se muestra en la imagen de la
                    derecha.
                </p>
                <p class="navegacion">Toma en cuenta lo siguiente:</p>
                <ul>
                    <li>No debes omitir ningún campo, de lo contrario no podrás continuar con tu registro</li>
                    <li>Debes ser mayor de edad para poder realizar reservaciones. Si no lo eres, requerirás
                        de algún tutor u otra persona mayor de edad y éste deberá presentarse en el día y hora
                        que reservaste.
                    </li>
                </ul>
            </td>
            <td>
                <img src="Imagenes/Guia/Guia1.JPG" />
            </td>
        </tr>
        <tr>
            <td>
                <img src="Imagenes/Guia/Guia2.JPG" />
            </td>
            <td>
                <p class="navegacion">
                    Cuando llenes tus datos correctamente y hayas elegido una fecha y un horario deberás dar
                    clic al botón de "Consultar Mesas Disponibles", éste te mostrará una tabla como la siguiente
                    donde te indica el número de mesa disponible y su número de sillas con las que cuenta dicha mesa. En total 
                    hay 10 mesas. Y dependiendo del día y hora que hayas elegido será el número mesas disponibles.
                </p>
                <p class="navegacion">Cuando estés seguro de cuantos invitados serán en total, elige la mesa correspondiente</p>
                <p class="navegacion">Toma en cuenta lo siguiente: </p>
                <ul>
                    <li>No es posible pedir prestadas mas sillas</li>
                    <li>Si no se muestra ninguna tabla, significa que ese día y a esa hora no hay mesas disponibles,tendrás que elegir otra fecha y/u hora</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <p class="navegacion">Cuando hayas elegido una mesa y esté seguro de los datos que hayas ingresado
                Confirma tu reservación pulsando en el botón "Confirmar Reservación"</p>
            </td>
            <td>
                <img src="Imagenes/Guia/Guia3.JPG" />
            </td>
        </tr>
        <tr>
            <td>
                <img src="Imagenes/Guia/Guia4.JPG" />
            </td>
            <td>
                <p class="navegacion">Serás redirigido para concluir tu reservación y se visualizará un resumen de tu información ingresada</p>
            </td>
        </tr>
        <tr>
            <td>
                <p class="navegacion">En caso de que te hayas equivocado puedes corregir tu información dando clic en "Modificar Reservación"</p>
                <p class="navegacion">En caso de que ya no quieras asistir, puedes cancelar tu reservación dando clic en "Eliminar Reservación"</p>
            </td>
            <td>
                <img src="Imagenes/Guia/Guia5.JPG" />
            </td>
        </tr>
        <tr>
            <td>
                <img src="Imagenes/Guia/Guia6.JPG" />
            </td>
            <td>
                <p class="navegacion"> En otra ocasión podrás realizar de igual manera una consulta de tu reservación o la eliminación de la misma en el apartado "Consultar Reservación"</p>
            </td>
        </tr>
        <tr>
            <td>
                <p class="navegacion">Si realizarás modificación de la información, sigue el mismo procedimiento y reglas de crear reservación</p>
            </td>
            <td>
                <img src="Imagenes/Guia/Guia7.JPG" / width="500px" height="200px">
            </td>
        </tr>
        <tr>
            <td>
                <img src="Imagenes/Guia/Guia8.JPG" />
            </td>
            <td>
                <p class="navegacion">Cuando concluyas con la modificación de tus datos se confirmará nuevamente tu reservación</p>
            </td>
        </tr>
    </table>
</asp:Content>
