//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Prueba3
{
    using System;
    using System.Collections.Generic;
    
    public partial class DetalleCompra
    {
        public int IdDetalleCompra { get; set; }
        public int IdProducto { get; set; }
        public int Unidades { get; set; }
        public decimal CostoUnitario { get; set; }
        public Nullable<int> IdCompras { get; set; }
    
        public virtual Compras Compras { get; set; }
        public virtual Productos Productos { get; set; }
    }
}