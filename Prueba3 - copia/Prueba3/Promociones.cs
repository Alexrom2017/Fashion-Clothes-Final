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
    
    public partial class Promociones
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Promociones()
        {
            this.Productos = new HashSet<Productos>();
        }
    
        public int IdPromociones { get; set; }
        public string Nombre { get; set; }
        public System.DateTime FechaInicio { get; set; }
        public System.DateTime FechaFin { get; set; }
        public decimal Descuento { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Productos> Productos { get; set; }
    }
}