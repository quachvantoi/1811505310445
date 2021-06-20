namespace ModelEF.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public int ID { get; set; }

        public int? CategoryID { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        public int? UnitCost { get; set; }

        public int? Quantity { get; set; }

        [StringLength(50)]
        public string Image { get; set; }

        [StringLength(50)]
        public string Description { get; set; }

        public bool? Status { get; set; }
    }
}
