using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurante.CapaLogicaNegocio
{
    public class Cliente
    {
        int _intIdCliente, _intEdad;
        string _strNombre, _strPApellido, _strSApellido;
        DateTime _dtHora, _dtfecha;

        public int IdCliente
        {
            get { return _intIdCliente; }
            set { _intIdCliente = value; }
        }
        public int Edad
        {
            get { return _intEdad; }
            set { _intEdad = value; }
        }
        public string Nombre
        {
            get { return _strNombre; }
            set { _strNombre = value; }
        }
        public string PApellido
        {
            get { return _strPApellido; }
            set { _strPApellido = value; }
        }
        public string SApellido
        {
            get { return _strSApellido; }
            set { _strSApellido = value; }
        }
        public DateTime Hora
        {
            get { return _dtHora; }
            set { _dtHora = value; }
        }
        public DateTime Fecha
        {
            get { return _dtfecha; }
            set { _dtfecha = value; }
        }        
    }
}